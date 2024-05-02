// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_refresh_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableRefreshEvent _$TimetableRefreshEventFromJson(
    Map<String, dynamic> json) {
  return _TimetableRefreshEvent.fromJson(json);
}

/// @nodoc
mixin _$TimetableRefreshEvent {
  @DateTimeSerializer()
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<TimetableEvent> get newTimetableEvents =>
      throw _privateConstructorUsedError;
  List<TimetableEvent> get removedTimetableEvents =>
      throw _privateConstructorUsedError;
  TimetableKey get timetableKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableRefreshEventCopyWith<TimetableRefreshEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableRefreshEventCopyWith<$Res> {
  factory $TimetableRefreshEventCopyWith(TimetableRefreshEvent value,
          $Res Function(TimetableRefreshEvent) then) =
      _$TimetableRefreshEventCopyWithImpl<$Res, TimetableRefreshEvent>;
  @useResult
  $Res call(
      {@DateTimeSerializer() DateTime timestamp,
      List<TimetableEvent> newTimetableEvents,
      List<TimetableEvent> removedTimetableEvents,
      TimetableKey timetableKey});

  $TimetableKeyCopyWith<$Res> get timetableKey;
}

/// @nodoc
class _$TimetableRefreshEventCopyWithImpl<$Res,
        $Val extends TimetableRefreshEvent>
    implements $TimetableRefreshEventCopyWith<$Res> {
  _$TimetableRefreshEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? newTimetableEvents = null,
    Object? removedTimetableEvents = null,
    Object? timetableKey = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      newTimetableEvents: null == newTimetableEvents
          ? _value.newTimetableEvents
          : newTimetableEvents // ignore: cast_nullable_to_non_nullable
              as List<TimetableEvent>,
      removedTimetableEvents: null == removedTimetableEvents
          ? _value.removedTimetableEvents
          : removedTimetableEvents // ignore: cast_nullable_to_non_nullable
              as List<TimetableEvent>,
      timetableKey: null == timetableKey
          ? _value.timetableKey
          : timetableKey // ignore: cast_nullable_to_non_nullable
              as TimetableKey,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimetableKeyCopyWith<$Res> get timetableKey {
    return $TimetableKeyCopyWith<$Res>(_value.timetableKey, (value) {
      return _then(_value.copyWith(timetableKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimetableRefreshEventImplCopyWith<$Res>
    implements $TimetableRefreshEventCopyWith<$Res> {
  factory _$$TimetableRefreshEventImplCopyWith(
          _$TimetableRefreshEventImpl value,
          $Res Function(_$TimetableRefreshEventImpl) then) =
      __$$TimetableRefreshEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeSerializer() DateTime timestamp,
      List<TimetableEvent> newTimetableEvents,
      List<TimetableEvent> removedTimetableEvents,
      TimetableKey timetableKey});

  @override
  $TimetableKeyCopyWith<$Res> get timetableKey;
}

/// @nodoc
class __$$TimetableRefreshEventImplCopyWithImpl<$Res>
    extends _$TimetableRefreshEventCopyWithImpl<$Res,
        _$TimetableRefreshEventImpl>
    implements _$$TimetableRefreshEventImplCopyWith<$Res> {
  __$$TimetableRefreshEventImplCopyWithImpl(_$TimetableRefreshEventImpl _value,
      $Res Function(_$TimetableRefreshEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? newTimetableEvents = null,
    Object? removedTimetableEvents = null,
    Object? timetableKey = null,
  }) {
    return _then(_$TimetableRefreshEventImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      newTimetableEvents: null == newTimetableEvents
          ? _value._newTimetableEvents
          : newTimetableEvents // ignore: cast_nullable_to_non_nullable
              as List<TimetableEvent>,
      removedTimetableEvents: null == removedTimetableEvents
          ? _value._removedTimetableEvents
          : removedTimetableEvents // ignore: cast_nullable_to_non_nullable
              as List<TimetableEvent>,
      timetableKey: null == timetableKey
          ? _value.timetableKey
          : timetableKey // ignore: cast_nullable_to_non_nullable
              as TimetableKey,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableRefreshEventImpl implements _TimetableRefreshEvent {
  const _$TimetableRefreshEventImpl(
      {@DateTimeSerializer() required this.timestamp,
      required final List<TimetableEvent> newTimetableEvents,
      required final List<TimetableEvent> removedTimetableEvents,
      required this.timetableKey})
      : _newTimetableEvents = newTimetableEvents,
        _removedTimetableEvents = removedTimetableEvents;

  factory _$TimetableRefreshEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableRefreshEventImplFromJson(json);

  @override
  @DateTimeSerializer()
  final DateTime timestamp;
  final List<TimetableEvent> _newTimetableEvents;
  @override
  List<TimetableEvent> get newTimetableEvents {
    if (_newTimetableEvents is EqualUnmodifiableListView)
      return _newTimetableEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newTimetableEvents);
  }

  final List<TimetableEvent> _removedTimetableEvents;
  @override
  List<TimetableEvent> get removedTimetableEvents {
    if (_removedTimetableEvents is EqualUnmodifiableListView)
      return _removedTimetableEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_removedTimetableEvents);
  }

  @override
  final TimetableKey timetableKey;

  @override
  String toString() {
    return 'TimetableRefreshEvent(timestamp: $timestamp, newTimetableEvents: $newTimetableEvents, removedTimetableEvents: $removedTimetableEvents, timetableKey: $timetableKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableRefreshEventImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._newTimetableEvents, _newTimetableEvents) &&
            const DeepCollectionEquality().equals(
                other._removedTimetableEvents, _removedTimetableEvents) &&
            (identical(other.timetableKey, timetableKey) ||
                other.timetableKey == timetableKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      const DeepCollectionEquality().hash(_newTimetableEvents),
      const DeepCollectionEquality().hash(_removedTimetableEvents),
      timetableKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableRefreshEventImplCopyWith<_$TimetableRefreshEventImpl>
      get copyWith => __$$TimetableRefreshEventImplCopyWithImpl<
          _$TimetableRefreshEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableRefreshEventImplToJson(
      this,
    );
  }
}

abstract class _TimetableRefreshEvent implements TimetableRefreshEvent {
  const factory _TimetableRefreshEvent(
      {@DateTimeSerializer() required final DateTime timestamp,
      required final List<TimetableEvent> newTimetableEvents,
      required final List<TimetableEvent> removedTimetableEvents,
      required final TimetableKey timetableKey}) = _$TimetableRefreshEventImpl;

  factory _TimetableRefreshEvent.fromJson(Map<String, dynamic> json) =
      _$TimetableRefreshEventImpl.fromJson;

  @override
  @DateTimeSerializer()
  DateTime get timestamp;
  @override
  List<TimetableEvent> get newTimetableEvents;
  @override
  List<TimetableEvent> get removedTimetableEvents;
  @override
  TimetableKey get timetableKey;
  @override
  @JsonKey(ignore: true)
  _$$TimetableRefreshEventImplCopyWith<_$TimetableRefreshEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
