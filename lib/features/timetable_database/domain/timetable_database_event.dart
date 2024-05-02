part of 'timetable_database_bloc.dart';

sealed class TimetableDatabaseEvent extends Equatable {
  const TimetableDatabaseEvent();

  @override
  List<Object> get props => [];
}

final class TimetableDatabaseSet extends TimetableDatabaseEvent {
  const TimetableDatabaseSet(this.timetableStudyPrograms);

  final List<TimetableStudyProgram> timetableStudyPrograms;

  @override
  List<Object> get props => [timetableStudyPrograms];
}

final class TimetableDatabaseSubscriptionRequested
    extends TimetableDatabaseEvent {}
