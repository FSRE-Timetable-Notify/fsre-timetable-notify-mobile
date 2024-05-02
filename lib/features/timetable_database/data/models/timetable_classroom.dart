import 'package:fsre_notifier/_all.dart';

part 'timetable_classroom.freezed.dart';
part 'timetable_classroom.g.dart';

@freezed
class TimetableClassRoom with _$TimetableClassRoom {
  const factory TimetableClassRoom({
    required int id,
    required String name,
  }) = _TimetableClassRoom;

  factory TimetableClassRoom.fromJson(Map<String, dynamic> json) =>
      _$TimetableClassRoomFromJson(json);
}
