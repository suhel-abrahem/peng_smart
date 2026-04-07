import '../../../../core/network/common_service.dart';
import '../model/add_device_input_model.dart';
import '../model/esp_status_model.dart';

import 'package:dio/dio.dart';


abstract class EspProvisionRemoteDataSource {
  Future<EspStatusModel> checkStatus();
  Future<void> saveWifi({
    required AddDeviceInputModel input,
  });
}

class EspProvisionRemoteDataSourceImpl
    implements EspProvisionRemoteDataSource {
  final CommonService _commonService;

  const EspProvisionRemoteDataSourceImpl(this._commonService);

  @override
  Future<EspStatusModel> checkStatus() async {
    final response = await _commonService.get(
      '/status',
      options: Options(
        extra: {"auth-free": true}, // IMPORTANT (no token)
      ),
    );

    if (response == null || response.data == null) {
      throw Exception("ESP returned empty response");
    }

    return EspStatusModel.fromJson(response.data);
  }

  @override
  Future<void> saveWifi({
    required AddDeviceInputModel input,
  }) async {
    final response = await _commonService.post(
      '/save-wifi',
      data: {
        "ssid": input.homeWifiSsid,
        "password": input.homeWifiPassword,
        "deviceName": input.deviceName,
        "room": input.room,
      },
      options: Options(
        extra: {"auth-free": true}, // IMPORTANT
      ),
    );

    if (response == null) {
      throw Exception("ESP save wifi failed");
    }
  }
}