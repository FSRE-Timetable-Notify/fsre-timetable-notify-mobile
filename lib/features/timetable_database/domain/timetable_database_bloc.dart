import 'package:fsre_notifier/_all.dart';

part 'timetable_database_state.dart';
part 'timetable_database_event.dart';

class TimetableDatabaseBloc
    extends Bloc<TimetableDatabaseEvent, TimetableDatabaseState> {
  TimetableDatabaseBloc({
    required TimetableDatabaseRepository timetableDatabaseRepository,
  })  : _timetableDatabaseRepository = timetableDatabaseRepository,
        super(const TimetableDatabaseState()) {
    on<TimetableDatabaseSet>(
      _onTimetableDatabaseSet,
      transformer: restartable(),
    );
    on<TimetableDatabaseSubscriptionRequested>(
      _onTimetableDatabaseSubscriptionRequested,
      transformer: droppable(),
    );

    add(TimetableDatabaseSubscriptionRequested());
  }

  final TimetableDatabaseRepository _timetableDatabaseRepository;

  void _onTimetableDatabaseSet(
    TimetableDatabaseSet event,
    Emitter<TimetableDatabaseState> emit,
  ) {
    emit(state.copyWith(
      status: TimetableDatabaseStatus.success,
      timetableStudyPrograms: event.timetableStudyPrograms,
    ));
  }

  Future<void> _onTimetableDatabaseSubscriptionRequested(
    TimetableDatabaseSubscriptionRequested event,
    Emitter<TimetableDatabaseState> emit,
  ) async {
    emit(state.copyWith(status: TimetableDatabaseStatus.loading));

    try {
      final timetableDatabase =
          await _timetableDatabaseRepository.getTimetableDatabase();

      emit(state.copyWith(
        status: TimetableDatabaseStatus.success,
        timetableStudyPrograms: timetableDatabase.studyPrograms,
      ));
    } on Exception catch (error) {
      emit(state.copyWith(
        status: TimetableDatabaseStatus.failure,
        timetableStudyPrograms: [],
        error: error,
      ));
    }
  }
}
