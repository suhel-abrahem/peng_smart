import 'package:dio/dio.dart';
import 'package:smart_home/config/app/app_preferences.dart';
import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/dependencies_injection.dart';
import 'package:smart_home/core/enums/login_state_enum.dart';
import 'package:smart_home/core/network/dio_exception_mapper.dart';
import 'package:smart_home/core/resource/user_info_entity/user_info_entity.dart';
import 'package:smart_home/features/auth/data/models/auth_response_model.dart';

import 'package:smart_home/features/auth/domain/entities/auth_response_entity.dart';

import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/login_input_model.dart';
import '../models/register_input_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  const AuthRepositoryImpl(this._authRemoteDataSource);

  @override
  Future<DataState<AuthResponseEntity>> login({
    required LoginInputModel input,
  }) async {
    try {
      final result = await _authRemoteDataSource.login(input: input);
      final UserInfoEntity userInfo = UserInfoEntity(
        id: result.user.id,
        name: result.user.name,
        email: result.user.email,
        token: result.accessToken,
        refreshToken: result.refreshToken,
        loginState: LoginStateEnum.login,
      );
      await getItInstance<AppPreferences>().setUserInfo(userInfo);
      return DataSuccess(data: result.toEntity());
    } on DioException catch (e) {
      return mapDioExceptionToDataState<AuthResponseEntity>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<AuthResponseEntity>> register({
    required RegisterInputModel input,
  }) async {
    try {
      final result = await _authRemoteDataSource.register(input: input);
      return DataSuccess(data: result.toEntity());
    } on DioException catch (e) {
      return mapDioExceptionToDataState<AuthResponseEntity>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }
}
