import 'package:dio/dio.dart';
import 'package:smart_home/core/data_state/data_state.dart';

DataState<T> mapDioExceptionToDataState<T>(DioException e) {
  if ((e.response?.statusCode ?? 0) == 401) {
    return UnauthenticatedDataState(error: e.response?.data?["message"]);
  } else if (((e.response?.statusCode ?? 0) >= 400) &&
      ((e.response?.statusCode ?? 0) < 500)) {
    return DataError(error: e.response?.data?["message"] ?? "Client error");
  } else if (e.type == DioExceptionType.connectionTimeout ||
      e.type == DioExceptionType.sendTimeout ||
      e.type == DioExceptionType.receiveTimeout) {
    return NOInternetDataState();
  }
  return DataFailed(error: e.toString());
}
