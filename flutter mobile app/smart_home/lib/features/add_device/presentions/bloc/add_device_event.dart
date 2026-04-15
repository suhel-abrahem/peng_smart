import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/domain/usecase/register_device_usecase.dart';

part 'add_device_event.freezed.dart';

@freezed
abstract class AddDeviceEvent with _$AddDeviceEvent {
  const factory AddDeviceEvent.checkEspDevice() = CheckEspDevice;

  const factory AddDeviceEvent.provisionDeviceWifi({
    required AddDeviceInputModel input,
  }) = ProvisionDeviceWifi;

  const factory AddDeviceEvent.registerDevice({
    required RegisterDeviceParams params,
  }) = RegisterDevice;

  const factory AddDeviceEvent.saveDeviceLocally({
    required DeviceEntity device,
  }) = SaveDeviceLocally;

  const factory AddDeviceEvent.completeAddDevice({
    required AddDeviceInputModel input,
    required DeviceEntity device,
  }) = CompleteAddDevice;

  const factory AddDeviceEvent.reset() = Reset;
  const factory AddDeviceEvent.connectToEspWifi() = ConnectToEspWifi;
}
