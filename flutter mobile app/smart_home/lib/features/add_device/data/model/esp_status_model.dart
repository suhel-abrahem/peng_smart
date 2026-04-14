import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/features/add_device/domain/entities/device_component_entity.dart';

part 'esp_status_model.freezed.dart';
part 'esp_status_model.g.dart';

@freezed
abstract class EspStatusModel with _$EspStatusModel {
  const factory EspStatusModel({
    @Default(false) bool ok,
    @Default('') String mode,
    @JsonKey(name: 'ap_ssid') @Default('') String apSsid,
    @Default('') String ip,
    @Default('') String macAddress,
    @Default('') String deviceType,
    double? temperature,
    @Default([]) List<DeviceComponentEntity> components,
    @Default(false) bool relay1,
    @Default(false) bool relay2,
  }) = _EspStatusModel;

  factory EspStatusModel.fromJson(Map<String, dynamic> json) =>
      _$EspStatusModelFromJson(json);
}
