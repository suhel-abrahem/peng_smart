import '../../../../data_state.dart';
import '../../../../../usecase/usecase.dart';
import '../repositories/services_categories_repository.dart';

class SetServicesCategoriesUseCase
    implements UseCase<DataState<void>, CategoryDataType> {
 final ServicesCategoriesRepository _servicesCategoriesRepository;
  SetServicesCategoriesUseCase(this._servicesCategoriesRepository);
  @override
  Future<DataState<void>> call({CategoryDataType? params}) {
    return _servicesCategoriesRepository.setCategory(
        params: params);
  }
}
