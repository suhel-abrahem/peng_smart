import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_home/features/add_device/data/model/device_model.dart';

import 'add_device_local_data_source.dart';

class AddDeviceLocalDataSourceImpl implements AddDeviceLocalDataSource {
  final SharedPreferences _sharedPreferences;

  const AddDeviceLocalDataSourceImpl(this._sharedPreferences);

  static const String _devicesKey = 'saved_devices';

  @override
  Future<void> saveDevice(DeviceModel device) async {
    final List<DeviceModel> devices = await getDevices();

    final int index = devices.indexWhere(
      (element) => element.deviceMacAddress == device.deviceMacAddress,
    );

    if (index != -1) {
      devices[index] = device;
    } else {
      devices.add(device);
    }

    final List<String> rawList = devices
        .map((e) => jsonEncode(e.toJson()))
        .toList();

    await _sharedPreferences.setStringList(_devicesKey, rawList);
  }

  @override
  Future<List<DeviceModel>> getDevices() async {
    final List<String> rawList =
        _sharedPreferences.getStringList(_devicesKey) ?? [];

    return rawList
        .map(
          (e) => DeviceModel.fromJson(Map<String, dynamic>.from(jsonDecode(e))),
        )
        .toList();
  }
}
