import 'package:fsre_notifier/_all.dart';

part 'timetable_event_type.freezed.dart';
part 'timetable_event_type.g.dart';

@freezed
class TimetableEventType with _$TimetableEventType {
  const factory TimetableEventType({
    required String id,
    required String name,
  }) = _TimetableEventType;

  factory TimetableEventType.fromJson(Map<String, dynamic> json) =>
      _$TimetableEventTypeFromJson(json);
}
