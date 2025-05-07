import '../../../../../usecase/usecase.dart';
import '../../../../data_state.dart';
import '../../../../data_type/items_data_type.dart';
import '../repositories/items_repository.dart';

class ItemsUseCase
    implements UseCase<DataState<List<ItemsDataType>>, ItemsDataType?> {
  final ItemsRepository itemsRepositories;
 
  ItemsUseCase({required this.itemsRepositories});
  @override
  Future<DataState<List<ItemsDataType>>> call({ItemsDataType? params}) {
    return itemsRepositories.getItems(itemParams: params);
  }
}
