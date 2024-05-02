// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableTeacher _$TimetableTeacherFromJson(Map<String, dynamic> json) {
  return _TimetableTeacher.fromJson(json);
}

/// @nodoc
mixin _$TimetableTeacher {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableTeacherCopyWith<TimetableTeacher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableTeacherCopyWith<$Res> {
  factory $TimetableTeacherCopyWith(
          TimetableTeacher value, $Res Function(TimetableTeacher) then) =
      _$TimetableTeacherCopyWithImpl<$Res, TimetableTeacher>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$TimetableTeacherCopyWithImpl<$Res, $Val extends TimetableTeacher>
    implements $TimetableTeacherCopyWith<$Res> {
  _$TimetableTeacherCopyWithImpl(this._value, this._then);

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
abstract class _$$TimetableTeacherImplCopyWith<$Res>
    implements $TimetableTeacherCopyWith<$Res> {
  factory _$$TimetableTeacherImplCopyWith(_$TimetableTeacherImpl value,
          $Res Function(_$TimetableTeacherImpl) then) =
      __$$TimetableTeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$TimetableTeacherImplCopyWithImpl<$Res>
    extends _$TimetableTeacherCopyWithImpl<$Res, _$TimetableTeacherImpl>
    implements _$$TimetableTeacherImplCopyWith<$Res> {
  __$$TimetableTeacherImplCopyWithImpl(_$TimetableTeacherImpl _value,
      $Res Function(_$TimetableTeacherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TimetableTeacherImpl(
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
class _$TimetableTeacherImpl implements _TimetableTeacher {
  const _$TimetableTeacherImpl({required this.id, required this.name});

  factory _$TimetableTeacherImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableTeacherImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'TimetableTeacher(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableTeacherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableTeacherImplCopyWith<_$TimetableTeacherImpl> get copyWith =>
      __$$TimetableTeacherImplCopyWithImpl<_$TimetableTeacherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableTeacherImplToJson(
      this,
    );
  }
}

abstract class _TimetableTeacher implements TimetableTeacher {
  const factory _TimetableTeacher(
      {required final int id,
      required final String name}) = _$TimetableTeacherImpl;

  factory _TimetableTeacher.fromJson(Map<String, dynamic> json) =
      _$TimetableTeacherImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TimetableTeacherImplCopyWith<_$TimetableTeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
