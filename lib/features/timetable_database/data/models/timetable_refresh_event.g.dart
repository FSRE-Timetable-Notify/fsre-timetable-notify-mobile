// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_refresh_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimetableRefreshEventImpl _$$TimetableRefreshEventImplFromJson(
        Map<String, dynamic> json) =>
    _$TimetableRefreshEventImpl(
      timetableWeekId: TimetableWeekId.fromJson(
          json['timetableWeekId'] as Map<String, dynamic>),
      timetableEvents: (json['timetableEvents'] as List<dynamic>)
          .map((e) => TimetableEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TimetableRefreshEventImplToJson(
        _$TimetableRefreshEventImpl instance) =>
    <String, dynamic>{
      'timetableWeekId': instance.timetableWeekId,
      'timetableEvents': instance.timetableEvents,
    };
