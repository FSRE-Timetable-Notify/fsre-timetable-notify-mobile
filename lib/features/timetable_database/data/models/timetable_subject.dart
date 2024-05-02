import 'package:fsre_notifier/_all.dart';

part 'timetable_subject.freezed.dart';
part 'timetable_subject.g.dart';

@freezed
class TimetableSubject with _$TimetableSubject {
  const factory TimetableSubject({
    required int id,
    required String name,
  }) = _TimetableSubject;

  factory TimetableSubject.fromJson(Map<String, dynamic> json) =>
      _$TimetableSubjectFromJson(json);
}
