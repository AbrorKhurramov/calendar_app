import 'package:calendar_app/ui/calendar/calendar_screen.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
    Routes.main: (_) =>   const CalendarScreen(),
  };
}
