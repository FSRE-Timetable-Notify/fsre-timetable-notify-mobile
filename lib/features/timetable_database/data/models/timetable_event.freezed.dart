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
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  List<int> get teacherIds => throw _privateConstructorUsedError;
  List<int> get classRoomIds => throw _privateConstructorUsedError;
  List<int> get classIds => throw _privateConstructorUsedError;

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
      DateTime startDate,
      DateTime endDate,
      List<int> teacherIds,
      List<int> classRoomIds,
      List<int> classIds});
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
    Object? teacherIds = null,
    Object? classRoomIds = null,
    Object? classIds = null,
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
      teacherIds: null == teacherIds
          ? _value.teacherIds
          : teacherIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      classRoomIds: null == classRoomIds
          ? _value.classRoomIds
          : classRoomIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      classIds: null == classIds
          ? _value.classIds
          : classIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
      DateTime startDate,
      DateTime endDate,
      List<int> teacherIds,
      List<int> classRoomIds,
      List<int> classIds});
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
    Object? teacherIds = null,
    Object? classRoomIds = null,
    Object? classIds = null,
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
      teacherIds: null == teacherIds
          ? _value._teacherIds
          : teacherIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      classRoomIds: null == classRoomIds
          ? _value._classRoomIds
          : classRoomIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      classIds: null == classIds
          ? _value._classIds
          : classIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableEventImpl implements _TimetableEvent {
  const _$TimetableEventImpl(
      {required this.id,
      required this.name,
      required this.startDate,
      required this.endDate,
      required final List<int> teacherIds,
      required final List<int> classRoomIds,
      required final List<int> classIds})
      : _teacherIds = teacherIds,
        _classRoomIds = classRoomIds,
        _classIds = classIds;

  factory _$TimetableEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableEventImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
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

  final List<int> _classIds;
  @override
  List<int> get classIds {
    if (_classIds is EqualUnmodifiableListView) return _classIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classIds);
  }

  @override
  String toString() {
    return 'TimetableEvent(id: $id, name: $name, startDate: $startDate, endDate: $endDate, teacherIds: $teacherIds, classRoomIds: $classRoomIds, classIds: $classIds)';
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
                .equals(other._teacherIds, _teacherIds) &&
            const DeepCollectionEquality()
                .equals(other._classRoomIds, _classRoomIds) &&
            const DeepCollectionEquality().equals(other._classIds, _classIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_teacherIds),
      const DeepCollectionEquality().hash(_classRoomIds),
      const DeepCollectionEquality().hash(_classIds));

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
      required final DateTime startDate,
      required final DateTime endDate,
      required final List<int> teacherIds,
      required final List<int> classRoomIds,
      required final List<int> classIds}) = _$TimetableEventImpl;

  factory _TimetableEvent.fromJson(Map<String, dynamic> json) =
      _$TimetableEventImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  List<int> get teacherIds;
  @override
  List<int> get classRoomIds;
  @override
  List<int> get classIds;
  @override
  @JsonKey(ignore: true)
  _$$TimetableEventImplCopyWith<_$TimetableEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
