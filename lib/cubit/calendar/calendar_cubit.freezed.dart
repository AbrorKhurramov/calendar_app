// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<ColorsResponse> get colors => throw _privateConstructorUsedError;
  Map<int, Color> get coloredMap => throw _privateConstructorUsedError;
  MonthResponse? get monthResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<ColorsResponse> colors,
      Map<int, Color> coloredMap,
      MonthResponse? monthResponse});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? colors = null,
    Object? coloredMap = null,
    Object? monthResponse = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorsResponse>,
      coloredMap: null == coloredMap
          ? _value.coloredMap
          : coloredMap // ignore: cast_nullable_to_non_nullable
              as Map<int, Color>,
      monthResponse: freezed == monthResponse
          ? _value.monthResponse
          : monthResponse // ignore: cast_nullable_to_non_nullable
              as MonthResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$_CalendarStateCopyWith(
          _$_CalendarState value, $Res Function(_$_CalendarState) then) =
      __$$_CalendarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<ColorsResponse> colors,
      Map<int, Color> coloredMap,
      MonthResponse? monthResponse});
}

/// @nodoc
class __$$_CalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_CalendarState>
    implements _$$_CalendarStateCopyWith<$Res> {
  __$$_CalendarStateCopyWithImpl(
      _$_CalendarState _value, $Res Function(_$_CalendarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? colors = null,
    Object? coloredMap = null,
    Object? monthResponse = freezed,
  }) {
    return _then(_$_CalendarState(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorsResponse>,
      coloredMap: null == coloredMap
          ? _value._coloredMap
          : coloredMap // ignore: cast_nullable_to_non_nullable
              as Map<int, Color>,
      monthResponse: freezed == monthResponse
          ? _value.monthResponse
          : monthResponse // ignore: cast_nullable_to_non_nullable
              as MonthResponse?,
    ));
  }
}

/// @nodoc

class _$_CalendarState implements _CalendarState {
  const _$_CalendarState(
      {this.stateStatus = StateStatus.initial,
      final List<ColorsResponse> colors = const [],
      final Map<int, Color> coloredMap = const {},
      this.monthResponse})
      : _colors = colors,
        _coloredMap = coloredMap;

  @override
  @JsonKey()
  final StateStatus stateStatus;
  final List<ColorsResponse> _colors;
  @override
  @JsonKey()
  List<ColorsResponse> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  final Map<int, Color> _coloredMap;
  @override
  @JsonKey()
  Map<int, Color> get coloredMap {
    if (_coloredMap is EqualUnmodifiableMapView) return _coloredMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_coloredMap);
  }

  @override
  final MonthResponse? monthResponse;

  @override
  String toString() {
    return 'CalendarState(stateStatus: $stateStatus, colors: $colors, coloredMap: $coloredMap, monthResponse: $monthResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarState &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality()
                .equals(other._coloredMap, _coloredMap) &&
            (identical(other.monthResponse, monthResponse) ||
                other.monthResponse == monthResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_coloredMap),
      monthResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarStateCopyWith<_$_CalendarState> get copyWith =>
      __$$_CalendarStateCopyWithImpl<_$_CalendarState>(this, _$identity);
}

abstract class _CalendarState implements CalendarState {
  const factory _CalendarState(
      {final StateStatus stateStatus,
      final List<ColorsResponse> colors,
      final Map<int, Color> coloredMap,
      final MonthResponse? monthResponse}) = _$_CalendarState;

  @override
  StateStatus get stateStatus;
  @override
  List<ColorsResponse> get colors;
  @override
  Map<int, Color> get coloredMap;
  @override
  MonthResponse? get monthResponse;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarStateCopyWith<_$_CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}
