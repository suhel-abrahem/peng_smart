import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

import '../repository/add_device_repository.dart';

class ProvisionDeviceWifiUseCase
    implements UseCase<DataState<DeviceEntity>, AddDeviceInputModel> {
  final AddDeviceRepository _repository;

  ProvisionDeviceWifiUseCase(this._repository);

  @override
  Future<DataState<DeviceEntity>> call({AddDeviceInputModel? params}) {
    return _repository.provisionDeviceWifi(input: params!);
  }
}
