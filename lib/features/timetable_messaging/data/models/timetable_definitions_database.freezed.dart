// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_definitions_database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableDefinitionsDatabase _$TimetableDefinitionsDatabaseFromJson(
    Map<String, dynamic> json) {
  return _TimetableDefinitionsDatabase.fromJson(json);
}

/// @nodoc
mixin _$TimetableDefinitionsDatabase {
  List<TimetableClass> get classes => throw _privateConstructorUsedError;
  List<TimetableClassRoom> get classrooms => throw _privateConstructorUsedError;
  List<TimetableEventType> get eventTypes => throw _privateConstructorUsedError;
  List<TimetableSubject> get subjects => throw _privateConstructorUsedError;
  List<TimetableTeacher> get teachers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableDefinitionsDatabaseCopyWith<TimetableDefinitionsDatabase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableDefinitionsDatabaseCopyWith<$Res> {
  factory $TimetableDefinitionsDatabaseCopyWith(
          TimetableDefinitionsDatabase value,
          $Res Function(TimetableDefinitionsDatabase) then) =
      _$TimetableDefinitionsDatabaseCopyWithImpl<$Res,
          TimetableDefinitionsDatabase>;
  @useResult
  $Res call(
      {List<TimetableClass> classes,
      List<TimetableClassRoom> classrooms,
      List<TimetableEventType> eventTypes,
      List<TimetableSubject> subjects,
      List<TimetableTeacher> teachers});
}

/// @nodoc
class _$TimetableDefinitionsDatabaseCopyWithImpl<$Res,
        $Val extends TimetableDefinitionsDatabase>
    implements $TimetableDefinitionsDatabaseCopyWith<$Res> {
  _$TimetableDefinitionsDatabaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classes = null,
    Object? classrooms = null,
    Object? eventTypes = null,
    Object? subjects = null,
    Object? teachers = null,
  }) {
    return _then(_value.copyWith(
      classes: null == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<TimetableClass>,
      classrooms: null == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<TimetableClassRoom>,
      eventTypes: null == eventTypes
          ? _value.eventTypes
          : eventTypes // ignore: cast_nullable_to_non_nullable
              as List<TimetableEventType>,
      subjects: null == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<TimetableSubject>,
      teachers: null == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TimetableTeacher>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableDefinitionsDatabaseImplCopyWith<$Res>
    implements $TimetableDefinitionsDatabaseCopyWith<$Res> {
  factory _$$TimetableDefinitionsDatabaseImplCopyWith(
          _$TimetableDefinitionsDatabaseImpl value,
          $Res Function(_$TimetableDefinitionsDatabaseImpl) then) =
      __$$TimetableDefinitionsDatabaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TimetableClass> classes,
      List<TimetableClassRoom> classrooms,
      List<TimetableEventType> eventTypes,
      List<TimetableSubject> subjects,
      List<TimetableTeacher> teachers});
}

/// @nodoc
class __$$TimetableDefinitionsDatabaseImplCopyWithImpl<$Res>
    extends _$TimetableDefinitionsDatabaseCopyWithImpl<$Res,
        _$TimetableDefinitionsDatabaseImpl>
    implements _$$TimetableDefinitionsDatabaseImplCopyWith<$Res> {
  __$$TimetableDefinitionsDatabaseImplCopyWithImpl(
      _$TimetableDefinitionsDatabaseImpl _value,
      $Res Function(_$TimetableDefinitionsDatabaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classes = null,
    Object? classrooms = null,
    Object? eventTypes = null,
    Object? subjects = null,
    Object? teachers = null,
  }) {
    return _then(_$TimetableDefinitionsDatabaseImpl(
      classes: null == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<TimetableClass>,
      classrooms: null == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<TimetableClassRoom>,
      eventTypes: null == eventTypes
          ? _value._eventTypes
          : eventTypes // ignore: cast_nullable_to_non_nullable
              as List<TimetableEventType>,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<TimetableSubject>,
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TimetableTeacher>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableDefinitionsDatabaseImpl
    implements _TimetableDefinitionsDatabase {
  const _$TimetableDefinitionsDatabaseImpl(
      {required final List<TimetableClass> classes,
      required final List<TimetableClassRoom> classrooms,
      required final List<TimetableEventType> eventTypes,
      required final List<TimetableSubject> subjects,
      required final List<TimetableTeacher> teachers})
      : _classes = classes,
        _classrooms = classrooms,
        _eventTypes = eventTypes,
        _subjects = subjects,
        _teachers = teachers;

  factory _$TimetableDefinitionsDatabaseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TimetableDefinitionsDatabaseImplFromJson(json);

  final List<TimetableClass> _classes;
  @override
  List<TimetableClass> get classes {
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classes);
  }

  final List<TimetableClassRoom> _classrooms;
  @override
  List<TimetableClassRoom> get classrooms {
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classrooms);
  }

  final List<TimetableEventType> _eventTypes;
  @override
  List<TimetableEventType> get eventTypes {
    if (_eventTypes is EqualUnmodifiableListView) return _eventTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventTypes);
  }

  final List<TimetableSubject> _subjects;
  @override
  List<TimetableSubject> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  final List<TimetableTeacher> _teachers;
  @override
  List<TimetableTeacher> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  String toString() {
    return 'TimetableDefinitionsDatabase(classes: $classes, classrooms: $classrooms, eventTypes: $eventTypes, subjects: $subjects, teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableDefinitionsDatabaseImpl &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms) &&
            const DeepCollectionEquality()
                .equals(other._eventTypes, _eventTypes) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_classes),
      const DeepCollectionEquality().hash(_classrooms),
      const DeepCollectionEquality().hash(_eventTypes),
      const DeepCollectionEquality().hash(_subjects),
      const DeepCollectionEquality().hash(_teachers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableDefinitionsDatabaseImplCopyWith<
          _$TimetableDefinitionsDatabaseImpl>
      get copyWith => __$$TimetableDefinitionsDatabaseImplCopyWithImpl<
          _$TimetableDefinitionsDatabaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableDefinitionsDatabaseImplToJson(
      this,
    );
  }
}

abstract class _TimetableDefinitionsDatabase
    implements TimetableDefinitionsDatabase {
  const factory _TimetableDefinitionsDatabase(
          {required final List<TimetableClass> classes,
          required final List<TimetableClassRoom> classrooms,
          required final List<TimetableEventType> eventTypes,
          required final List<TimetableSubject> subjects,
          required final List<TimetableTeacher> teachers}) =
      _$TimetableDefinitionsDatabaseImpl;

  factory _TimetableDefinitionsDatabase.fromJson(Map<String, dynamic> json) =
      _$TimetableDefinitionsDatabaseImpl.fromJson;

  @override
  List<TimetableClass> get classes;
  @override
  List<TimetableClassRoom> get classrooms;
  @override
  List<TimetableEventType> get eventTypes;
  @override
  List<TimetableSubject> get subjects;
  @override
  List<TimetableTeacher> get teachers;
  @override
  @JsonKey(ignore: true)
  _$$TimetableDefinitionsDatabaseImplCopyWith<
          _$TimetableDefinitionsDatabaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
