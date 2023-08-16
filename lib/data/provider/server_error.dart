import 'package:dio/dio.dart' hide Headers;

class ServerError implements Exception {
  int? _errorCode;
  String _errorMessage = "";

  ServerError.withError({DioError? error}) {
    _handleError(error);
  }

  int getErrorCode() => _errorCode??500;

  String getErrorMessage() => _errorMessage;

  _handleError(DioError? error) {
    _errorCode = error?.response?.statusCode ?? 500;
    switch (error!.type) {
      case DioErrorType.connectionTimeout:
        _errorMessage = "LocaleKeys.noConnection.tr()";
        break;
      case DioErrorType.sendTimeout:
        _errorMessage =" LocaleKeys.noConnection.tr()";
        break;
        case DioErrorType.connectionError:
        _errorMessage ="LocaleKeys.connectionError.tr()";
        break;
      case DioErrorType.receiveTimeout:
        _errorMessage = "LocaleKeys.noConnection.tr()";
        break;
        case DioErrorType.badCertificate:
        _errorMessage = "LocaleKeys.badCertificate.tr()";
        break;
      case DioErrorType.badResponse:
        {
          if(_errorCode==401){
            _errorMessage = "Unathorized";
          }
          else {
            _errorMessage = error.response?.data['message'].toString()??"LocaleKeys.somethingWrong";
          }
          break;
        }
      case DioErrorType.cancel:
        _errorMessage = "LocaleKeys.canceledRequest.tr()";
        break;
      case DioErrorType.unknown:
        _errorMessage = "LocaleKeys.somethingWrong.tr()";
        break;
    }
    return _errorMessage;
  }
}
