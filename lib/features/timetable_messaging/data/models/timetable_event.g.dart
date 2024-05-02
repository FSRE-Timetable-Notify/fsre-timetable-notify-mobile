// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimetableEventImpl _$$TimetableEventImplFromJson(Map<String, dynamic> json) =>
    _$TimetableEventImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      startDate: const DateTimeSerializer().fromJson(json['startDate']),
      endDate: const DateTimeSerializer().fromJson(json['endDate']),
      studyProgramIds: (json['studyProgramIds'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      teacherIds:
          (json['teacherIds'] as List<dynamic>).map((e) => e as int).toList(),
      classRoomIds:
          (json['classRoomIds'] as List<dynamic>).map((e) => e as int).toList(),
      studyProgramNames: (json['studyProgramNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      teacherNames: (json['teacherNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      classRoomNames: (json['classRoomNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$TimetableEventImplToJson(
        _$TimetableEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': const DateTimeSerializer().toJson(instance.startDate),
      'endDate': const DateTimeSerializer().toJson(instance.endDate),
      'studyProgramIds': instance.studyProgramIds,
      'teacherIds': instance.teacherIds,
      'classRoomIds': instance.classRoomIds,
      'studyProgramNames': instance.studyProgramNames,
      'teacherNames': instance.teacherNames,
      'classRoomNames': instance.classRoomNames,
    };
