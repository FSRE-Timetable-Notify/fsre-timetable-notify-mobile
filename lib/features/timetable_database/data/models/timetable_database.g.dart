// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimetableDatabaseImpl _$$TimetableDatabaseImplFromJson(
        Map<String, dynamic> json) =>
    _$TimetableDatabaseImpl(
      studyPrograms: (json['studyPrograms'] as List<dynamic>)
          .map((e) => TimetableStudyProgram.fromJson(e as Map<String, dynamic>))
          .toList(),
      classRooms: (json['classRooms'] as List<dynamic>)
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

Map<String, dynamic> _$$TimetableDatabaseImplToJson(
        _$TimetableDatabaseImpl instance) =>
    <String, dynamic>{
      'studyPrograms': instance.studyPrograms,
      'classRooms': instance.classRooms,
      'eventTypes': instance.eventTypes,
      'subjects': instance.subjects,
      'teachers': instance.teachers,
    };
