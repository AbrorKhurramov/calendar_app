
import '../../domain/data_source/local_data_source.dart';
import '../../domain/data_source/remote_data_source.dart';
import '../../domain/repository/main_repository.dart';

class MainRepositoryImpl with MainRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  MainRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future getColors() async{
    final response = await _remoteDataSource.getColors();
    if (response.data != null) {
      return response.data;
    }
    return response.getException()?.getErrorMessage();

  }

  @override
  Future getMonthSpecs() async{
    final response = await _remoteDataSource.getMonthSpecs();
    if (response.data != null) {
      return response.data;
    }
    return response.getException()?.getErrorMessage();
  }




}
