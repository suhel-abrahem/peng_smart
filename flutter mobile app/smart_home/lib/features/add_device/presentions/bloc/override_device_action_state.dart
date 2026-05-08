part of 'override_device_action_bloc.dart';

@freezed
class OverrideDeviceActionState with _$OverrideDeviceActionState {
  const factory OverrideDeviceActionState.initial() = _Initial;
  const factory OverrideDeviceActionState.overriding() = _Overriding;
  const factory OverrideDeviceActionState.overridden() = _Overridden;
  const factory OverrideDeviceActionState.error({required String message}) =
      _Error;
}
