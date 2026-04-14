import 'package:smart_home/core/data_state/data_state.dart';

import 'package:smart_home/features/auth/domain/entities/auth_response_entity.dart';

import '../../data/models/login_input_model.dart';
import '../../data/models/register_input_model.dart';

abstract class AuthRepository {
  Future<DataState<AuthResponseEntity>> login({
    required LoginInputModel input,
  });

  Future<DataState<AuthResponseEntity>> register({
    required RegisterInputModel input,
  });
}