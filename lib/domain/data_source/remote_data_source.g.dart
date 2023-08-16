// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_data_source.dart';

// **************************************************************************
// SubclassGenerator
// **************************************************************************

class RemoteDataSourceImpl with RemoteDataSource {
  final ApiClient _apiClient;
  RemoteDataSourceImpl(this._apiClient);

  @override
  Future<ResponseHandler<MonthResponse>> getMonthSpecs() async {
    MonthResponse? response;
    try {
      response = await _apiClient.getMonthSpecs();
    } catch (error, stacktrace) {
      debugPrint("Exception occurred: $error stacktrace: $stacktrace");
      return ResponseHandler()
        ..setException(
          ServerError.withError(error: error as DioError),
        );
    }
    return ResponseHandler()..data = response;
  }
  @override
  Future<ResponseHandler<List<ColorsResponse>>> getColors() async {
    List<ColorsResponse>? response;
    try {
      response = await _apiClient.getColors();
    } catch (error, stacktrace) {
      debugPrint("Exception occurred: $error stacktrace: $stacktrace");
      return ResponseHandler()
        ..setException(
          ServerError.withError(error: error as DioError),
        );
    }
    return ResponseHandler()..data = response;
  }


}
