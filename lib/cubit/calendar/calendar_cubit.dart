import 'dart:ui';

import 'package:calendar_app/core/enum/state_status.dart';
import 'package:calendar_app/core/theme/app_colors.dart';
import 'package:calendar_app/domain/entity/response/colors_response.dart';
import 'package:calendar_app/domain/entity/response/month_response.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repository/main_repository.dart';
import '../../routes/navigation_route.dart';


part 'calendar_state.dart';

part 'calendar_cubit.freezed.dart';


class CalendarCubit extends Cubit<CalendarState> {
  final NavigationRoute _navigationRoute;
  final MainRepository _repository;



  CalendarCubit(this._navigationRoute,this._repository) : super(const CalendarState()){
   getInitial();
  }


  Future<void> getInitial() async{
   await getMonthSpecs();
   await getColors();

  }


  Future<void> getMonthSpecs() async {
    emit(state.copyWith(stateStatus: StateStatus.loading));
    final result = await _repository.getMonthSpecs();
    if (result is MonthResponse) {
      emit(state.copyWith(stateStatus: StateStatus.success,monthResponse:result));
    } else {
      emit(state.copyWith(stateStatus: StateStatus.failure));
    }
  }
  Future<void> getColors() async {
    emit(state.copyWith(stateStatus: StateStatus.loading));
    final result = await _repository.getColors();
    if (result is List<ColorsResponse>) {

      Map<int, Color> coloredDays = {};
      state.monthResponse?.days?.forEach((element) {
        print(element.day!.toInt());
        coloredDays[element.day!.toInt()] = _getColorForType(element.type!, result);
      });

      emit(state.copyWith(stateStatus: StateStatus.success,colors: result,coloredMap: coloredDays));
      debugPrint("coloredDays");
      debugPrint(coloredDays.toString());

    } else {
      emit(state.copyWith(stateStatus: StateStatus.failure));
    }
  }


  Color _getColorForType(num type, List<ColorsResponse> colorData) {

    for (var element in colorData) {
      if(element.type==type) {
        return _parseColor(element.color!);
      }
    }
    return AppColor.transparent;


  }

  Color _parseColor(String hexColor) {
    return Color(int.parse(hexColor.replaceFirst('#', ''), radix: 16)).withOpacity(1.0);
  }




}
