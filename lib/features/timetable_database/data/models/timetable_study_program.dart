import 'package:fsre_notifier/_all.dart';

part 'timetable_study_program.freezed.dart';
part 'timetable_study_program.g.dart';

@freezed
class TimetableStudyProgram with _$TimetableStudyProgram {
  const factory TimetableStudyProgram({
    required int id,
    required String name,
  }) = _TimetableStudyProgram;

  factory TimetableStudyProgram.fromJson(Map<String, dynamic> json) =>
      _$TimetableStudyProgramFromJson(json);
}
