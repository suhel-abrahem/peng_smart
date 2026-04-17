// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) => _DeviceModel(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  type: json['type'] as String? ?? '',
  room: _readRoomName(json, 'room') as String? ?? '',
  homeId: json['homeId'] as String? ?? '',
  homeName: json['homeName'] as String? ?? '',
  deviceMacAddress: json['macAddress'] as String? ?? '',
  rules: json['rulesJson'] == null
      ? null
      : RulesEntity.fromJson(json['rulesJson'] as Map<String, dynamic>),
  status:
      $enumDecodeNullable(_$DeviceStatusEnumEnumMap, json['status']) ??
      DeviceStatusEnum.offline,
  components:
      (json['componentsJson'] as List<dynamic>?)
          ?.map(
            (e) => DeviceComponentEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  telemetry: json['lastTelemetryJson'] == null
      ? null
      : DeviceTelemetryEntity.fromJson(
          json['lastTelemetryJson'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DeviceModelToJson(_DeviceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'room': instance.room,
      'homeId': instance.homeId,
      'homeName': instance.homeName,
      'macAddress': instance.deviceMacAddress,
      'rulesJson': instance.rules,
      'status': _$DeviceStatusEnumEnumMap[instance.status]!,
      'componentsJson': instance.components,
      'lastTelemetryJson': instance.telemetry,
    };

const _$DeviceStatusEnumEnumMap = {
  DeviceStatusEnum.on: 'on',
  DeviceStatusEnum.off: 'off',
  DeviceStatusEnum.offline: 'offline',
  DeviceStatusEnum.online: 'online',
};
