// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_week_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableWeekId _$TimetableWeekIdFromJson(Map<String, dynamic> json) {
  return _TimetableWeekId.fromJson(json);
}

/// @nodoc
mixin _$TimetableWeekId {
  int get classId => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  DateTime get from => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  DateTime get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableWeekIdCopyWith<TimetableWeekId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableWeekIdCopyWith<$Res> {
  factory $TimetableWeekIdCopyWith(
          TimetableWeekId value, $Res Function(TimetableWeekId) then) =
      _$TimetableWeekIdCopyWithImpl<$Res, TimetableWeekId>;
  @useResult
  $Res call(
      {int classId,
      @DateTimeSerializer() DateTime from,
      @DateTimeSerializer() DateTime to});
}

/// @nodoc
class _$TimetableWeekIdCopyWithImpl<$Res, $Val extends TimetableWeekId>
    implements $TimetableWeekIdCopyWith<$Res> {
  _$TimetableWeekIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableWeekIdImplCopyWith<$Res>
    implements $TimetableWeekIdCopyWith<$Res> {
  factory _$$TimetableWeekIdImplCopyWith(_$TimetableWeekIdImpl value,
          $Res Function(_$TimetableWeekIdImpl) then) =
      __$$TimetableWeekIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int classId,
      @DateTimeSerializer() DateTime from,
      @DateTimeSerializer() DateTime to});
}

/// @nodoc
class __$$TimetableWeekIdImplCopyWithImpl<$Res>
    extends _$TimetableWeekIdCopyWithImpl<$Res, _$TimetableWeekIdImpl>
    implements _$$TimetableWeekIdImplCopyWith<$Res> {
  __$$TimetableWeekIdImplCopyWithImpl(
      _$TimetableWeekIdImpl _value, $Res Function(_$TimetableWeekIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$TimetableWeekIdImpl(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableWeekIdImpl implements _TimetableWeekId {
  const _$TimetableWeekIdImpl(
      {required this.classId,
      @DateTimeSerializer() required this.from,
      @DateTimeSerializer() required this.to});

  factory _$TimetableWeekIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableWeekIdImplFromJson(json);

  @override
  final int classId;
  @override
  @DateTimeSerializer()
  final DateTime from;
  @override
  @DateTimeSerializer()
  final DateTime to;

  @override
  String toString() {
    return 'TimetableWeekId(classId: $classId, from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableWeekIdImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, classId, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableWeekIdImplCopyWith<_$TimetableWeekIdImpl> get copyWith =>
      __$$TimetableWeekIdImplCopyWithImpl<_$TimetableWeekIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableWeekIdImplToJson(
      this,
    );
  }
}

abstract class _TimetableWeekId implements TimetableWeekId {
  const factory _TimetableWeekId(
          {required final int classId,
          @DateTimeSerializer() required final DateTime from,
          @DateTimeSerializer() required final DateTime to}) =
      _$TimetableWeekIdImpl;

  factory _TimetableWeekId.fromJson(Map<String, dynamic> json) =
      _$TimetableWeekIdImpl.fromJson;

  @override
  int get classId;
  @override
  @DateTimeSerializer()
  DateTime get from;
  @override
  @DateTimeSerializer()
  DateTime get to;
  @override
  @JsonKey(ignore: true)
  _$$TimetableWeekIdImplCopyWith<_$TimetableWeekIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
