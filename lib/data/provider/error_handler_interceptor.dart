import 'package:dio/dio.dart';
import '../../core/constants/constants.dart';
import '../../domain/data_source/local_data_source.dart';
import '../../routes/app_routes.dart';
import '../../routes/navigation_route.dart';

class ErrorHandlerInterceptor extends Interceptor {
  NavigationRoute navigation;
  LocalDataSource dataSource;

  ErrorHandlerInterceptor({required this.navigation,required this.dataSource});

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if(err.response?.statusCode==401){
     // dataSource.logout();
      navigation.clearNavigateAll(Routes.main);
    }
   else if(err.response?.headers.toString().contains(Constants.html) == true){
      handler.resolve(Response(requestOptions: RequestOptions(path: ''), data: err));
      return handler.next(err);  // <--- THE TIP IS HERE
    }
    super.onError(err, handler);
  }
}