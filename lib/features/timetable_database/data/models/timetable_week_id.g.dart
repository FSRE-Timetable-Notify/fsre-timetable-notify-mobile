// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_week_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimetableWeekIdImpl _$$TimetableWeekIdImplFromJson(
        Map<String, dynamic> json) =>
    _$TimetableWeekIdImpl(
      classId: json['classId'] as int,
      from: const DateTimeSerializer().fromJson(json['from']),
      to: const DateTimeSerializer().fromJson(json['to']),
    );

Map<String, dynamic> _$$TimetableWeekIdImplToJson(
        _$TimetableWeekIdImpl instance) =>
    <String, dynamic>{
      'classId': instance.classId,
      'from': const DateTimeSerializer().toJson(instance.from),
      'to': const DateTimeSerializer().toJson(instance.to),
    };
