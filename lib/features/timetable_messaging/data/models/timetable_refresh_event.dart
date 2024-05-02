import 'package:fsre_notifier/_all.dart';

part 'timetable_refresh_event.freezed.dart';
part 'timetable_refresh_event.g.dart';

@freezed
class TimetableRefreshEvent with _$TimetableRefreshEvent {
  const factory TimetableRefreshEvent({
    @DateTimeSerializer() required DateTime timestamp,
    required List<TimetableEvent> newTimetableEvents,
    required List<TimetableEvent> removedTimetableEvents,
    required TimetableKey timetableKey,
  }) = _TimetableRefreshEvent;

  factory TimetableRefreshEvent.fromJson(Map<String, dynamic> json) =>
      _$TimetableRefreshEventFromJson(json);
}
