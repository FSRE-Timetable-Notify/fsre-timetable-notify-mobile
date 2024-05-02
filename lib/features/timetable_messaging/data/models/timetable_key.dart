import 'package:fsre_notifier/_all.dart';

part 'timetable_key.freezed.dart';
part 'timetable_key.g.dart';

@freezed
class TimetableKey with _$TimetableKey {
  const factory TimetableKey({
    required int studyProgramId,
    required String yearWeek,
  }) = _TimetableKey;

  factory TimetableKey.fromJson(Map<String, dynamic> json) =>
      _$TimetableKeyFromJson(json);

  factory TimetableKey.initial() => TimetableKey(
        studyProgramId: -54,
        yearWeek: "${DateTime.now().year}-W${DateTime.now().weekNumber}",
      );
}
