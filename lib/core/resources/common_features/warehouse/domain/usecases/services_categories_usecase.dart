import '../../../../../usecase/usecase.dart';
import '../../../../data_state.dart';
import '../repositories/services_categories_repository.dart';

class ServicesCategoriesUseCase
    implements UseCase<DataState<List<CategoryDataType>>, int> {
  final ServicesCategoriesRepository _servicesCategoriesRepository;

  ServicesCategoriesUseCase(this._servicesCategoriesRepository);
  @override
  Future<DataState<List<CategoryDataType>>> call({int? params}) async {
    return _servicesCategoriesRepository.getCategories(bypass: params);
  }
}
