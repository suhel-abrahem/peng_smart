import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_telemetry_entity.freezed.dart';
part 'device_telemetry_entity.g.dart';

@freezed
abstract class DeviceTelemetryEntity with _$DeviceTelemetryEntity {
  const factory DeviceTelemetryEntity({
    @Default(false) bool relay1,
    @Default(false) bool relay2,
    double? temperature,
    double? tempSensor,
    String? updatedAt,
  }) = _DeviceTelemetryEntity;

  factory DeviceTelemetryEntity.fromJson(Map<String, dynamic> json) =>
      _$DeviceTelemetryEntityFromJson(json);
}