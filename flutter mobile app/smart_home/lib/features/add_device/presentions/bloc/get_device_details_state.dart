part of 'get_device_details_bloc.dart';

@freezed
class GetDeviceDetailsState with _$GetDeviceDetailsState {
  const factory GetDeviceDetailsState.initial() = _Initial;
  const factory GetDeviceDetailsState.loading() = _Loading;
  const factory GetDeviceDetailsState.loaded({required DeviceEntity device}) =
      _Loaded;
  const factory GetDeviceDetailsState.error({required String message}) = _Error;
}
