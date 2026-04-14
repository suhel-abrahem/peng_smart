import 'package:dio/dio.dart';
import 'package:smart_home/core/network/token_manager.dart';

class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final TokenManager _tokenManager;

  AuthInterceptor(this._dio, this._tokenManager);

  bool _isRefreshing = false;
  Future<String?>? _refreshFuture;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final requiresAuth = options.extra["auth-free"] != true;

    if (requiresAuth) {
      final token = await _tokenManager.getValidToken();
      if (token != null && token.isNotEmpty) {
        options.headers["Authorization"] = "Bearer $token";
      }
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final int statusCode = err.response?.statusCode ?? 0;
    final requiresAuth = err.requestOptions.extra["auth-free"] != true;
    final isRetried = err.requestOptions.extra["retried"] == true;

    if (statusCode == 401 && requiresAuth && !isRetried) {
      try {
        if (!_isRefreshing) {
          _isRefreshing = true;
          _refreshFuture = _tokenManager.refreshToken(
            _tokenManager.appPreferences.getUserInfo()!,
          );
        }

        final newToken = await _refreshFuture;
        _isRefreshing = false;
        _refreshFuture = null;

        if (newToken != null && newToken.isNotEmpty) {
          final options = err.requestOptions;
          options.headers["Authorization"] = "Bearer $newToken";
          options.extra["retried"] = true;

          final response = await _dio.fetch(options);
          return handler.resolve(response);
        } else {
          await _tokenManager.clearSession();
          return handler.next(err);
        }
      } catch (e) {
        _isRefreshing = false;
        _refreshFuture = null;
        await _tokenManager.clearSession();
        return handler.next(err);
      }
    }

    return handler.next(err);
  }
}
