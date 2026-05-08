part of 'get_device_details_bloc.dart';

@freezed
class GetDeviceDetailsEvent with _$GetDeviceDetailsEvent {
  const factory GetDeviceDetailsEvent.started() = _Started;
  const factory GetDeviceDetailsEvent.loadDeviceDetails({
    required String deviceId,
  }) = _LoadDeviceDetails;
}
