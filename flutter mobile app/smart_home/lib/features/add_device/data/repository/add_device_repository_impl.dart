import 'package:dio/dio.dart';
import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/enums/device_status_enum.dart';
import 'package:smart_home/core/network/dio_exception_mapper.dart';
import 'package:smart_home/features/add_device/data/data_sources/add_device_local_data_source.dart';
import 'package:smart_home/features/add_device/data/data_sources/add_device_remote_data_source.dart';
import 'package:smart_home/features/add_device/data/data_sources/esp_provision_remote_data_source.dart';
import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/data/model/delete_rules_groups_model.dart';
import 'package:smart_home/features/add_device/data/model/device_model.dart';
import 'package:smart_home/features/add_device/data/model/esp_status_model.dart';
import 'package:smart_home/features/add_device/domain/entities/action_link_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/rules_entity.dart';

import '../../domain/repository/add_device_repository.dart';

class AddDeviceRepositoryImpl implements AddDeviceRepository {
  final EspProvisionRemoteDataSource _espProvisionRemoteDataSource;
  final AddDeviceRemoteDataSource _addDeviceRemoteDataSource;
  final AddDeviceLocalDataSource _addDeviceLocalDataSource;

  const AddDeviceRepositoryImpl(
    this._espProvisionRemoteDataSource,
    this._addDeviceRemoteDataSource,
    this._addDeviceLocalDataSource,
  );

  @override
  Future<DataState<DeviceEntity>> checkEspDevice() async {
    try {
      final EspStatusModel espStatus = await _espProvisionRemoteDataSource
          .checkStatus();

      return DataSuccess(data: _mapEspStatusToEntity(espStatus));
    } on DioException catch (e) {
      return mapDioExceptionToDataState<DeviceEntity>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<DeviceEntity>> provisionDeviceWifi({
    required AddDeviceInputModel input,
  }) async {
    try {
      final EspStatusModel espStatus = await _espProvisionRemoteDataSource
          .checkStatus();

      await _espProvisionRemoteDataSource.saveWifi(input: input);

      return DataSuccess(
        data: _mapEspStatusToEntity(
          espStatus,
          customName: input.deviceName,
          customRoom: input.roomName,
          customRoomId: input.roomId,
          customHomeId: input.homeId,
          customHomeName: input.homeName,
        ),
      );
    } on DioException catch (e) {
      return mapDioExceptionToDataState<DeviceEntity>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<DeviceEntity>> registerDevice({
    required AddDeviceInputModel input,
    required DeviceEntity device,
  }) async {
    try {
      final DeviceModel model = await _addDeviceRemoteDataSource.registerDevice(
        input: input,
        device: device,
      );

      return DataSuccess(data: model.toEntity());
    } on DioException catch (e) {
      return mapDioExceptionToDataState<DeviceEntity>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<DeviceEntity>> saveDeviceLocally({
    required DeviceEntity device,
  }) async {
    try {
      final DeviceModel model = DeviceModel(
        id: device.id,
        name: device.name,
        type: device.type,
        room: device.room,
        homeId: device.homeId,
        homeName: device.homeName,
        deviceMacAddress: device.deviceMacAddress,
        rules: device.rules ?? RulesEntity(),
        status: device.status,
        components: device.components,
        telemetry: device.telemetry,
      );

      await _addDeviceLocalDataSource.saveDevice(model);

      return DataSuccess(data: model.toEntity());
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<List<DeviceEntity>>> getDevicesByHomeId({
    required String homeId,
  }) async {
    try {
      print('Fetching devices for homeId: $homeId');
      final result = await _addDeviceRemoteDataSource.getDevicesByHomeId(
        homeId: homeId,
      );
      print("data from repo $result");
      return DataSuccess(data: result.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      print(
        'DioException in getDevicesByHomeId: ${e.message}, response: ${e.response?.data}',
      ); // Debug print to check the DioException details
      return mapDioExceptionToDataState<List<DeviceEntity>>(e);
    } catch (e) {
      print(
        'Exception in getDevicesByHomeId: ${e.toString()}',
      ); // Debug print to check the exception details
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<List<DeviceEntity>>> getDevicesByRoomId({
    required String roomId,
  }) async {
    try {
      final result = await _addDeviceRemoteDataSource.getDevicesByRoomId(
        roomId: roomId,
      );

      return DataSuccess(data: result.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return mapDioExceptionToDataState<List<DeviceEntity>>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  DeviceEntity _mapEspStatusToEntity(
    EspStatusModel status, {
    String? customName,
    String? customRoom,
    String? customRoomId,
    String? customHomeId,
    String? customHomeName,
  }) {
    return DeviceEntity(
      id: status.macAddress,
      name: (customName != null && customName.trim().isNotEmpty)
          ? customName.trim()
          : status.deviceType,
      type: status.deviceType,
      room: customRoom ?? '',
      homeId: customHomeId ?? '',
      homeName: customHomeName ?? '',
      deviceMacAddress: status.macAddress,
      rules: const RulesEntity(),
      status: DeviceStatusEnum.offline,
      components: status.components,
    );
  }

  @override
  Future<DataState<DeviceEntity>> updateDeviceRules({
    required String deviceId,
    required RulesEntity rules,
  }) async {
    try {
      final result = await _addDeviceRemoteDataSource.updateDeviceRules(
        deviceId: deviceId,
        rules: rules,
      );

      return DataSuccess(data: result.toEntity());
    } on DioException catch (e) {
      print(
        'DioException in updateDeviceRules: ${e.message}, response: ${e.response?.data}',
      ); // Debug print to check the DioException details
      return mapDioExceptionToDataState<DeviceEntity>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<DeviceEntity>> getDeviceById({
    required String deviceId,
  }) async {
    try {
      final result = await _addDeviceRemoteDataSource.getDeviceById(
        deviceId: deviceId,
      );

      return DataSuccess(data: result.toEntity());
    } on DioException catch (e) {
      print(
        'DioException in getDeviceById: ${e.message}, response: ${e.response?.data}',
      ); // Debug print to check the DioException details
      return mapDioExceptionToDataState<DeviceEntity>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<void>> overrideDeviceActions({
    required String? deviceId,
    required ActionLinkEntity? actions,
  }) async {
    try {
      if (deviceId == null || actions == null) {
        return DataFailed(error: 'Device ID and actions must not be null');
      }
      print(
        "action to override: ${actions.action} for deviceId: $deviceId",
      ); // Debug print to check the input values
      await _addDeviceRemoteDataSource.overrideDeviceActions(
        deviceId: deviceId,
        actions: actions,
      );

      return const DataSuccess(data: null);
    } on DioException catch (e) {
      return mapDioExceptionToDataState<void>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<void>> deleteDevice({
    required DeleteRulesGroupsModel model,
  }) async {
    try {
      await _addDeviceRemoteDataSource.deleteDevice(model: model);
      return const DataSuccess(data: null);
    } on DioException catch (e) {
      return mapDioExceptionToDataState<void>(e);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }
}
