import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/domain/usecase/check_esp_device_usecase.dart';
import 'package:smart_home/features/add_device/domain/usecase/provision_device_wifi_usecase.dart';
import 'package:smart_home/features/add_device/domain/usecase/register_device_usecase.dart';
import 'package:smart_home/features/add_device/domain/usecase/save_device_locally_usecase.dart';

import '../../../../core/location_permissions/location_permissions.dart';
import '../../domain/usecase/connect_to_esp_wifi_usecase.dart';
import 'add_device_event.dart';
import 'add_device_state.dart';

class AddDeviceBloc extends Bloc<AddDeviceEvent, AddDeviceState> {
  final CheckEspDeviceUseCase _checkEspDeviceUseCase;
  final ProvisionDeviceWifiUseCase _provisionDeviceWifiUseCase;
  final RegisterDeviceUseCase _registerDeviceUseCase;
  final SaveDeviceLocallyUseCase _saveDeviceLocallyUseCase;
  final ConnectToEspWifiUseCase _connectToEspWifiUseCase;
  AddDeviceBloc(
    this._checkEspDeviceUseCase,
    this._provisionDeviceWifiUseCase,
    this._registerDeviceUseCase,
    this._saveDeviceLocallyUseCase,
    this._connectToEspWifiUseCase,
  ) : super(const AddDeviceState.initial()) {
    on<CheckEspDevice>(_onCheckEspDevice);
    on<ProvisionDeviceWifi>(_onProvisionDeviceWifi);
    on<RegisterDevice>(_onRegisterDevice);
    on<SaveDeviceLocally>(_onSaveDeviceLocally);
    on<CompleteAddDevice>(_onCompleteAddDevice);
    on<ConnectToEspWifi>(_onConnectToEspWifi);
    on<Reset>(_onReset);
  }

  Future<void> _onCheckEspDevice(
    CheckEspDevice event,
    Emitter<AddDeviceState> emit,
  ) async {
    emit(const AddDeviceState.loading());

    final result = await _checkEspDeviceUseCase.call(params: NoParams());

    if (result is DataSuccess<DeviceEntity>) {
      emit(AddDeviceState.espChecked(device: result.data!));
    } else {
      emit(
        AddDeviceState.error(
          message: result.error?.toString() ?? 'Failed to check ESP device',
        ),
      );
    }
  }

  Future<void> _onProvisionDeviceWifi(
    ProvisionDeviceWifi event,
    Emitter<AddDeviceState> emit,
  ) async {
    emit(const AddDeviceState.loading());

    final result = await _provisionDeviceWifiUseCase.call(params: event.input);

    if (result is DataSuccess<DeviceEntity>) {
      emit(AddDeviceState.wifiProvisioned(device: result.data!));
    } else {
      emit(
        AddDeviceState.error(
          message: result.error?.toString() ?? 'Failed to provision device',
        ),
      );
    }
  }

  Future<void> _onRegisterDevice(
    RegisterDevice event,
    Emitter<AddDeviceState> emit,
  ) async {
    emit(const AddDeviceState.loading());

    final result = await _registerDeviceUseCase.call(params: event.params);

    if (result is DataSuccess<DeviceEntity>) {
      emit(AddDeviceState.deviceRegistered(device: result.data!));
    } else {
      emit(
        AddDeviceState.error(
          message: result.error?.toString() ?? 'Failed to register device',
        ),
      );
    }
  }

  Future<void> _onSaveDeviceLocally(
    SaveDeviceLocally event,
    Emitter<AddDeviceState> emit,
  ) async {
    emit(const AddDeviceState.loading());

    final result = await _saveDeviceLocallyUseCase.call(params: event.device);

    if (result is DataSuccess<DeviceEntity>) {
      emit(AddDeviceState.deviceSavedLocally(device: result.data!));
      emit(AddDeviceState.success(device: result.data!));
    } else {
      emit(
        AddDeviceState.error(
          message: result.error?.toString() ?? 'Failed to save device locally',
        ),
      );
    }
  }

  Future<void> _onCompleteAddDevice(
    CompleteAddDevice event,
    Emitter<AddDeviceState> emit,
  ) async {
    emit(const AddDeviceState.loading());

    final provisionResult = await _provisionDeviceWifiUseCase.call(
      params: event.input,
    );

    if (provisionResult is! DataSuccess<DeviceEntity>) {
      emit(
        AddDeviceState.error(
          message:
              provisionResult.error?.toString() ?? 'Failed to provision device',
        ),
      );
      return;
    }

    final provisionedDevice = provisionResult.data!;

    final registerResult = await _registerDeviceUseCase.call(
      params: RegisterDeviceParams(
        input: event.input,
        device: provisionedDevice,
      ),
    );

    if (registerResult is! DataSuccess<DeviceEntity>) {
      emit(
        AddDeviceState.error(
          message:
              registerResult.error?.toString() ?? 'Failed to register device',
        ),
      );
      return;
    }

    final registeredDevice = registerResult.data!;

    final saveResult = await _saveDeviceLocallyUseCase.call(
      params: registeredDevice,
    );

    if (saveResult is! DataSuccess<DeviceEntity>) {
      emit(
        AddDeviceState.error(
          message:
              saveResult.error?.toString() ?? 'Failed to save device locally',
        ),
      );
      return;
    }

    emit(AddDeviceState.success(device: saveResult.data!));
  }

  void _onReset(Reset event, Emitter<AddDeviceState> emit) {
    emit(const AddDeviceState.initial());
  }

  Future<void> _onConnectToEspWifi(
    ConnectToEspWifi event,
    Emitter<AddDeviceState> emit,
  ) async {
    emit(const AddDeviceState.loading());

    try {
      await requestPermissions();
      await _connectToEspWifiUseCase.call(
        params: ConnectToEspWifiParams(
          ssid: 'ESP_TEMP_SETUP',
          password: '12345678',
          isOpen: false,
        ),
      );

      emit(const AddDeviceState.espWifiConnected());
    } catch (e) {
      emit(AddDeviceState.error(message: e.toString()));
    }
  }
}
