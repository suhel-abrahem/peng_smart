import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/features/add_device/domain/repository/add_device_repository.dart';

import '../../data/model/delete_rules_groups_model.dart';

class DeleteRulesGroupsUsecase
    implements UseCase<DataState<void>, DeleteRulesGroupsModel> {
  final AddDeviceRepository _repository;
  DeleteRulesGroupsUsecase(this._repository);
  @override
  Future<DataState<void>> call({DeleteRulesGroupsModel? params}) async {
    return await _repository.deleteDevice(
      model: params ?? DeleteRulesGroupsModel(deviceId: '', groupId: ''),
    );
  }
}
