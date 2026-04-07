import '../../../../core/data_state/data_state.dart';
import '../../data/model/add_device_input_model.dart';
import '../entities/device_entity.dart';

abstract class AddDeviceRepository {
  Future<DataState<DeviceEntity>> checkEspDevice();
  Future<DataState<DeviceEntity>> provisionDeviceWifi({
    required AddDeviceInputModel input,
  });
  Future<DataState<DeviceEntity>> registerDevice({
    required AddDeviceInputModel input,
    required DeviceEntity device,
  });
  Future<DataState<DeviceEntity>> saveDeviceLocally({
    required DeviceEntity device,
  });
}
