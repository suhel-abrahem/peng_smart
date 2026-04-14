import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';

import '../../data/models/create_home_input_model.dart';
import '../entities/home_entity.dart';
import '../repositories/home_repository.dart';

class CreateHomeUseCase
    implements UseCase<DataState<HomeEntity>, CreateHomeInputModel> {
  final HomeRepository _repository;

  CreateHomeUseCase(this._repository);

  @override
  Future<DataState<HomeEntity>> call({CreateHomeInputModel? params}) {
    return _repository.createHome(input: params!);
  }
}
