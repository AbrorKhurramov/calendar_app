part of 'calendar_cubit.dart';

@freezed
class CalendarState with _$CalendarState{
  const factory CalendarState({
    @Default(StateStatus.initial) StateStatus stateStatus,
    @Default([]) List<ColorsResponse> colors,
    @Default({}) Map<int, Color> coloredMap,

    MonthResponse? monthResponse

  }) = _CalendarState;
}
