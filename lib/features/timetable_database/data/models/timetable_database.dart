import 'package:fsre_notifier/_all.dart';

part 'timetable_database.freezed.dart';
part 'timetable_database.g.dart';

@freezed
class TimetableDatabase with _$TimetableDatabase {
  const factory TimetableDatabase({
    required List<TimetableStudyProgram> studyPrograms,
    required List<TimetableClassRoom> classRooms,
    required List<TimetableEventType> eventTypes,
    required List<TimetableSubject> subjects,
    required List<TimetableTeacher> teachers,
  }) = _TimetableDatabase;

  factory TimetableDatabase.fromJson(Map<String, dynamic> json) =>
      _$TimetableDatabaseFromJson(json);
}
