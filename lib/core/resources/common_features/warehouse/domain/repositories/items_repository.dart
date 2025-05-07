import '../../../../data_type/items_data_type.dart';
import '../entities/categories_entities.dart';
import '../../../../../usecase/usecase.dart';

import '../../../../data_state.dart';
import '../entities/items_entities.dart';

abstract class ItemsRepository {
  Future<DataState<List<ItemsDataType>>> getItems(
      {required ItemsDataType? itemParams});
  Future<DataState<void>> setItems({required ItemsDataType? itemsDataType});
}
