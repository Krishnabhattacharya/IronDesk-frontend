import 'package:dio/dio.dart';

class CacheException implements Exception {}

class ApiException implements Exception {
  final String message;

  ApiException([this.message = ""]);
  @override
  String toString() {
    final Object message = this.message;
    return "$message";
  }

  static ApiException handleDioError(DioException e) {
    String errorMessage;
    if (e.response != null &&
        e.response!.data != null &&
        e.response!.data["message"] != null) {
      errorMessage = e.response!.data["message"].toString();
    } else {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          errorMessage = 'Connection Timeout: week internet connection.';
          break;
        case DioExceptionType.sendTimeout:
          errorMessage = 'Send Timeout: Request took too long to send.';
          break;
        case DioExceptionType.receiveTimeout:
          errorMessage = 'Receive Timeout: Server took too long to respond.';
          break;
        case DioExceptionType.badResponse:
          errorMessage = 'Bad Response: Try again letter';
          break;
        case DioExceptionType.cancel:
          errorMessage = 'Request Cancelled: Try again letter';
          break;
        case DioExceptionType.unknown:
          errorMessage = 'No Internet Connection or Unknown Error';
          break;
        case DioExceptionType.connectionError:
          errorMessage = 'No Internet Connection';
          break;
        default:
          errorMessage = 'Something went wrong';
          break;
      }
    }

    return ApiException(errorMessage);
  }
}

class BadNetworkException implements Exception {}

class InternalServerException implements Exception {}

class UnauthenticatedException implements Exception {}

class ApiErrorMessageException implements Exception {
  final String? errorMessage;

  ApiErrorMessageException({required this.errorMessage});
}
