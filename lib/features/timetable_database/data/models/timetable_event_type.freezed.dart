// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_event_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableEventType _$TimetableEventTypeFromJson(Map<String, dynamic> json) {
  return _TimetableEventType.fromJson(json);
}

/// @nodoc
mixin _$TimetableEventType {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableEventTypeCopyWith<TimetableEventType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableEventTypeCopyWith<$Res> {
  factory $TimetableEventTypeCopyWith(
          TimetableEventType value, $Res Function(TimetableEventType) then) =
      _$TimetableEventTypeCopyWithImpl<$Res, TimetableEventType>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$TimetableEventTypeCopyWithImpl<$Res, $Val extends TimetableEventType>
    implements $TimetableEventTypeCopyWith<$Res> {
  _$TimetableEventTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableEventTypeImplCopyWith<$Res>
    implements $TimetableEventTypeCopyWith<$Res> {
  factory _$$TimetableEventTypeImplCopyWith(_$TimetableEventTypeImpl value,
          $Res Function(_$TimetableEventTypeImpl) then) =
      __$$TimetableEventTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$TimetableEventTypeImplCopyWithImpl<$Res>
    extends _$TimetableEventTypeCopyWithImpl<$Res, _$TimetableEventTypeImpl>
    implements _$$TimetableEventTypeImplCopyWith<$Res> {
  __$$TimetableEventTypeImplCopyWithImpl(_$TimetableEventTypeImpl _value,
      $Res Function(_$TimetableEventTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TimetableEventTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableEventTypeImpl implements _TimetableEventType {
  const _$TimetableEventTypeImpl({required this.id, required this.name});

  factory _$TimetableEventTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableEventTypeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'TimetableEventType(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableEventTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableEventTypeImplCopyWith<_$TimetableEventTypeImpl> get copyWith =>
      __$$TimetableEventTypeImplCopyWithImpl<_$TimetableEventTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableEventTypeImplToJson(
      this,
    );
  }
}

abstract class _TimetableEventType implements TimetableEventType {
  const factory _TimetableEventType(
      {required final String id,
      required final String name}) = _$TimetableEventTypeImpl;

  factory _TimetableEventType.fromJson(Map<String, dynamic> json) =
      _$TimetableEventTypeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TimetableEventTypeImplCopyWith<_$TimetableEventTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
