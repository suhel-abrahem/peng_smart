import '../../../../../usecase/usecase.dart';
import '../../../../data_state.dart';

abstract class ServicesCategoriesRepository{
  Future<DataState<List<CategoryDataType>>> getCategories({int? bypass});
  Future<DataState<void>>setCategory({ CategoryDataType? params});
}