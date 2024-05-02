// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimetableEventImpl _$$TimetableEventImplFromJson(Map<String, dynamic> json) =>
    _$TimetableEventImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      teacherIds:
          (json['teacherIds'] as List<dynamic>).map((e) => e as int).toList(),
      classRoomIds:
          (json['classRoomIds'] as List<dynamic>).map((e) => e as int).toList(),
      classIds:
          (json['classIds'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$TimetableEventImplToJson(
        _$TimetableEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'teacherIds': instance.teacherIds,
      'classRoomIds': instance.classRoomIds,
      'classIds': instance.classIds,
    };
