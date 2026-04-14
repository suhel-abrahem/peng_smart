import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_device_input_model.freezed.dart';
part 'add_device_input_model.g.dart';

@freezed
abstract class AddDeviceInputModel with _$AddDeviceInputModel {
  const factory AddDeviceInputModel({
    @Default('') String deviceName,
    @Default('') String roomName,
    @Default('') String roomId,
    @Default('') String homeWifiSsid,
    @Default('') String homeWifiPassword,
    @Default('') String homeId,
    @Default('') String homeName,
  }) = _AddDeviceInputModel;

  factory AddDeviceInputModel.fromJson(Map<String, dynamic> json) =>
      _$AddDeviceInputModelFromJson(json);
}
