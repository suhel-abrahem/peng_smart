import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';

import 'package:smart_home/features/auth/domain/entities/auth_response_entity.dart';

import '../../data/models/login_input_model.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase
    implements UseCase<DataState<AuthResponseEntity>, LoginInputModel> {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<DataState<AuthResponseEntity>> call({LoginInputModel? params}) {
    return _repository.login(input: params!);
  }
}
