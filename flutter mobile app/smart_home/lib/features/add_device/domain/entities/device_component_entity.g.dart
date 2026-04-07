// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_component_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceComponentEntity _$DeviceComponentEntityFromJson(
  Map<String, dynamic> json,
) => _DeviceComponentEntity(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  type: json['type'] as String? ?? '',
  isOn: json['isOn'] as bool? ?? false,
  currentValue: json['currentValue'] as String?,
);

Map<String, dynamic> _$DeviceComponentEntityToJson(
  _DeviceComponentEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
  'isOn': instance.isOn,
  'currentValue': instance.currentValue,
};
