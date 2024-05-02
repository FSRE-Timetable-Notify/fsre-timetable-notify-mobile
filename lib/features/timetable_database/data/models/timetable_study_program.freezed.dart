// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_study_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableStudyProgram _$TimetableStudyProgramFromJson(
    Map<String, dynamic> json) {
  return _TimetableStudyProgram.fromJson(json);
}

/// @nodoc
mixin _$TimetableStudyProgram {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableStudyProgramCopyWith<TimetableStudyProgram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableStudyProgramCopyWith<$Res> {
  factory $TimetableStudyProgramCopyWith(TimetableStudyProgram value,
          $Res Function(TimetableStudyProgram) then) =
      _$TimetableStudyProgramCopyWithImpl<$Res, TimetableStudyProgram>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$TimetableStudyProgramCopyWithImpl<$Res,
        $Val extends TimetableStudyProgram>
    implements $TimetableStudyProgramCopyWith<$Res> {
  _$TimetableStudyProgramCopyWithImpl(this._value, this._then);

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
abstract class _$$TimetableStudyProgramImplCopyWith<$Res>
    implements $TimetableStudyProgramCopyWith<$Res> {
  factory _$$TimetableStudyProgramImplCopyWith(
          _$TimetableStudyProgramImpl value,
          $Res Function(_$TimetableStudyProgramImpl) then) =
      __$$TimetableStudyProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$TimetableStudyProgramImplCopyWithImpl<$Res>
    extends _$TimetableStudyProgramCopyWithImpl<$Res,
        _$TimetableStudyProgramImpl>
    implements _$$TimetableStudyProgramImplCopyWith<$Res> {
  __$$TimetableStudyProgramImplCopyWithImpl(_$TimetableStudyProgramImpl _value,
      $Res Function(_$TimetableStudyProgramImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TimetableStudyProgramImpl(
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
class _$TimetableStudyProgramImpl implements _TimetableStudyProgram {
  const _$TimetableStudyProgramImpl({required this.id, required this.name});

  factory _$TimetableStudyProgramImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableStudyProgramImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'TimetableStudyProgram(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableStudyProgramImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableStudyProgramImplCopyWith<_$TimetableStudyProgramImpl>
      get copyWith => __$$TimetableStudyProgramImplCopyWithImpl<
          _$TimetableStudyProgramImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableStudyProgramImplToJson(
      this,
    );
  }
}

abstract class _TimetableStudyProgram implements TimetableStudyProgram {
  const factory _TimetableStudyProgram(
      {required final int id,
      required final String name}) = _$TimetableStudyProgramImpl;

  factory _TimetableStudyProgram.fromJson(Map<String, dynamic> json) =
      _$TimetableStudyProgramImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TimetableStudyProgramImplCopyWith<_$TimetableStudyProgramImpl>
      get copyWith => throw _privateConstructorUsedError;
}
