part of 'timetable_messaging_bloc.dart';

enum TimetableMessagingStatus { loading, success, failure }

extension TimetableMessagingStatusX on TimetableMessagingStatus {
  bool get isLoading => this == TimetableMessagingStatus.loading;
  bool get isSuccess => this == TimetableMessagingStatus.success;
  bool get isFailure => this == TimetableMessagingStatus.failure;
}

class TimetableMessagingState extends Equatable {
  const TimetableMessagingState({
    required this.selectedWeekId,
    required this.eventHistory,
    this.status = TimetableMessagingStatus.success,
    this.error,
  });

  final TimetableKey selectedWeekId;
  final List<TimetableRefreshEvent> eventHistory;
  final TimetableMessagingStatus status;
  final Exception? error;

  List<TimetableRefreshEvent> get forThisWeek {
    return eventHistory
        .where(
            (event) => event.timetableKey.yearWeek == selectedWeekId.yearWeek)
        .toList();
  }

  TimetableMessagingState copyWith({
    TimetableMessagingStatus? status,
    Exception? error,
    TimetableKey? selectedWeekId,
    List<TimetableRefreshEvent>? eventHistory,
  }) {
    return TimetableMessagingState(
      status: status ?? this.status,
      error: error,
      selectedWeekId: selectedWeekId ?? this.selectedWeekId,
      eventHistory: eventHistory ?? this.eventHistory,
    );
  }

  @override
  List<Object?> get props => [status, error, selectedWeekId, eventHistory];
}
