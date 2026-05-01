// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_telemetry_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceTelemetryEntity _$DeviceTelemetryEntityFromJson(
  Map<String, dynamic> json,
) => _DeviceTelemetryEntity(
  relay1: json['relay1'] as bool? ?? false,
  relay2: json['relay2'] as bool? ?? false,
  temperature: (json['temperature'] as num?)?.toDouble(),
  tempSensor: (json['tempSensor'] as num?)?.toDouble(),
  pressureBar: (json['pressureBar'] as num?)?.toDouble(),
  voltage: (json['voltage'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  power: (json['power'] as num?)?.toDouble(),
  energyKwh: (json['energyKwh'] as num?)?.toDouble(),
  safetyTripped: json['safetyTripped'] as bool? ?? false,
  safetyMessage: json['safetyMessage'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$DeviceTelemetryEntityToJson(
  _DeviceTelemetryEntity instance,
) => <String, dynamic>{
  'relay1': instance.relay1,
  'relay2': instance.relay2,
  'temperature': instance.temperature,
  'tempSensor': instance.tempSensor,
  'pressureBar': instance.pressureBar,
  'voltage': instance.voltage,
  'current': instance.current,
  'power': instance.power,
  'energyKwh': instance.energyKwh,
  'safetyTripped': instance.safetyTripped,
  'safetyMessage': instance.safetyMessage,
  'updatedAt': instance.updatedAt,
};
