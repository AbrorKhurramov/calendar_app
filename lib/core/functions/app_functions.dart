
import 'package:flutter/cupertino.dart';

class AppFunctions {
  AppFunctions._();

  static double paddingTop(BuildContext context) => MediaQuery.of(context).padding.top;

  static double paddingBottom(BuildContext context) => MediaQuery.of(context).padding.bottom;

  static double width(BuildContext context) => MediaQuery.of(context).size.width;

  static double widthPercent(BuildContext context) => MediaQuery.of(context).size.width/375;
  static double heightPercent(BuildContext context) => MediaQuery.of(context).size.height/812;

  static double height(BuildContext context) => MediaQuery.of(context).size.height;

  static double height1Percent(BuildContext context) => MediaQuery.of(context).size.height/100;



  static void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }



  static double bottomNavigationHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom + 66;
  }

  // static Future<UpdateVersion?> checkVersion() async {
  //   final result = await getItInstance<RemoteDataSource>().checkVersion(
  //     appName: Platform.isAndroid ? Constants.androidApp : Constants.iosApp,
  //   );
  //   if (result.data is UpdateVersionResponse) {
  //     return result.data?.data;
  //   } else {
  //     getItInstance<NavigationRoute>().showError(LocaleKeys.somethingWrong.tr());
  //     return null;
  //   }
  // }

//   static Future<void> refreshToken() async {
// final localDataSource = getItInstance<LocalDataSource>();
// debugPrint("REFRESH TOKEN");
//     final response
//     = await getItInstance<RemoteDataSource>().refreshToken(
//    refreshToken:   localDataSource.getRefreshToken()
//     );
//     if (response.data is RefreshTokenResponse) {
//       await Future.wait ([
//         localDataSource.setAccessToken("Bearer ${response.data?.accessToken}"),
//       ]);
//     }
//   }

  static double getImageBottomSheetHeight(BuildContext context) {
    return height(context) * 0.65;
  }

  static double getBottomSheetImageWidth(BuildContext context) {
    return (AppFunctions.width(context) - 48) / 3;
  }

  static double getBottomSheetImageHeight(BuildContext context) {
    return getBottomSheetImageWidth(context) + 10;
  }

  static double getBusItemTypeHeight(BuildContext context) {
    return (width(context) - 32) / 2.4;
  }

  static double getTrainItemTypeHeight(BuildContext context) {
    return (width(context) - 32) / 2.4;
  }
}
