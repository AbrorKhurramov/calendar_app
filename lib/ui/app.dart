import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/constants/constants.dart';
import '../di/get_it.dart';
import '../routes/app_pages.dart';
import '../routes/app_routes.dart';
import '../routes/navigation_route.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late NavigationRoute _navigationRoute;
  late String initialRoute;


  @override
  void initState() {
    _navigationRoute = getItInstance<NavigationRoute>();
    initialRoute = Routes.main;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, // optional
    ));
    super.initState();
  }






  @override
  Widget build(BuildContext context) {
    rebuildAllChildren(context);
    return MaterialApp(
      navigatorKey: _navigationRoute.navigatorKey,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      builder: (ctx, child) {
        return MediaQuery(
          data: MediaQuery.of(ctx).copyWith(
            textScaleFactor: Constants.textScaleFactor,
          ),
          child: child!,
        );
      },
      title: Constants.appName,
      initialRoute: initialRoute,
      onGenerateRoute: (RouteSettings settings) {
        final routes = AppPages.getRoutes(settings);
        final WidgetBuilder? builder = routes[settings.name];
        return CupertinoPageRoute(
          builder: builder!,
          settings: settings,
        );
      },
    );
  }

  void rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }
    (context as Element).visitChildren(rebuild);
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child,
      ScrollableDetails details) {
    return child;
  }
}