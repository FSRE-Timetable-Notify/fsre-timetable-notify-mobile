// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_classroom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableClassRoom _$TimetableClassRoomFromJson(Map<String, dynamic> json) {
  return _TimetableClassRoom.fromJson(json);
}

/// @nodoc
mixin _$TimetableClassRoom {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableClassRoomCopyWith<TimetableClassRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableClassRoomCopyWith<$Res> {
  factory $TimetableClassRoomCopyWith(
          TimetableClassRoom value, $Res Function(TimetableClassRoom) then) =
      _$TimetableClassRoomCopyWithImpl<$Res, TimetableClassRoom>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$TimetableClassRoomCopyWithImpl<$Res, $Val extends TimetableClassRoom>
    implements $TimetableClassRoomCopyWith<$Res> {
  _$TimetableClassRoomCopyWithImpl(this._value, this._then);

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
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableClassRoomImplCopyWith<$Res>
    implements $TimetableClassRoomCopyWith<$Res> {
  factory _$$TimetableClassRoomImplCopyWith(_$TimetableClassRoomImpl value,
          $Res Function(_$TimetableClassRoomImpl) then) =
      __$$TimetableClassRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$TimetableClassRoomImplCopyWithImpl<$Res>
    extends _$TimetableClassRoomCopyWithImpl<$Res, _$TimetableClassRoomImpl>
    implements _$$TimetableClassRoomImplCopyWith<$Res> {
  __$$TimetableClassRoomImplCopyWithImpl(_$TimetableClassRoomImpl _value,
      $Res Function(_$TimetableClassRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TimetableClassRoomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableClassRoomImpl implements _TimetableClassRoom {
  const _$TimetableClassRoomImpl({required this.id, required this.name});

  factory _$TimetableClassRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableClassRoomImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'TimetableClassRoom(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableClassRoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableClassRoomImplCopyWith<_$TimetableClassRoomImpl> get copyWith =>
      __$$TimetableClassRoomImplCopyWithImpl<_$TimetableClassRoomImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableClassRoomImplToJson(
      this,
    );
  }
}

abstract class _TimetableClassRoom implements TimetableClassRoom {
  const factory _TimetableClassRoom(
      {required final int id,
      required final String name}) = _$TimetableClassRoomImpl;

  factory _TimetableClassRoom.fromJson(Map<String, dynamic> json) =
      _$TimetableClassRoomImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TimetableClassRoomImplCopyWith<_$TimetableClassRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
