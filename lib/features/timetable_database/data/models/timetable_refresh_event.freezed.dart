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
  TimetableWeekId get timetableWeekId => throw _privateConstructorUsedError;
  List<TimetableEvent> get timetableEvents =>
      throw _privateConstructorUsedError;

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
      {TimetableWeekId timetableWeekId, List<TimetableEvent> timetableEvents});

  $TimetableWeekIdCopyWith<$Res> get timetableWeekId;
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
    Object? timetableWeekId = null,
    Object? timetableEvents = null,
  }) {
    return _then(_value.copyWith(
      timetableWeekId: null == timetableWeekId
          ? _value.timetableWeekId
          : timetableWeekId // ignore: cast_nullable_to_non_nullable
              as TimetableWeekId,
      timetableEvents: null == timetableEvents
          ? _value.timetableEvents
          : timetableEvents // ignore: cast_nullable_to_non_nullable
              as List<TimetableEvent>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimetableWeekIdCopyWith<$Res> get timetableWeekId {
    return $TimetableWeekIdCopyWith<$Res>(_value.timetableWeekId, (value) {
      return _then(_value.copyWith(timetableWeekId: value) as $Val);
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
      {TimetableWeekId timetableWeekId, List<TimetableEvent> timetableEvents});

  @override
  $TimetableWeekIdCopyWith<$Res> get timetableWeekId;
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
    Object? timetableWeekId = null,
    Object? timetableEvents = null,
  }) {
    return _then(_$TimetableRefreshEventImpl(
      timetableWeekId: null == timetableWeekId
          ? _value.timetableWeekId
          : timetableWeekId // ignore: cast_nullable_to_non_nullable
              as TimetableWeekId,
      timetableEvents: null == timetableEvents
          ? _value._timetableEvents
          : timetableEvents // ignore: cast_nullable_to_non_nullable
              as List<TimetableEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableRefreshEventImpl implements _TimetableRefreshEvent {
  const _$TimetableRefreshEventImpl(
      {required this.timetableWeekId,
      required final List<TimetableEvent> timetableEvents})
      : _timetableEvents = timetableEvents;

  factory _$TimetableRefreshEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableRefreshEventImplFromJson(json);

  @override
  final TimetableWeekId timetableWeekId;
  final List<TimetableEvent> _timetableEvents;
  @override
  List<TimetableEvent> get timetableEvents {
    if (_timetableEvents is EqualUnmodifiableListView) return _timetableEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timetableEvents);
  }

  @override
  String toString() {
    return 'TimetableRefreshEvent(timetableWeekId: $timetableWeekId, timetableEvents: $timetableEvents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableRefreshEventImpl &&
            (identical(other.timetableWeekId, timetableWeekId) ||
                other.timetableWeekId == timetableWeekId) &&
            const DeepCollectionEquality()
                .equals(other._timetableEvents, _timetableEvents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timetableWeekId,
      const DeepCollectionEquality().hash(_timetableEvents));

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
          {required final TimetableWeekId timetableWeekId,
          required final List<TimetableEvent> timetableEvents}) =
      _$TimetableRefreshEventImpl;

  factory _TimetableRefreshEvent.fromJson(Map<String, dynamic> json) =
      _$TimetableRefreshEventImpl.fromJson;

  @override
  TimetableWeekId get timetableWeekId;
  @override
  List<TimetableEvent> get timetableEvents;
  @override
  @JsonKey(ignore: true)
  _$$TimetableRefreshEventImplCopyWith<_$TimetableRefreshEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
