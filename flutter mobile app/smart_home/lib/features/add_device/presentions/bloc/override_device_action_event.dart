part of 'override_device_action_bloc.dart';

@freezed
class OverrideDeviceActionEvent with _$OverrideDeviceActionEvent {
  const factory OverrideDeviceActionEvent.started() = _Started;
  const factory OverrideDeviceActionEvent.override({
    required String deviceId,
    required ActionLinkEntity actions,
  }) = _Override;
}
