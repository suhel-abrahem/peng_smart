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
        'room': input.roomName,
        'roomId': input.roomId,
        'homeId': input.homeId,
        'homeName': input.homeName,
        'macAddress': device.deviceMacAddress,
        'type': device.type,
        'components': device.components
            .map(
              (component) => {
                'id': component.id,
                'name': component.name,
                'type': component.type,
              },
            )
            .toList(),
      },
      options: Options(extra: {'auth-free': false}),
    );

    if (response == null || response.data == null) {
      throw Exception('Empty register device response');
    }

    final dynamic rawData = response.data['data'] ?? response.data;
    return DeviceModel.fromJson(Map<String, dynamic>.from(rawData));
  }

  @override
  Future<List<DeviceModel>> getDevicesByHomeId({required String homeId}) async {
    final response = await _commonService.get(
      "${ApiConstant.getDevicesEndpoint}/$homeId",
    );

    if (response == null || response.data == null) {
      throw Exception('Empty devices response');
    }

    final List<dynamic> rawList = response.data['data'] ?? [];
    print(
      'Raw devices data: $rawList',
    ); // Debug print to check the raw data structure
    return rawList
        .map((e) => DeviceModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<List<DeviceModel>> getDevicesByRoomId({required String roomId}) async {
    final response = await _commonService.get(
      "${ApiConstant.getDevicesByRoomIdEndpoint}/$roomId",
    );

    if (response == null || response.data == null) {
      throw Exception('Empty room devices response');
    }

    final List<dynamic> rawList = response.data['data'] ?? [];

    return rawList
        .map((e) => DeviceModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }
}
