import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';

import '../entities/home_entity.dart';
import '../repositories/home_repository.dart';

class GetMyHomesUseCase
    implements UseCase<DataState<List<HomeEntity>>, NoParams> {
  final HomeRepository _repository;

  GetMyHomesUseCase(this._repository);

  @override
  Future<DataState<List<HomeEntity>>> call({NoParams? params}) {
    return _repository.getMyHomes();
  }
}
