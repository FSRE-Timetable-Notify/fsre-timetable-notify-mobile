// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_refresh_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimetableRefreshEventImpl _$$TimetableRefreshEventImplFromJson(
        Map<String, dynamic> json) =>
    _$TimetableRefreshEventImpl(
      timestamp: const DateTimeSerializer().fromJson(json['timestamp']),
      newTimetableEvents: (json['newTimetableEvents'] as List<dynamic>)
          .map((e) => TimetableEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      removedTimetableEvents: (json['removedTimetableEvents'] as List<dynamic>)
          .map((e) => TimetableEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      timetableKey:
          TimetableKey.fromJson(json['timetableKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TimetableRefreshEventImplToJson(
        _$TimetableRefreshEventImpl instance) =>
    <String, dynamic>{
      'timestamp': const DateTimeSerializer().toJson(instance.timestamp),
      'newTimetableEvents': instance.newTimetableEvents,
      'removedTimetableEvents': instance.removedTimetableEvents,
      'timetableKey': instance.timetableKey,
    };
