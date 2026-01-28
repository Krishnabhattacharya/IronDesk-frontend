import 'dart:developer';

import 'package:irondesk/services/pref_keys.dart';

import '../core/core.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;
  AuthInterceptor(this.dio);

  final String date = DateFormat('yyyy-MM-dd').format(DateTime.now());
  String accessToken =
      SharedPreferenceService.getValue(PrefKeys.accessToken.name) ?? "None";
  String refreshToken =
      SharedPreferenceService.getValue(PrefKeys.refreshToken.name) ?? "None";
  bool _isRefreshing = false;
  final List<Future<void> Function()> _retryQueue = [];

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer $accessToken';
    options.headers['Date'] = date;
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Check if the error is due to token expiration (401)
    if (err.response?.statusCode == 401 && !_isRefreshing) {
      try {
        _isRefreshing = true;

        // Refresh token
        await _refreshToken();

        // Retry failed requests after refreshing the token
        for (final retry in _retryQueue) {
          await retry();
        }
        _retryQueue.clear();
        _isRefreshing = false;
        handler.resolve(await _retryRequest(err.requestOptions));
      } catch (e) {
        _isRefreshing = false;
        handler.reject(err); // If refresh fails, reject the request
      }
    } else if (err.response?.statusCode == 401 && _isRefreshing) {
      // Queue the failed request until the token is refreshed
      Future<dynamic> retryRequest() async {
        return handler.resolve(await _retryRequest(err.requestOptions));
      }

      _retryQueue.add(retryRequest);
    } else {
      super.onError(err, handler);
    }
  }

  Future<void> _refreshToken() async {
    try {
      final response = await dio.post(
        '${AppConstants.baseUrl}/auth/refresh-tokens',
        data: {'refreshToken': refreshToken},
      );

      if (response.statusCode == 200) {
        accessToken = response.data['access'];
        refreshToken = response.data['refreshToken'];
      } else {
        throw Exception('Failed to refresh token');
      }
    } catch (e) {
      throw Exception('Failed to refresh token');
    }
  }

  Future<Response<dynamic>> _retryRequest(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer $accessToken',
      },
    );
    return dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}

class ApiInterceptor extends Interceptor {
  ApiInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Upgrader(context).init();
    log("API request triggered: ${options.uri}");
    super.onRequest(options, handler); // Continue with the request
  }
}
