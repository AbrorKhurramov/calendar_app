import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

import '../core/theme/theme.dart';

class NavigationRoute {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? replaceNavigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState?.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic>? clearNavigateTo(String routeName) {
    return navigatorKey.currentState?.pushReplacementNamed(routeName);
  }

  Future<dynamic>? clearNavigateUntilTo(String routeName) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(routeName, (route) => route.isFirst);
  }

  Future<dynamic>? clearNavigateAll(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(routeName, (route) => false, arguments: arguments);
  }

  Future<dynamic>? navigateTo(String routeName, {dynamic arguments}) async {
    return await navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  goBack({dynamic result}) {
    return navigatorKey.currentState!.pop(result);
  }


}
