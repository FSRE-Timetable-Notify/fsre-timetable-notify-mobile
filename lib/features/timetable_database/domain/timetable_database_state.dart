part of 'timetable_database_bloc.dart';

enum TimetableDatabaseStatus { initial, loading, success, failure }

extension TimetableDatabaseStatusX on TimetableDatabaseStatus {
  bool get isLoading =>
      this == TimetableDatabaseStatus.loading ||
      this == TimetableDatabaseStatus.initial;
  bool get isSuccess => this == TimetableDatabaseStatus.success;
  bool get isFailure => this == TimetableDatabaseStatus.failure;
}

final class TimetableDatabaseState extends Equatable {
  const TimetableDatabaseState({
    this.status = TimetableDatabaseStatus.initial,
    this.error,
    this.timetableStudyPrograms = const <TimetableStudyProgram>[],
  });

  final TimetableDatabaseStatus status;
  final Exception? error;
  final List<TimetableStudyProgram> timetableStudyPrograms;

  TimetableDatabaseState copyWith({
    TimetableDatabaseStatus? status,
    Exception? error,
    List<TimetableStudyProgram>? timetableStudyPrograms,
  }) {
    return TimetableDatabaseState(
      status: status ?? this.status,
      error: error,
      timetableStudyPrograms:
          timetableStudyPrograms ?? this.timetableStudyPrograms,
    );
  }

  @override
  List<Object?> get props => [status, error, timetableStudyPrograms];
}
