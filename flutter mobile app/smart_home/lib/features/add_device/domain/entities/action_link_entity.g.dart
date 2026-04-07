// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_link_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActionLinkEntity _$ActionLinkEntityFromJson(Map<String, dynamic> json) =>
    _ActionLinkEntity(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      targetDeviceId: json['targetDeviceId'] as String? ?? "",
      targetDeviceName: json['targetDeviceName'] as String? ?? "",
      targetComponentId: json['targetComponentId'] as String? ?? "",
      action: $enumDecode(_$ActionEnumEnumMap, json['action']),
    );

Map<String, dynamic> _$ActionLinkEntityToJson(_ActionLinkEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'targetDeviceId': instance.targetDeviceId,
      'targetDeviceName': instance.targetDeviceName,
      'targetComponentId': instance.targetComponentId,
      'action': _$ActionEnumEnumMap[instance.action]!,
    };

const _$ActionEnumEnumMap = {
  ActionEnum.turnOn: 'turnOn',
  ActionEnum.turnOff: 'turnOff',
  ActionEnum.setTemperature: 'setTemperature',
  ActionEnum.setBrightness: 'setBrightness',
};
