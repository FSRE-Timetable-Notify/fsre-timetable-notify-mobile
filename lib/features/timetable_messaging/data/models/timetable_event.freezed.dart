// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableEvent _$TimetableEventFromJson(Map<String, dynamic> json) {
  return _TimetableEvent.fromJson(json);
}

/// @nodoc
mixin _$TimetableEvent {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  DateTime get startDate => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  DateTime get endDate => throw _privateConstructorUsedError;
  List<int> get studyProgramIds => throw _privateConstructorUsedError;
  List<int> get teacherIds => throw _privateConstructorUsedError;
  List<int> get classRoomIds => throw _privateConstructorUsedError;
  List<String> get studyProgramNames => throw _privateConstructorUsedError;
  List<String> get teacherNames => throw _privateConstructorUsedError;
  List<String> get classRoomNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableEventCopyWith<TimetableEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableEventCopyWith<$Res> {
  factory $TimetableEventCopyWith(
          TimetableEvent value, $Res Function(TimetableEvent) then) =
      _$TimetableEventCopyWithImpl<$Res, TimetableEvent>;
  @useResult
  $Res call(
      {int id,
      String name,
      @DateTimeSerializer() DateTime startDate,
      @DateTimeSerializer() DateTime endDate,
      List<int> studyProgramIds,
      List<int> teacherIds,
      List<int> classRoomIds,
      List<String> studyProgramNames,
      List<String> teacherNames,
      List<String> classRoomNames});
}

/// @nodoc
class _$TimetableEventCopyWithImpl<$Res, $Val extends TimetableEvent>
    implements $TimetableEventCopyWith<$Res> {
  _$TimetableEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? studyProgramIds = null,
    Object? teacherIds = null,
    Object? classRoomIds = null,
    Object? studyProgramNames = null,
    Object? teacherNames = null,
    Object? classRoomNames = null,
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      studyProgramIds: null == studyProgramIds
          ? _value.studyProgramIds
          : studyProgramIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      teacherIds: null == teacherIds
          ? _value.teacherIds
          : teacherIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      classRoomIds: null == classRoomIds
          ? _value.classRoomIds
          : classRoomIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      studyProgramNames: null == studyProgramNames
          ? _value.studyProgramNames
          : studyProgramNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teacherNames: null == teacherNames
          ? _value.teacherNames
          : teacherNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      classRoomNames: null == classRoomNames
          ? _value.classRoomNames
          : classRoomNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableEventImplCopyWith<$Res>
    implements $TimetableEventCopyWith<$Res> {
  factory _$$TimetableEventImplCopyWith(_$TimetableEventImpl value,
          $Res Function(_$TimetableEventImpl) then) =
      __$$TimetableEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @DateTimeSerializer() DateTime startDate,
      @DateTimeSerializer() DateTime endDate,
      List<int> studyProgramIds,
      List<int> teacherIds,
      List<int> classRoomIds,
      List<String> studyProgramNames,
      List<String> teacherNames,
      List<String> classRoomNames});
}

