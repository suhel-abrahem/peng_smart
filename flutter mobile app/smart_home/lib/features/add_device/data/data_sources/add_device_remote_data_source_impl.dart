import 'package:dio/dio.dart';
import 'package:smart_home/core/constants/api_constant.dart';
import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/data/model/delete_rules_groups_model.dart';
import 'package:smart_home/features/add_device/data/model/device_model.dart';
import 'package:smart_home/features/add_device/domain/entities/action_link_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/rules_entity.dart';

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
    print('Base URL: ${ApiConstant.baseUrl}');
    print('Fetching devices for homeId: $homeId');
    final response = await _commonService.get(
      "${ApiConstant.getDevicesEndpoint}/$homeId",
    );
    print(
      'Devices response: ${response?.realUri}',
    ); // Debug print to check the response
    if (response == null || response.data == null) {
      print(
        'Empty devices response for homeId: $homeId',
      ); // Debug print to check the homeId and response5
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
    print(
      'Fetching devices for roomId: $roomId',
    ); // Debug print to check the roomId
    final response = await _commonService.get(
      "${ApiConstant.getDevicesByRoomIdEndpoint}/$roomId",
    );

    if (response == null || response.data == null) {
      throw Exception('Empty room devices response');
    }

    final List<dynamic> rawList = response.data['data'] ?? [];
    print(
      'Raw room devices data: $rawList',
    ); // Debug print to check the raw data structure
    return rawList
        .map((e) => DeviceModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<DeviceModel> updateDeviceRules({
    required String deviceId,
    required RulesEntity rules,
  }) async {
    final endpoint = '/devices/$deviceId/rules';
    RulesEntity rulesGroups = rules;

    print(
      'Updating rules for deviceId: $deviceId with rules: ${rules.toJson()}',
    ); // Debug print to check the input parameters
    final response = await _commonService.put(
      endpoint,
      data: {'rules': rules.toJson()},
    );
    print(
      "updateDeviceRules response: ${response?.statusCode}, data: ${response?.data}",
    ); // Debug print to check the response
    if (response == null || response.data == null) {
      throw Exception('Empty update rules response');
    }

    final dynamic rawData = response.data['data'] ?? response.data;

    return DeviceModel.fromJson(Map<String, dynamic>.from(rawData));
  }

  @override
  Future<DeviceModel> getDeviceById({required String deviceId}) async {
    final response = await _commonService.get('/devices/$deviceId');

    if (response == null || response.data == null) {
      throw Exception('Empty device details response');
    }

    final rawData = response.data['data'] ?? response.data;
    return DeviceModel.fromJson(Map<String, dynamic>.from(rawData));
  }

  @override
  Future<void> overrideDeviceActions({
    required String deviceId,
    required ActionLinkEntity actions,
  }) async {
    print(
      'Overriding actions for deviceId: $deviceId with actions: ${actions.action.name}, targetType: ${actions.targetType}, targetComponentId: ${actions.targetComponentId}',
    ); // Debug print to check the input parameters
    await _commonService.put(
      ApiConstant.controlDeviceEndpoint.replaceFirst('{deviceId}', deviceId),
      data: {
        'action': actions.action.name,
        "targetType": actions.targetType,
        "targetComponentId": actions.targetComponentId,
      },
    );
  }

  @override
  Future<void> deleteDevice({required DeleteRulesGroupsModel model}) async {
    await _commonService.delete(
      ApiConstant.deleteDeviceEndpoint
          .replaceFirst('{deviceId}', model.deviceId)
          .replaceFirst('{groupId}', model.groupId),
    );
  }
}
