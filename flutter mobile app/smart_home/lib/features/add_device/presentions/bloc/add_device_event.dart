part of 'add_device_bloc.dart';

@freezed
class AddDeviceEvent with _$AddDeviceEvent {
  const factory AddDeviceEvent.started() = _Started;
}