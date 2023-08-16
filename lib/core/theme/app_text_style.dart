import 'package:flutter/material.dart';

import 'theme.dart';

class AppTextStyle {
  AppTextStyle._();
  static const fontMulish = 'Mulish';
  static const fontRaleway = 'Raleway';
  static const fontSourceCodePro = 'SourceCodePro';
  static const fontRoboto = 'Roboto';

  static const appBarTitle = TextStyle(
    fontFamily: fontMulish,
    color: AppColor.assets,
    fontSize: Sizes.dimen_15,
    height: Sizes.fontHeight3,
    fontWeight: FontWeight.w600,
  );

  static const style300font14 = TextStyle(
      color: AppColor.assets,
      fontFamily: fontMulish,
      fontWeight: FontWeight.w300,
      fontSize: Sizes.dimen_14,
      height: Sizes.fontHeight3);

  static const style900font10 = TextStyle(
      color: AppColor.skyBlue1,
      fontFamily: fontMulish,
      fontWeight: FontWeight.w900,
      fontSize: Sizes.dimen_10);
  static const style700font16 = TextStyle(
      color: AppColor.black2,
      fontFamily: fontMulish,
      fontWeight: FontWeight.w700,
      fontSize: Sizes.dimen_16,
    height: Sizes.fontHeight5
  );

  static const style400font24 = TextStyle(
      fontFamily: fontMulish,
      color: AppColor.black2,
      fontWeight: FontWeight.w400,
      fontSize: Sizes.dimen_24,
      height: Sizes.fontHeight3);

static const codeStyle500font14 = TextStyle(
      fontFamily: fontSourceCodePro,
      color: AppColor.white,
      fontWeight: FontWeight.w500,
      fontSize: Sizes.dimen_14,
      height: 20/14);
}
