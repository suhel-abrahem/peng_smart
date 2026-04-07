import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

part 'add_device_state.freezed.dart';

@freezed
abstract class AddDeviceState with _$AddDeviceState {
  const factory AddDeviceState.initial() = Initial;

  const factory AddDeviceState.loading() = Loading;

  const factory AddDeviceState.espChecked({required DeviceEntity device}) =
      EspChecked;

  const factory AddDeviceState.wifiProvisioned({required DeviceEntity device}) =
      WifiProvisioned;

  const factory AddDeviceState.deviceRegistered({
    required DeviceEntity device,
  }) = DeviceRegistered;

  const factory AddDeviceState.deviceSavedLocally({
    required DeviceEntity device,
  }) = DeviceSavedLocally;

  const factory AddDeviceState.success({required DeviceEntity device}) =
      Success;

  const factory AddDeviceState.error({required String message}) = Error;
  const factory AddDeviceState.espWifiConnected() = _EspWifiConnected;
}
