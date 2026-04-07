import 'package:smart_home/features/add_device/data/model/device_model.dart';

abstract class AddDeviceLocalDataSource {
  Future<void> saveDevice(DeviceModel device);
  Future<List<DeviceModel>> getDevices();
}