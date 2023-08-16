import 'package:calendar_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/theme/size_constants.dart';
import '../../../domain/entity/response/month_response.dart';

class CustomCalendar extends StatelessWidget {
  final int year;
  final int month;
  final Map<int, Color> coloredDays;
  final List<Days> dayTypes;
  final Function(int, int) onDateTap;

  const CustomCalendar({super.key, required this.year, required this.month, required this.coloredDays,required this.onDateTap,required this.dayTypes});

  List<Widget> _generateCalendarDays() {
    final List<Widget> calendarDays = [];
    final DateTime firstDayOfMonth = DateTime(year, month, 1);
    final DateFormat dayFormat = DateFormat('d');

    // Calculate the day of the week for the first day of the month
    final int firstDayOfWeek = (firstDayOfMonth.weekday + 6) % 7;

    // Generate the days of the week headers starting from Monday
    calendarDays.addAll([
      _buildWeekdayHeader('Mon'),
      _buildWeekdayHeader('Tue'),
      _buildWeekdayHeader('Wed'),
      _buildWeekdayHeader('Thu'),
      _buildWeekdayHeader('Fri'),
      _buildWeekdayHeader('Sat'),
      _buildWeekdayHeader('Sun', textColor: Colors.red),
    ]);

    // Generate the empty cells for the preceding days
    for (int i = 0; i < firstDayOfWeek; i++) {
      calendarDays.add(Container());
    }

    // Generate cells for each day in the month
    for (int day = 1; day <= DateTime(year, month + 1, 0).day; day++) {
      final DateTime currentDate = DateTime(year, month, day);
      Color cellColor = coloredDays[day] ?? Colors.transparent;
      TextStyle textStyle = TextStyle(
        color: cellColor == Colors.transparent ? Colors.black : Colors.white,
      );

      if (currentDate.weekday == 7) {
        textStyle = textStyle.copyWith(color: Colors.red);
      }

      calendarDays.add(
        InkWell(
          splashColor: AppColor.transparent,
          highlightColor: AppColor.transparent,
          onTap: (){
            final int type = _getTypeForDay(day);
            onDateTap(day, type);
          },
          child: Container(
           decoration: BoxDecoration(
             color: cellColor,
             shape: BoxShape.circle
           ),
            alignment: Alignment.center,
            child: Text(
              dayFormat.format(currentDate),
              style: textStyle,
            ),
          ),
        ),
      );
    }

    return calendarDays;
  }

  Widget _buildWeekdayHeader(String day, {Color textColor = Colors.black}) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        day,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }

  int _getTypeForDay(int day) {
    final coloredDay = dayTypes.firstWhere((coloredDay) => coloredDay.day == day, orElse: () => Days(day: day, type: -1));
    return coloredDay.type!.toInt();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        mainAxisSpacing: Sizes.dimen_8,
        crossAxisSpacing: Sizes.dimen_8,
      ),
      itemCount: _generateCalendarDays().length,
      itemBuilder: (BuildContext context, int index) {
        return _generateCalendarDays()[index];
      },
    );
  }
}
