import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';

import 'package:smart_home/features/auth/domain/entities/auth_response_entity.dart';

import '../../data/models/register_input_model.dart';
import '../repositories/auth_repository.dart';

class RegisterUseCase
    implements UseCase<DataState<AuthResponseEntity>, RegisterInputModel> {
  final AuthRepository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<DataState<AuthResponseEntity>> call({RegisterInputModel? params}) {
    return _repository.register(input: params!);
  }
}
