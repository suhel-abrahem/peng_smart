import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/data/model/device_model.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

import '../../domain/entities/rules_entity.dart';

abstract class AddDeviceRemoteDataSource {
  Future<DeviceModel> registerDevice({
    required AddDeviceInputModel input,
    required DeviceEntity device,
  });

  Future<List<DeviceModel>> getDevicesByHomeId({required String homeId});

  Future<List<DeviceModel>> getDevicesByRoomId({required String roomId});
  Future<DeviceModel> updateDeviceRules({
    required String deviceId,
    required RulesEntity rules,
  });
  Future<DeviceModel> getDeviceById({required String deviceId});
}
