import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const primary = Color(0xffFFFFFF);
  static const primaryBg = Color.fromRGBO(234, 233, 231, 1);
  static const textFieldLoadingBg = Color.fromRGBO(222, 220, 215, 1);
  static const chatBorderColor = Color.fromRGBO(255, 92, 0, 1);
  static const chatLineColor = Color.fromRGBO(222, 222, 216, 1);
  static const secondary = Color.fromRGBO(245, 245, 244, 1);
  static const appbarBorder = Color(0xffDEDED8);
  static const Color c80000 = Color(0xFF9A9A9A);
  static const tertiary = Color.fromRGBO(220, 218, 214, 1);
  static const assets = Color.fromRGBO(146, 146, 146, 1);
  static const assets1 = Color.fromRGBO(192, 192, 194, 1);
  static const dotColor = Color.fromRGBO(207, 205, 199, 1);
  static const dot1Color = Color.fromRGBO(217, 217, 217, 1);
  static const blue1 = Color.fromRGBO(0, 11, 121, 0.25);
  static const blue2 = Color.fromRGBO(40, 88, 255, 1);
  static const skyBlue = Color.fromRGBO(195, 216, 235, 1);
  static const skyBlue1 = Color.fromRGBO(66, 137, 203, 1);
  static const black = Color(0xFF000000);
  static const grey = Color(0xffE0E0E0);
  static const black1 = Color(0xFF020418);
  static const black2 = Color.fromRGBO(20, 25, 32, 1);
  static const black5 = Color(0xFF929292);
  static const black4 = Color.fromRGBO(10, 12, 19, 1);
  static const Color c40000 = Color(0xFFE8EAF2);
  static const black3 = Color.fromRGBO(44, 48, 55, 1);
  static const black015 = Color.fromRGBO(40, 42, 59, 1);
  static const black005 = Color(0x0d000000);
  static const black007 = Color(0xffdeded8);
  static const orange004 = Color.fromRGBO(255, 92, 0, 0.4);
  static const white = Color(0xffFFFFFF);
  static const white06 = Color.fromRGBO(255, 255, 255, 0.6);
  static const green = Color.fromRGBO(0, 190, 42, 1);
  static const white025 = Color.fromRGBO(255, 255, 255, 0.25);
  static const black03 = Color.fromRGBO(0, 0, 0, 0.3);
  static const white015 = Color.fromRGBO(255, 255, 255, 0.15);
  static const red = Color.fromRGBO(246, 54, 54, 1);
  static const redLight = Color.fromRGBO(255, 236, 232, 1);
  static const transparent = Colors.transparent;

  static const chatQuestionBackGradient = LinearGradient(colors: [Color.fromRGBO(248, 239, 255, 1),
    Color.fromRGBO(238, 219, 255, 1)]);

  static defaultCardGradient() {
    return LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Colors.white.withOpacity(0),
        Colors.white.withOpacity(1),
      ],
    );
  }

  //dark mode
  static const darkBackground = Color(0xff121212);
}
