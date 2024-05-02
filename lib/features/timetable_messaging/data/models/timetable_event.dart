import 'package:fsre_notifier/_all.dart';

part 'timetable_event.freezed.dart';
part 'timetable_event.g.dart';

@freezed
class TimetableEvent with _$TimetableEvent {
  const factory TimetableEvent({
    required int id,
    required String name,
    @DateTimeSerializer() required DateTime startDate,
    @DateTimeSerializer() required DateTime endDate,
    required List<int> studyProgramIds,
    required List<int> teacherIds,
    required List<int> classRoomIds,
    required List<String> studyProgramNames,
    required List<String> teacherNames,
    required List<String> classRoomNames,
  }) = _TimetableEvent;

  factory TimetableEvent.fromJson(Map<String, dynamic> json) =>
      _$TimetableEventFromJson(json);
}
