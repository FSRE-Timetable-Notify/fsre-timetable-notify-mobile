// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableClass _$TimetableClassFromJson(Map<String, dynamic> json) {
  return _TimetableClass.fromJson(json);
}

/// @nodoc
mixin _$TimetableClass {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableClassCopyWith<TimetableClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableClassCopyWith<$Res> {
  factory $TimetableClassCopyWith(
          TimetableClass value, $Res Function(TimetableClass) then) =
      _$TimetableClassCopyWithImpl<$Res, TimetableClass>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$TimetableClassCopyWithImpl<$Res, $Val extends TimetableClass>
    implements $TimetableClassCopyWith<$Res> {
  _$TimetableClassCopyWithImpl(this._value, this._then);

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
abstract class _$$TimetableClassImplCopyWith<$Res>
    implements $TimetableClassCopyWith<$Res> {
  factory _$$TimetableClassImplCopyWith(_$TimetableClassImpl value,
          $Res Function(_$TimetableClassImpl) then) =
      __$$TimetableClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$TimetableClassImplCopyWithImpl<$Res>
    extends _$TimetableClassCopyWithImpl<$Res, _$TimetableClassImpl>
    implements _$$TimetableClassImplCopyWith<$Res> {
  __$$TimetableClassImplCopyWithImpl(
      _$TimetableClassImpl _value, $Res Function(_$TimetableClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TimetableClassImpl(
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
class _$TimetableClassImpl implements _TimetableClass {
  const _$TimetableClassImpl({required this.id, required this.name});

  factory _$TimetableClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableClassImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'TimetableClass(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableClassImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableClassImplCopyWith<_$TimetableClassImpl> get copyWith =>
      __$$TimetableClassImplCopyWithImpl<_$TimetableClassImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableClassImplToJson(
      this,
    );
  }
}

abstract class _TimetableClass implements TimetableClass {
  const factory _TimetableClass(
      {required final int id,
      required final String name}) = _$TimetableClassImpl;

  factory _TimetableClass.fromJson(Map<String, dynamic> json) =
      _$TimetableClassImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TimetableClassImplCopyWith<_$TimetableClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
