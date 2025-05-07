import '../../../../../usecase/usecase.dart';
import '../../../../data_state.dart';
import '../../../../data_type/items_data_type.dart';
import '../repositories/items_repository.dart';

class SetItemsUsecase implements UseCase<DataState<void>,ItemsDataType>{
  final ItemsRepository _itemsRepository;

  SetItemsUsecase(this._itemsRepository);
  @override
  Future<DataState<void>> call({ItemsDataType? params}) {
   
   return _itemsRepository.setItems(itemsDataType: params);
  }

}