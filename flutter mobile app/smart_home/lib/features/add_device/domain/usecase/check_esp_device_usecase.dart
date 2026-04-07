import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

import '../repository/add_device_repository.dart';

class CheckEspDeviceUseCase
    implements UseCase<DataState<DeviceEntity>, NoParams> {
  final AddDeviceRepository _repository;

  CheckEspDeviceUseCase(this._repository);

  @override
  Future<DataState<DeviceEntity>> call({NoParams? params}) {
    return _repository.checkEspDevice();
  }
}