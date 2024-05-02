// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableDatabase _$TimetableDatabaseFromJson(Map<String, dynamic> json) {
  return _TimetableDatabase.fromJson(json);
}

/// @nodoc
mixin _$TimetableDatabase {
  List<TimetableStudyProgram> get studyPrograms =>
      throw _privateConstructorUsedError;
  List<TimetableClassRoom> get classRooms => throw _privateConstructorUsedError;
  List<TimetableEventType> get eventTypes => throw _privateConstructorUsedError;
  List<TimetableSubject> get subjects => throw _privateConstructorUsedError;
  List<TimetableTeacher> get teachers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableDatabaseCopyWith<TimetableDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableDatabaseCopyWith<$Res> {
  factory $TimetableDatabaseCopyWith(
          TimetableDatabase value, $Res Function(TimetableDatabase) then) =
      _$TimetableDatabaseCopyWithImpl<$Res, TimetableDatabase>;
  @useResult
  $Res call(
      {List<TimetableStudyProgram> studyPrograms,
      List<TimetableClassRoom> classRooms,
      List<TimetableEventType> eventTypes,
      List<TimetableSubject> subjects,
      List<TimetableTeacher> teachers});
}

/// @nodoc
class _$TimetableDatabaseCopyWithImpl<$Res, $Val extends TimetableDatabase>
    implements $TimetableDatabaseCopyWith<$Res> {
  _$TimetableDatabaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyPrograms = null,
    Object? classRooms = null,
    Object? eventTypes = null,
    Object? subjects = null,
    Object? teachers = null,
  }) {
    return _then(_value.copyWith(
      studyPrograms: null == studyPrograms
          ? _value.studyPrograms
          : studyPrograms // ignore: cast_nullable_to_non_nullable
              as List<TimetableStudyProgram>,
      classRooms: null == classRooms
          ? _value.classRooms
          : classRooms // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TimetableDatabaseImplCopyWith<$Res>
    implements $TimetableDatabaseCopyWith<$Res> {
  factory _$$TimetableDatabaseImplCopyWith(_$TimetableDatabaseImpl value,
          $Res Function(_$TimetableDatabaseImpl) then) =
      __$$TimetableDatabaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TimetableStudyProgram> studyPrograms,
      List<TimetableClassRoom> classRooms,
      List<TimetableEventType> eventTypes,
      List<TimetableSubject> subjects,
      List<TimetableTeacher> teachers});
}

/// @nodoc
class __$$TimetableDatabaseImplCopyWithImpl<$Res>
    extends _$TimetableDatabaseCopyWithImpl<$Res, _$TimetableDatabaseImpl>
    implements _$$TimetableDatabaseImplCopyWith<$Res> {
  __$$TimetableDatabaseImplCopyWithImpl(_$TimetableDatabaseImpl _value,
      $Res Function(_$TimetableDatabaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyPrograms = null,
    Object? classRooms = null,
    Object? eventTypes = null,
    Object? subjects = null,
    Object? teachers = null,
  }) {
    return _then(_$TimetableDatabaseImpl(
      studyPrograms: null == studyPrograms
          ? _value._studyPrograms
          : studyPrograms // ignore: cast_nullable_to_non_nullable
              as List<TimetableStudyProgram>,
      classRooms: null == classRooms
          ? _value._classRooms
          : classRooms // ignore: cast_nullable_to_non_nullable
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
class _$TimetableDatabaseImpl implements _TimetableDatabase {
  const _$TimetableDatabaseImpl(
      {required final List<TimetableStudyProgram> studyPrograms,
      required final List<TimetableClassRoom> classRooms,
      required final List<TimetableEventType> eventTypes,
      required final List<TimetableSubject> subjects,
      required final List<TimetableTeacher> teachers})
      : _studyPrograms = studyPrograms,
        _classRooms = classRooms,
        _eventTypes = eventTypes,
        _subjects = subjects,
        _teachers = teachers;

  factory _$TimetableDatabaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableDatabaseImplFromJson(json);

  final List<TimetableStudyProgram> _studyPrograms;
  @override
  List<TimetableStudyProgram> get studyPrograms {
    if (_studyPrograms is EqualUnmodifiableListView) return _studyPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studyPrograms);
  }

  final List<TimetableClassRoom> _classRooms;
  @override
  List<TimetableClassRoom> get classRooms {
    if (_classRooms is EqualUnmodifiableListView) return _classRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classRooms);
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
    return 'TimetableDatabase(studyPrograms: $studyPrograms, classRooms: $classRooms, eventTypes: $eventTypes, subjects: $subjects, teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableDatabaseImpl &&
            const DeepCollectionEquality()
                .equals(other._studyPrograms, _studyPrograms) &&
            const DeepCollectionEquality()
                .equals(other._classRooms, _classRooms) &&
            const DeepCollectionEquality()
                .equals(other._eventTypes, _eventTypes) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_studyPrograms),
      const DeepCollectionEquality().hash(_classRooms),
      const DeepCollectionEquality().hash(_eventTypes),
      const DeepCollectionEquality().hash(_subjects),
      const DeepCollectionEquality().hash(_teachers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableDatabaseImplCopyWith<_$TimetableDatabaseImpl> get copyWith =>
      __$$TimetableDatabaseImplCopyWithImpl<_$TimetableDatabaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableDatabaseImplToJson(
      this,
    );
  }
}

abstract class _TimetableDatabase implements TimetableDatabase {
  const factory _TimetableDatabase(
          {required final List<TimetableStudyProgram> studyPrograms,
          required final List<TimetableClassRoom> classRooms,
          required final List<TimetableEventType> eventTypes,
          required final List<TimetableSubject> subjects,
          required final List<TimetableTeacher> teachers}) =
      _$TimetableDatabaseImpl;

  factory _TimetableDatabase.fromJson(Map<String, dynamic> json) =
      _$TimetableDatabaseImpl.fromJson;

  @override
  List<TimetableStudyProgram> get studyPrograms;
  @override
  List<TimetableClassRoom> get classRooms;
  @override
  List<TimetableEventType> get eventTypes;
  @override
  List<TimetableSubject> get subjects;
  @override
  List<TimetableTeacher> get teachers;
  @override
  @JsonKey(ignore: true)
  _$$TimetableDatabaseImplCopyWith<_$TimetableDatabaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
