import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/features/add_device/domain/entities/action_link_entity.dart';

import '../../../../core/usecase/usecase.dart';
import '../repository/add_device_repository.dart';

class OverrideDeviceActionDataType {
  final String deviceId;
  final ActionLinkEntity actions;

  OverrideDeviceActionDataType({required this.deviceId, required this.actions});
}

class OverrideDeviceActionUsecase
    implements UseCase<DataState<void>, OverrideDeviceActionDataType> {
  final AddDeviceRepository _repository;
  OverrideDeviceActionUsecase(this._repository);
  @override
  Future<DataState<void>> call({OverrideDeviceActionDataType? params}) async {
    return await _repository.overrideDeviceActions(
      deviceId: params?.deviceId,
      actions: params?.actions,
    );
  }
}
