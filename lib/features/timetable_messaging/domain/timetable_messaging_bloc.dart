import 'package:fsre_notifier/_all.dart';

part 'timetable_messaging_state.dart';
part 'timetable_messaging_event.dart';

class TimetableMessagingBloc
    extends Bloc<TimetableMessagingEvent, TimetableMessagingState> {
  TimetableMessagingBloc({
    required TimetableMessagingRepository timetableMessagingRepository,
    required SharedPreferences sharedPreferences,
  })  : _timetableMessagingRepository = timetableMessagingRepository,
        _sharedPreferences = sharedPreferences,
        super(
          TimetableMessagingState(
            status: TimetableMessagingStatus.loading,
            eventHistory: const [],
            selectedWeekId: TimetableKey.initial(),
          ),
        ) {
    on<TimetableMessagingTopicWeekBackwarded>(
      _onTimetableMessagingTopicWeekBackwarded,
      transformer: sequential(),
    );
    on<TimetableMessagingTopicWeekForwarded>(
      _onTimetableMessagingTopicWeekForwarded,
      transformer: sequential(),
    );
    on<TimetableMessagingTopicSelected>(
      _onTimetableMessagingTopicSelected,
      transformer: droppable(),
    );
    on<TimetableMessagingKeyReadRequested>(
      _onTimetableMessagingKeyReadRequested,
      transformer: droppable(),
    );
    on<TimetableMessagingMessageReceived>(
      _onTimetableMessagingMessageReceived,
      transformer: sequential(),
    );
    on<TimetableMessagingHistoryReloadRequested>(
      _onTimetableMessagingHistoryReloadRequested,
      transformer: droppable(),
    );
    on<TimetableMessagingHistoryClearRequested>(
      _onTimetableMessagingHistoryClearRequested,
      transformer: droppable(),
    );
    on<TimetableMessagingHistoryClearAllRequested>(
      _onTimetableMessagingHistoryClearAllRequested,
      transformer: droppable(),
    );

    add(TimetableMessagingKeyReadRequested());
  }

  final TimetableMessagingRepository _timetableMessagingRepository;
  final SharedPreferences _sharedPreferences;
  StreamSubscription<RemoteMessage>? _foregroundListenerSubscription;

  @override
  Future<void> close() {
    _foregroundListenerSubscription?.cancel();
    return super.close();
  }

  void _onTimetableMessagingTopicWeekBackwarded(
    TimetableMessagingTopicWeekBackwarded event,
    Emitter<TimetableMessagingState> emit,
  ) {
    if (state.status.isLoading) {
      debugPrint(
        "TimetableMessagingBloc: Attempted to navigate to previous week while still loading",
      );
      return;
    }

    add(
      TimetableMessagingTopicSelected(
        state.selectedWeekId.copyWith(
          yearWeek: getISOWeekFromDate(
            getStartDateOfISOWeek(state.selectedWeekId.yearWeek).subtract(
              const Duration(
                days: DateTime.daysPerWeek,
              ),
            ),
          ),
        ),
        false,
        false,
      ),
    );
  }

  void _onTimetableMessagingTopicWeekForwarded(
    TimetableMessagingTopicWeekForwarded event,
    Emitter<TimetableMessagingState> emit,
  ) {
    if (state.status.isLoading) {
      debugPrint(
        "TimetableMessagingBloc: Attempted to navigate to next week while still loading",
      );
      return;
    }

    add(
      TimetableMessagingTopicSelected(
        state.selectedWeekId.copyWith(
          yearWeek: getISOWeekFromDate(
            getStartDateOfISOWeek(state.selectedWeekId.yearWeek).add(
              const Duration(
                days: DateTime.daysPerWeek,
              ),
            ),
          ),
        ),
        false,
        false,
      ),
    );
  }

  Future<void> _onTimetableMessagingTopicSelected(
    TimetableMessagingTopicSelected event,
    Emitter<TimetableMessagingState> emit,
  ) async {
    if (!event.isInitial && state.status.isLoading) {
      debugPrint(
        "TimetableMessagingBloc: Attempted to select a new topic while still loading",
      );
      return;
    }

    emit(state.copyWith(
      status: TimetableMessagingStatus.loading,
    ));

    if (event.triggerRequest) {
      try {
        // Create a new subscription entity in the backend to enable push notifications (does nothing if the subscription already exists)
        await _timetableMessagingRepository
            .addSubscription(event.timetableKey.studyProgramId);
      } on FcmTokenNotFoundException catch (e) {
        emit(state.copyWith(
          status: TimetableMessagingStatus.failure,
          error: e,
        ));
        return;
      } on TimetableMessagingHttpException catch (e) {
        emit(state.copyWith(
          status: TimetableMessagingStatus.failure,
          error: e,
        ));
        return;
      } on TimetableMessagingFormatException catch (e) {
        emit(state.copyWith(
          status: TimetableMessagingStatus.failure,
          error: e,
        ));
        return;
      } on TimetableMessagingFcmTokenAlreadyRegisteredException catch (_) {
        debugPrint(
          "TimetableMessagingBloc: Subscription already exists for the selected topic '${event.timetableKey}'",
        );
      }
    }

    debugPrint(
      "TimetableMessagingBloc: Added subscription to topic '${event.timetableKey}'",
    );

    // Register a listener for incoming messages if not already registered
    // This listener parses the message and stores it in the local message history
    if (_foregroundListenerSubscription == null) {
      debugPrint(
        "TimetableMessagingBloc: Foreground listener for incoming messages was not registered yet, registering now",
      );

      _foregroundListenerSubscription =
          _timetableMessagingRepository.registerForegroundListener((message) {
        debugPrint(
          "TimetableMessagingBloc: Received message from Firebase Messaging, storing message and emitting event",
        );
        // This event is purely to update the in-memory message history for the UI
        add(TimetableMessagingMessageReceived(
          message,
        ));
      });
    }

    try {
      // Read stored message history for the selected topic
      final eventHistory = await _timetableMessagingRepository
          .reloadMessageHistory(event.timetableKey);

      debugPrint(
        "TimetableMessagingBloc: Successfully read message history for topic '${event.timetableKey}'",
      );

      emit(state.copyWith(
        status: TimetableMessagingStatus.success,
        selectedWeekId: event.timetableKey,
        eventHistory: eventHistory,
      ));
    } on TypeError catch (_) {
      debugPrint(
        "TimetableMessagingBloc: A parsing error occured while fetching the stored notification history for the topic '${event.timetableKey}'",
      );
      emit(state.copyWith(
        status: TimetableMessagingStatus.success,
        eventHistory: [],
      ));
    }
  }

  Future<void> _onTimetableMessagingKeyReadRequested(
    TimetableMessagingKeyReadRequested event,
    Emitter<TimetableMessagingState> emit,
  ) async {
    try {
      final selectedStudyProgramId = _sharedPreferences.getInt(
            "selectedStudyProgramId",
          ) ??
          TimetableKey.initial().studyProgramId;

      final timetableKey = TimetableKey(
        studyProgramId: selectedStudyProgramId,
        yearWeek: getISOWeekFromDate(DateTime.now()),
      );

      debugPrint(
        "TimetableMessagingBloc: Successfully read Shared Preferences value of key 'selectedStudyProgramId' and created timetableKey: $timetableKey",
      );

      add(TimetableMessagingTopicSelected(timetableKey, true));
    } on TypeError catch (_) {
      debugPrint(
        "TimetableMessagingBloc: 'selectedStudyProgramId' read from Shared Preferences is not a valid integer. Resetting to default value.",
      );

      _sharedPreferences.remove("selectedStudyProgramId");

      add(TimetableMessagingTopicSelected(TimetableKey.initial(), true));
    }
  }

  void _onTimetableMessagingMessageReceived(
    TimetableMessagingMessageReceived event,
    Emitter<TimetableMessagingState> emit,
  ) {
    final newEvents = event.message;
    final newEventHistory = [newEvents, ...state.eventHistory];

    debugPrint(
      "TimetableMessagingBloc: Received ${newEvents.newTimetableEvents.length + newEvents.removedTimetableEvents.length} new events",
    );

    emit(state.copyWith(
      status: TimetableMessagingStatus.success,
      eventHistory: newEventHistory,
    ));
  }

  Future<void> _onTimetableMessagingHistoryReloadRequested(
    TimetableMessagingHistoryReloadRequested event,
    Emitter<TimetableMessagingState> emit,
  ) async {
    if (state.status.isLoading) {
      debugPrint(
        "TimetableMessagingBloc: Attempted to reload message history while still loading",
      );
      return;
    }

    emit(state.copyWith(
      status: TimetableMessagingStatus.loading,
    ));

    final messageHistory = await _timetableMessagingRepository
        .reloadMessageHistory(state.selectedWeekId);

    if (messageHistory.isEmpty) {
      debugPrint(
        "TimetableMessagingBloc: No stored message history found for topic '${state.selectedWeekId}'",
      );
    } else {
      debugPrint(
        "TimetableMessagingBloc: Successfully read ${messageHistory.length} messages from the stored history for topic '${state.selectedWeekId}'. Updating in-memory message history...",
      );
    }

    emit(state.copyWith(
      status: TimetableMessagingStatus.success,
      eventHistory: messageHistory,
    ));
  }

  Future<void> _onTimetableMessagingHistoryClearRequested(
    TimetableMessagingHistoryClearRequested event,
    Emitter<TimetableMessagingState> emit,
  ) async {
    if (state.status.isLoading) {
      debugPrint(
        "TimetableMessagingBloc: Attempted to clear message history while still loading",
      );
      return;
    }

    emit(state.copyWith(
      status: TimetableMessagingStatus.loading,
    ));

    await _timetableMessagingRepository
        .clearMessageHistory(state.selectedWeekId);

    debugPrint(
      "TimetableMessagingBloc: Successfully cleared message history for topic '${state.selectedWeekId}'",
    );

    emit(state.copyWith(
      status: TimetableMessagingStatus.success,
      eventHistory: [],
    ));
  }

  Future<void> _onTimetableMessagingHistoryClearAllRequested(
    TimetableMessagingHistoryClearAllRequested event,
    Emitter<TimetableMessagingState> emit,
  ) async {
    if (state.status.isLoading) {
      debugPrint(
        "TimetableMessagingBloc: Attempted to clear all message history while still loading",
      );
      return;
    }

    emit(state.copyWith(
      status: TimetableMessagingStatus.loading,
    ));

    await _timetableMessagingRepository.clearAllMessageHistory();

    debugPrint(
      "TimetableMessagingBloc: Successfully cleared all message history",
    );

    emit(state.copyWith(
      status: TimetableMessagingStatus.success,
      eventHistory: [],
    ));
  }
}
