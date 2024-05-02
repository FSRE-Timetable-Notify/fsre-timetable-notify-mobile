// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messaging_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessagingSubscriptionImpl _$$MessagingSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$MessagingSubscriptionImpl(
      id: json['id'] as String,
      fcmToken: json['fcmToken'] as String,
      studyProgramId: json['studyProgramId'] as int,
    );

Map<String, dynamic> _$$MessagingSubscriptionImplToJson(
        _$MessagingSubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fcmToken': instance.fcmToken,
      'studyProgramId': instance.studyProgramId,
    };