/// @nodoc
class __$$TimetableEventImplCopyWithImpl<$Res>
    extends _$TimetableEventCopyWithImpl<$Res, _$TimetableEventImpl>
    implements _$$TimetableEventImplCopyWith<$Res> {
  __$$TimetableEventImplCopyWithImpl(
      _$TimetableEventImpl _value, $Res Function(_$TimetableEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? studyProgramIds = null,
    Object? teacherIds = null,
    Object? classRoomIds = null,
    Object? studyProgramNames = null,
    Object? teacherNames = null,
    Object? classRoomNames = null,
  }) {
    return _then(_$TimetableEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      studyProgramIds: null == studyProgramIds
          ? _value._studyProgramIds
          : studyProgramIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      teacherIds: null == teacherIds
          ? _value._teacherIds
          : teacherIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      classRoomIds: null == classRoomIds
          ? _value._classRoomIds
          : classRoomIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      studyProgramNames: null == studyProgramNames
          ? _value._studyProgramNames
          : studyProgramNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teacherNames: null == teacherNames
          ? _value._teacherNames
          : teacherNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      classRoomNames: null == classRoomNames
          ? _value._classRoomNames
          : classRoomNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableEventImpl implements _TimetableEvent {
  const _$TimetableEventImpl(
      {required this.id,
      required this.name,
      @DateTimeSerializer() required this.startDate,
      @DateTimeSerializer() required this.endDate,
      required final List<int> studyProgramIds,
      required final List<int> teacherIds,
      required final List<int> classRoomIds,
      required final List<String> studyProgramNames,
      required final List<String> teacherNames,
      required final List<String> classRoomNames})
      : _studyProgramIds = studyProgramIds,
        _teacherIds = teacherIds,
        _classRoomIds = classRoomIds,
        _studyProgramNames = studyProgramNames,
        _teacherNames = teacherNames,
        _classRoomNames = classRoomNames;

  factory _$TimetableEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableEventImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @DateTimeSerializer()
  final DateTime startDate;
  @override
  @DateTimeSerializer()
  final DateTime endDate;
  final List<int> _studyProgramIds;
  @override
  List<int> get studyProgramIds {
    if (_studyProgramIds is EqualUnmodifiableListView) return _studyProgramIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studyProgramIds);
  }

  final List<int> _teacherIds;
  @override
  List<int> get teacherIds {
    if (_teacherIds is EqualUnmodifiableListView) return _teacherIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacherIds);
  }

  final List<int> _classRoomIds;
  @override
  List<int> get classRoomIds {
    if (_classRoomIds is EqualUnmodifiableListView) return _classRoomIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classRoomIds);
  }

  final List<String> _studyProgramNames;
  @override
  List<String> get studyProgramNames {
    if (_studyProgramNames is EqualUnmodifiableListView)
      return _studyProgramNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studyProgramNames);
  }

  final List<String> _teacherNames;
  @override
  List<String> get teacherNames {
    if (_teacherNames is EqualUnmodifiableListView) return _teacherNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacherNames);
  }

  final List<String> _classRoomNames;
  @override
  List<String> get classRoomNames {
    if (_classRoomNames is EqualUnmodifiableListView) return _classRoomNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classRoomNames);
  }

  @override
  String toString() {
    return 'TimetableEvent(id: $id, name: $name, startDate: $startDate, endDate: $endDate, studyProgramIds: $studyProgramIds, teacherIds: $teacherIds, classRoomIds: $classRoomIds, studyProgramNames: $studyProgramNames, teacherNames: $teacherNames, classRoomNames: $classRoomNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._studyProgramIds, _studyProgramIds) &&
            const DeepCollectionEquality()
                .equals(other._teacherIds, _teacherIds) &&
            const DeepCollectionEquality()
                .equals(other._classRoomIds, _classRoomIds) &&
            const DeepCollectionEquality()
                .equals(other._studyProgramNames, _studyProgramNames) &&
            const DeepCollectionEquality()
                .equals(other._teacherNames, _teacherNames) &&
            const DeepCollectionEquality()
                .equals(other._classRoomNames, _classRoomNames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_studyProgramIds),
      const DeepCollectionEquality().hash(_teacherIds),
      const DeepCollectionEquality().hash(_classRoomIds),
      const DeepCollectionEquality().hash(_studyProgramNames),
      const DeepCollectionEquality().hash(_teacherNames),
      const DeepCollectionEquality().hash(_classRoomNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableEventImplCopyWith<_$TimetableEventImpl> get copyWith =>
      __$$TimetableEventImplCopyWithImpl<_$TimetableEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableEventImplToJson(
      this,
    );
  }
}

abstract class _TimetableEvent implements TimetableEvent {
  const factory _TimetableEvent(
      {required final int id,
      required final String name,
      @DateTimeSerializer() required final DateTime startDate,
      @DateTimeSerializer() required final DateTime endDate,
      required final List<int> studyProgramIds,
      required final List<int> teacherIds,
      required final List<int> classRoomIds,
      required final List<String> studyProgramNames,
      required final List<String> teacherNames,
      required final List<String> classRoomNames}) = _$TimetableEventImpl;

  factory _TimetableEvent.fromJson(Map<String, dynamic> json) =
      _$TimetableEventImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @DateTimeSerializer()
  DateTime get startDate;
  @override
  @DateTimeSerializer()
  DateTime get endDate;
  @override
  List<int> get studyProgramIds;
  @override
  List<int> get teacherIds;
  @override
  List<int> get classRoomIds;
  @override
  List<String> get studyProgramNames;
  @override
  List<String> get teacherNames;
  @override
  List<String> get classRoomNames;
  @override
  @JsonKey(ignore: true)
  _$$TimetableEventImplCopyWith<_$TimetableEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
