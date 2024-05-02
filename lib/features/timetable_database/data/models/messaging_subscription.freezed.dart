// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messaging_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessagingSubscription _$MessagingSubscriptionFromJson(
    Map<String, dynamic> json) {
  return _MessagingSubscription.fromJson(json);
}

/// @nodoc
mixin _$MessagingSubscription {
  String get id => throw _privateConstructorUsedError;
  String get fcmToken => throw _privateConstructorUsedError;
  int get studyProgramId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagingSubscriptionCopyWith<MessagingSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingSubscriptionCopyWith<$Res> {
  factory $MessagingSubscriptionCopyWith(MessagingSubscription value,
          $Res Function(MessagingSubscription) then) =
      _$MessagingSubscriptionCopyWithImpl<$Res, MessagingSubscription>;
  @useResult
  $Res call({String id, String fcmToken, int studyProgramId});
}

/// @nodoc
class _$MessagingSubscriptionCopyWithImpl<$Res,
        $Val extends MessagingSubscription>
    implements $MessagingSubscriptionCopyWith<$Res> {
  _$MessagingSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fcmToken = null,
    Object? studyProgramId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      studyProgramId: null == studyProgramId
          ? _value.studyProgramId
          : studyProgramId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessagingSubscriptionImplCopyWith<$Res>
    implements $MessagingSubscriptionCopyWith<$Res> {
  factory _$$MessagingSubscriptionImplCopyWith(
          _$MessagingSubscriptionImpl value,
          $Res Function(_$MessagingSubscriptionImpl) then) =
      __$$MessagingSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String fcmToken, int studyProgramId});
}

/// @nodoc
class __$$MessagingSubscriptionImplCopyWithImpl<$Res>
    extends _$MessagingSubscriptionCopyWithImpl<$Res,
        _$MessagingSubscriptionImpl>
    implements _$$MessagingSubscriptionImplCopyWith<$Res> {
  __$$MessagingSubscriptionImplCopyWithImpl(_$MessagingSubscriptionImpl _value,
      $Res Function(_$MessagingSubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fcmToken = null,
    Object? studyProgramId = null,
  }) {
    return _then(_$MessagingSubscriptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      studyProgramId: null == studyProgramId
          ? _value.studyProgramId
          : studyProgramId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagingSubscriptionImpl implements _MessagingSubscription {
  const _$MessagingSubscriptionImpl(
      {required this.id, required this.fcmToken, required this.studyProgramId});

  factory _$MessagingSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagingSubscriptionImplFromJson(json);

  @override
  final String id;
  @override
  final String fcmToken;
  @override
  final int studyProgramId;

  @override
  String toString() {
    return 'MessagingSubscription(id: $id, fcmToken: $fcmToken, studyProgramId: $studyProgramId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagingSubscriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.studyProgramId, studyProgramId) ||
                other.studyProgramId == studyProgramId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fcmToken, studyProgramId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagingSubscriptionImplCopyWith<_$MessagingSubscriptionImpl>
      get copyWith => __$$MessagingSubscriptionImplCopyWithImpl<
          _$MessagingSubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagingSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _MessagingSubscription implements MessagingSubscription {
  const factory _MessagingSubscription(
      {required final String id,
      required final String fcmToken,
      required final int studyProgramId}) = _$MessagingSubscriptionImpl;

  factory _MessagingSubscription.fromJson(Map<String, dynamic> json) =
      _$MessagingSubscriptionImpl.fromJson;

  @override
  String get id;
  @override
  String get fcmToken;
  @override
  int get studyProgramId;
  @override
  @JsonKey(ignore: true)
  _$$MessagingSubscriptionImplCopyWith<_$MessagingSubscriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
