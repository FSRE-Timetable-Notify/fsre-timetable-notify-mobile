// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableKey _$TimetableKeyFromJson(Map<String, dynamic> json) {
  return _TimetableKey.fromJson(json);
}

/// @nodoc
mixin _$TimetableKey {
  int get studyProgramId => throw _privateConstructorUsedError;
  String get yearWeek => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableKeyCopyWith<TimetableKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableKeyCopyWith<$Res> {
  factory $TimetableKeyCopyWith(
          TimetableKey value, $Res Function(TimetableKey) then) =
      _$TimetableKeyCopyWithImpl<$Res, TimetableKey>;
  @useResult
  $Res call({int studyProgramId, String yearWeek});
}

/// @nodoc
class _$TimetableKeyCopyWithImpl<$Res, $Val extends TimetableKey>
    implements $TimetableKeyCopyWith<$Res> {
  _$TimetableKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyProgramId = null,
    Object? yearWeek = null,
  }) {
    return _then(_value.copyWith(
      studyProgramId: null == studyProgramId
          ? _value.studyProgramId
          : studyProgramId // ignore: cast_nullable_to_non_nullable
              as int,
      yearWeek: null == yearWeek
          ? _value.yearWeek
          : yearWeek // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableKeyImplCopyWith<$Res>
    implements $TimetableKeyCopyWith<$Res> {
  factory _$$TimetableKeyImplCopyWith(
          _$TimetableKeyImpl value, $Res Function(_$TimetableKeyImpl) then) =
      __$$TimetableKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int studyProgramId, String yearWeek});
}

/// @nodoc
class __$$TimetableKeyImplCopyWithImpl<$Res>
    extends _$TimetableKeyCopyWithImpl<$Res, _$TimetableKeyImpl>
    implements _$$TimetableKeyImplCopyWith<$Res> {
  __$$TimetableKeyImplCopyWithImpl(
      _$TimetableKeyImpl _value, $Res Function(_$TimetableKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyProgramId = null,
    Object? yearWeek = null,
  }) {
    return _then(_$TimetableKeyImpl(
      studyProgramId: null == studyProgramId
          ? _value.studyProgramId
          : studyProgramId // ignore: cast_nullable_to_non_nullable
              as int,
      yearWeek: null == yearWeek
          ? _value.yearWeek
          : yearWeek // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableKeyImpl implements _TimetableKey {
  const _$TimetableKeyImpl(
      {required this.studyProgramId, required this.yearWeek});

  factory _$TimetableKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableKeyImplFromJson(json);

  @override
  final int studyProgramId;
  @override
  final String yearWeek;

  @override
  String toString() {
    return 'TimetableKey(studyProgramId: $studyProgramId, yearWeek: $yearWeek)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableKeyImpl &&
            (identical(other.studyProgramId, studyProgramId) ||
                other.studyProgramId == studyProgramId) &&
            (identical(other.yearWeek, yearWeek) ||
                other.yearWeek == yearWeek));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studyProgramId, yearWeek);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableKeyImplCopyWith<_$TimetableKeyImpl> get copyWith =>
      __$$TimetableKeyImplCopyWithImpl<_$TimetableKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableKeyImplToJson(
      this,
    );
  }
}

abstract class _TimetableKey implements TimetableKey {
  const factory _TimetableKey(
      {required final int studyProgramId,
      required final String yearWeek}) = _$TimetableKeyImpl;

  factory _TimetableKey.fromJson(Map<String, dynamic> json) =
      _$TimetableKeyImpl.fromJson;

  @override
  int get studyProgramId;
  @override
  String get yearWeek;
  @override
  @JsonKey(ignore: true)
  _$$TimetableKeyImplCopyWith<_$TimetableKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
