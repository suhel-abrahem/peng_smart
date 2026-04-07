// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esp_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EspStatusModel _$EspStatusModelFromJson(Map<String, dynamic> json) =>
    _EspStatusModel(
      ok: json['ok'] as bool? ?? false,
      mode: json['mode'] as String? ?? '',
      apSsid: json['ap_ssid'] as String? ?? '',
      ip: json['ip'] as String? ?? '',
      macAddress: json['macAddress'] as String? ?? '',
      deviceType: json['deviceType'] as String? ?? '',
      temperature: (json['temperature'] as num?)?.toDouble(),
      components:
          (json['components'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      relay1: json['relay1'] as bool? ?? false,
      relay2: json['relay2'] as bool? ?? false,
    );

Map<String, dynamic> _$EspStatusModelToJson(_EspStatusModel instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'mode': instance.mode,
      'ap_ssid': instance.apSsid,
      'ip': instance.ip,
      'macAddress': instance.macAddress,
      'deviceType': instance.deviceType,
      'temperature': instance.temperature,
      'components': instance.components,
      'relay1': instance.relay1,
      'relay2': instance.relay2,
    };
