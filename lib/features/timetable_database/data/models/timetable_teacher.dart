import 'package:fsre_notifier/_all.dart';

part 'timetable_teacher.freezed.dart';
part 'timetable_teacher.g.dart';

@freezed
class TimetableTeacher with _$TimetableTeacher {
  const factory TimetableTeacher({
    required int id,
    required String name,
  }) = _TimetableTeacher;

  factory TimetableTeacher.fromJson(Map<String, dynamic> json) =>
      _$TimetableTeacherFromJson(json);
}
