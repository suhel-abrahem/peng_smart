import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/data/model/device_model.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

abstract class AddDeviceRemoteDataSource {
  Future<DeviceModel> registerDevice({
    required AddDeviceInputModel input,
    required DeviceEntity device,
  });
}