import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'di/get_it.dart' as get_it;

import 'ui/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  get_it.init();
  runApp(const App());
}

