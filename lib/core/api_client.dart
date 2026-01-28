import 'dart:async';
import 'dart:developer';

import 'package:irondesk/core/endpoints.dart';
import 'package:irondesk/core/exceptions.dart';
import 'package:irondesk/services/pref_keys.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  static const String TOP_HEADLINES = 'top-headlines';

  final Dio dio;
  Completer<void>? _refreshCompleter;

  ApiClient({required this.dio}) {
    dio.options.connectTimeout = const Duration(minutes: 3);
    dio.options.receiveTimeout = const Duration(minutes: 3);
    dio.options.baseUrl = EndPoints.baseUrl;
    // if (Environment.value.environmentType != EnvType.PRODUCTION) {
    //   dio.interceptors.add(
    //     PrettyDioLogger(
    //       requestHeader: true,
    //       requestBody: true,
    //       responseHeader: true,
    //       responseBody: false,
    //     ),
    //   );
    // }
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        logPrint: (obj) => debugPrint(obj.toString()),
      ),
    );
    //TODO yet to verify
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final accessToken =
              SharedPreferenceService.getValue(PrefKeys.accessToken.name) ?? "";

          options.headers['Authorization'] = 'Bearer $accessToken';
          log("method: ${options.method}");
          log("Request: ${options.baseUrl}${options.path}");
          log("Headers: ${options.headers}");
          log("Body: ${options.data}");

          return handler.next(options);
        },
        onError: (DioError e, handler) async {
          final statusCode = e.response?.statusCode ?? 0;
          if (statusCode == 401 || statusCode == 403) {
            try {
              // Wait for token refresh
              final newToken = await _refreshToken();

              if (newToken.isNotEmpty) {
                // Retry original request with new token
                final RequestOptions options = e.requestOptions;
                options.headers['Authorization'] = 'Bearer $newToken';

                final response = await dio.request(
                  options.path,
                  options: Options(
                    method: options.method,
                    headers: options.headers,
                  ),
                  data: options.data,
                  queryParameters: options.queryParameters,
                );
                return handler.resolve(response);
              }
            } catch (err) {
              // Refresh failed
              return handler.reject(e);
            }
          }

          return handler.next(e);
        },
      ),
    );
  }

  //------------------------------new refresh token generation-------------------//

  Future<String> _refreshToken() async {
    // If already refreshing, wait
    if (_refreshCompleter != null) {
      await _refreshCompleter!.future;
      return SharedPreferenceService.getValue(PrefKeys.accessToken.name) ?? '';
    }

    _refreshCompleter = Completer();

    try {
      final response = await post(
        endPoint: EndPoints.generateNewToken,
        payload: {
          "refreshToken":
              SharedPreferenceService.getValue(PrefKeys.refreshToken.name) ?? '',
        },
      );

      final code = response.statusCode ?? 0;
      if (code >= 200 && code < 300) {
        final data = response.data?["data"] as Map<String, dynamic>;

        final String accessToken = data['access']["token"] ?? '';
        final String refreshToken = data['refresh']["token"] ?? '';

        if (accessToken.isNotEmpty) {
          SharedPreferenceService.setValue(PrefKeys.accessToken.name, accessToken);
        }

        if (refreshToken.isNotEmpty) {
          SharedPreferenceService.setValue(PrefKeys.refreshToken.name, refreshToken);
        }

        _refreshCompleter?.complete();
        _refreshCompleter = null;

        return accessToken;
      } else {
        throw ApiException("Failed to refresh token");
      }
    } catch (e) {
      _refreshCompleter?.complete(); // Ensure completion even on failure
      _refreshCompleter = null;
      rethrow;
    }
  }

  Future<Response<Map<String, dynamic>>> post({
    required String endPoint,
    dynamic payload,
  }) async {
    try {
      return await dio.post(endPoint, data: payload);
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException.handleDioError(e);
    } catch (e) {
      throw ApiException("Something went wrong,try again letter");
    }
  }

  Future<Response<Map<String, dynamic>>> patch(
    String path,
    dynamic data,
  ) async {
    try {
      // log("the full data is " + data.toString());
      // log(dio.options.headers[]);
      log("the path is $path");
      return await dio.patch(path, data: data);
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> put(String path, dynamic data) async {
    try {
      return await dio.put(path, data: data);
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> delete(
    String path,
    Object data,
  ) async {
    try {
      return await dio.delete(path, data: data);
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> get(
    String path, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      return await dio.get(path, queryParameters: queryParams);
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException.handleDioError(e);
    } catch (e) {
      throw ApiException("Something went wrong,try again letter");
    }
  }
}

class MultiPartClient extends http.BaseClient {
  final http.Client _httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.persistentConnection = false;

    request.headers["Content-Type"] = "application/json";
    print(request.headers);

    print(request.url);
    // Future<http.StreamedResponse> response = _httpClient.send(request);
    // alice.onHttpClientRequest(request.)
    // debugPrint(request.url.toString());
    // alice.onHttpResponse(await http.Response.fromStream(await response));
    return _httpClient.send(request);
  }
}
