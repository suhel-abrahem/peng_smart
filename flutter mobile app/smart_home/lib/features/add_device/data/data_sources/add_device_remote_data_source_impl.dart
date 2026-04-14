import 'package:dio/dio.dart';
import 'package:smart_home/core/constants/api_constant.dart';

import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/data/model/device_model.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

import '../../../../core/network/common_service.dart';
import 'add_device_remote_data_source.dart';

class AddDeviceRemoteDataSourceImpl implements AddDeviceRemoteDataSource {
  final CommonService _commonService;

  const AddDeviceRemoteDataSourceImpl(this._commonService);

  @override
  Future<DeviceModel> registerDevice({
    required AddDeviceInputModel input,
    required DeviceEntity device,
  }) async {
    final response = await _commonService.post(
      ApiConstant.registerDeviceEndpoint,
      data: {
        'name': input.deviceName,
        'room': input.room,
        'homeId': input.homeId,
        'homeName': input.homeName,
        'macAddress': device.deviceMacAddress,
        'type': device.type,
      },
      options: Options(
        extra: {'auth-free': false},
      ),
    );

    if (response == null || response.data == null) {
      throw Exception('Empty register device response');
    }

    final dynamic rawData = response.data['data'] ?? response.data;

    return DeviceModel.fromJson(Map<String, dynamic>.from(rawData));
  }
}