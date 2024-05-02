// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_definitions_database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimetableDefinitionsDatabaseImpl _$$TimetableDefinitionsDatabaseImplFromJson(
        Map<String, dynamic> json) =>
    _$TimetableDefinitionsDatabaseImpl(
      classes: (json['classes'] as List<dynamic>)
          .map((e) => TimetableClass.fromJson(e as Map<String, dynamic>))
          .toList(),
      classrooms: (json['classrooms'] as List<dynamic>)
          .map((e) => TimetableClassRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventTypes: (json['eventTypes'] as List<dynamic>)
          .map((e) => TimetableEventType.fromJson(e as Map<String, dynamic>))
          .toList(),
      subjects: (json['subjects'] as List<dynamic>)
          .map((e) => TimetableSubject.fromJson(e as Map<String, dynamic>))
          .toList(),
      teachers: (json['teachers'] as List<dynamic>)
          .map((e) => TimetableTeacher.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TimetableDefinitionsDatabaseImplToJson(
        _$TimetableDefinitionsDatabaseImpl instance) =>
    <String, dynamic>{
      'classes': instance.classes,
      'classrooms': instance.classrooms,
      'eventTypes': instance.eventTypes,
      'subjects': instance.subjects,
      'teachers': instance.teachers,
    };
