import 'package:flutter/material.dart';

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

extension GetColorScheme on BuildContext {
  ColorScheme color() => Theme.of(this).colorScheme;
}