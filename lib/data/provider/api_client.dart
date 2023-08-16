import 'dart:io';
import 'package:calendar_app/domain/entity/response/colors_response.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../core/constants/constants.dart';
import '../../core/dio_retry/retry_interceptor.dart';
import '../../domain/data_source/local_data_source.dart';
import '../../domain/entity/response/month_response.dart';
import '../../routes/navigation_route.dart';
import 'error_handler_interceptor.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(
      NavigationRoute navigation, LocalDataSource dataSource, String baseUrl) {
    Dio dio = Dio(BaseOptions(followRedirects: false));
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          requestHeader: true,
          request: true,
          error: true,
          responseHeader: true,
        ),
      );
    }
    dio.options = BaseOptions(
      receiveTimeout: const Duration(milliseconds: Constants.dioTimeOut),
      connectTimeout: const Duration(milliseconds: Constants.dioTimeOut),
      sendTimeout: const Duration(milliseconds: Constants.dioTimeOut),
    );

    dio.interceptors.addAll([
      RetryInterceptor(
        dio: dio,
        logPrint: (error) async {},
        toNoInternetPageNavigator: () async {

        },
        refreshTokenFunction:() async{}, //AppFunctions.refreshToken,
        accessTokenGetter: () => ""//dataSource.getAccessToken(),
      ),
      ErrorHandlerInterceptor(navigation: navigation,dataSource: dataSource),
    ]);

    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @GET('b/92TT')
  Future<MonthResponse> getMonthSpecs();

  @GET('b/I86U')
  Future<List<ColorsResponse>> getColors();



}
