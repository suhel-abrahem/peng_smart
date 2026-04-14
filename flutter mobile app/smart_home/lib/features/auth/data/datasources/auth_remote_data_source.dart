

import '../models/auth_response_model.dart';
import '../models/login_input_model.dart';
import '../models/register_input_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> login({
    required LoginInputModel input,
  });

  Future<AuthResponseModel> register({
    required RegisterInputModel input,
  });
}