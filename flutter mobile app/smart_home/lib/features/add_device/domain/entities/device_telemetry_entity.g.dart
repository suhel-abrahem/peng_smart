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
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$DeviceTelemetryEntityToJson(
  _DeviceTelemetryEntity instance,
) => <String, dynamic>{
  'relay1': instance.relay1,
  'relay2': instance.relay2,
  'temperature': instance.temperature,
  'tempSensor': instance.tempSensor,
  'updatedAt': instance.updatedAt,
};
