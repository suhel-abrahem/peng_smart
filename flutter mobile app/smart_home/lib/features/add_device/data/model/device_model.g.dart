// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) => _DeviceModel(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  type: json['type'] as String? ?? '',
  room: json['room'] as String? ?? '',
  homeId: json['homeId'] as String? ?? '',
  homeName: json['homeName'] as String? ?? '',
  deviceMacAddress: json['deviceMacAddress'] as String? ?? '',
  rules: json['rules'] == null
      ? null
      : RulesEntity.fromJson(json['rules'] as Map<String, dynamic>),
  status:
      $enumDecodeNullable(_$DeviceStatusEnumEnumMap, json['status']) ??
      DeviceStatusEnum.offline,
  components:
      (json['components'] as List<dynamic>?)
          ?.map(
            (e) => DeviceComponentEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$DeviceModelToJson(_DeviceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'room': instance.room,
      'homeId': instance.homeId,
      'homeName': instance.homeName,
      'deviceMacAddress': instance.deviceMacAddress,
      'rules': instance.rules,
      'status': _$DeviceStatusEnumEnumMap[instance.status]!,
      'components': instance.components,
    };

const _$DeviceStatusEnumEnumMap = {
  DeviceStatusEnum.on: 'on',
  DeviceStatusEnum.off: 'off',
  DeviceStatusEnum.offline: 'offline',
};
