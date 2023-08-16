import 'package:calendar_app/core/enum/state_status.dart';
import 'package:calendar_app/cubit/calendar/calendar_cubit.dart';
import 'package:calendar_app/di/get_it.dart';
import 'package:calendar_app/ui/calendar/widgets/custom_calendar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/theme/size_constants.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Calendar Example'),
      ),
      body: BlocProvider(
        create: (context) => getItInstance<CalendarCubit>(),
        child: BlocBuilder<CalendarCubit, CalendarState>(
          builder: (context, state) {
            return  Center(
              child:state.stateStatus!=StateStatus.loading? Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16),
                child: CustomCalendar(
                  year: state.monthResponse?.year?.toInt()??DateTime.now().year,
                  month: int.parse(state.monthResponse?.month??""),
                  coloredDays:state.coloredMap,
                  dayTypes: state.monthResponse?.days??[],
                  onDateTap: (int day,int type){
                    if(type>0) {
                      Fluttertoast.showToast(
                        msg: "Date: $day.${state.monthResponse!.month}.${state.monthResponse!.year}, Type: $type",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: Sizes.dimen_16
                    );
                    }
                  },
                ),
              ):const CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
