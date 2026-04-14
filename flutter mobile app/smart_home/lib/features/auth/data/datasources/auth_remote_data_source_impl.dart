import 'package:dio/dio.dart';
import 'package:smart_home/core/constants/api_constant.dart';

import '../../../../core/network/common_service.dart';
import '../models/auth_response_model.dart';
import '../models/login_input_model.dart';
import '../models/register_input_model.dart';
import 'auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final CommonService _commonService;

  const AuthRemoteDataSourceImpl(this._commonService);

  @override
  Future<AuthResponseModel> login({required LoginInputModel input}) async {
    final response = await _commonService.post(
      ApiConstant.loginEndpoint,
      data: input.toJson(),
      options: Options(extra: {'auth-free': true}),
    );

    if (response == null || response.data == null) {
      throw Exception('Empty login response');
    }

    final rawData = response.data['data'] ?? response.data;
    
    return AuthResponseModel.fromJson(Map<String, dynamic>.from(rawData));
  }

  @override
  Future<AuthResponseModel> register({
    required RegisterInputModel input,
  }) async {
    final response = await _commonService.post(
      ApiConstant.signupEndpoint,
      data: input.toJson(),
      options: Options(extra: {'auth-free': true}),
    );

    if (response == null || response.data == null) {
      throw Exception('Empty register response');
    }

    final rawData = response.data['data'] ?? response.data;
    return AuthResponseModel.fromJson(Map<String, dynamic>.from(rawData));
  }
}
