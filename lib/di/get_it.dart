import 'package:calendar_app/cubit/calendar/calendar_cubit.dart';
import 'package:get_it/get_it.dart';
import '../core/constants/constants.dart';
import '../core/functions/base_functions.dart';
import '../data/local_data_source/local_data_source_impl.dart';
import '../data/local_data_source/mock_local_data_source_impl.dart';
import '../data/provider/api_client.dart';
import '../data/provider/mock_api_client.dart';
import '../data/repository/auth_repository_impl.dart';
import '../data/repository/main_repository_impl.dart';
import '../domain/data_source/local_data_source.dart';
import '../domain/data_source/remote_data_source.dart';
import '../domain/repository/auth_repository.dart';
import '../domain/repository/main_repository.dart';
import '../routes/navigation_route.dart';

final getItInstance = GetIt.I;

init() {
  getItInstance.registerLazySingleton<NavigationRoute>(
    () => NavigationRoute(),
  );

  getItInstance.registerLazySingleton<LocalDataSource>(
    () => BaseFunctions.noTestEnvironment ? LocalDataSourceImpl() : MockLocalDataSourceImpl(),
  );

  getItInstance.registerLazySingleton<ApiClient>(
    () => ApiClient(
      getItInstance<NavigationRoute>(),
      getItInstance<LocalDataSource>(),
      Constants.baseUrl,
    ),
  );

  getItInstance.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      BaseFunctions.noTestEnvironment ? getItInstance<ApiClient>() : MockApiClient(),
    ),
  );

  getItInstance.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      getItInstance<RemoteDataSource>(),
      getItInstance<LocalDataSource>(),
    ),
  );

  getItInstance.registerLazySingleton<MainRepository>(
        () => MainRepositoryImpl(
      getItInstance<RemoteDataSource>(),
      getItInstance<LocalDataSource>(),
    ),
  );
 getItInstance.registerLazySingleton<CalendarCubit>(
        () => CalendarCubit(
      getItInstance<NavigationRoute>(),
      getItInstance<MainRepository>(),
    ),
  );




}
