import 'package:dio/dio.dart';

class CommonService {
  final Dio _dio;
  const CommonService(this._dio);

  /// GET request
  Future<Response?> get(
    String endpoint, {
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    final response = await _dio.get(
      endpoint,
      queryParameters: params,
      options: options,
    );
    return response;
  }

  /// POST request
  Future<Response?> post(
    String endpoint, {
    Object? data,
    Options? options,
  }) async {
    final response = await _dio.post(endpoint, data: data, options: options);
    return response;
  }

  // PUT request
  Future<Response?> put(
    String endpoint, {
    Object? data,
    Options? options,
  }) async {
    final response = await _dio.put(endpoint, data: data, options: options);
    return response;
  }

  // DELETE request
  Future<Response?> delete(
    String endpoint, {
    Object? data,
    Options? options,
  }) async {
    final response = await _dio.delete(endpoint, data: data, options: options);
    return response;
  }

  // PATCH request
  Future<Response?> patch(
    String endpoint, {
    Object? data,
    Options? options,
  }) async {
    final response = await _dio.patch(endpoint, data: data, options: options);
    return response;
  }

  //update request
  Future<Response?> update(
    String endpoint, {
    Object? data,
    Options? options,
  }) async {
    final response = await _dio.put(endpoint, data: data, options: options);
    return response;
  }
}
