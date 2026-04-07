import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

import '../repository/add_device_repository.dart';

class SaveDeviceLocallyUseCase
    implements UseCase<DataState<DeviceEntity>, DeviceEntity> {
  final AddDeviceRepository _repository;

  SaveDeviceLocallyUseCase(this._repository);

  @override
  Future<DataState<DeviceEntity>> call({DeviceEntity? params}) {
    return _repository.saveDeviceLocally(device: params!);
  }
}