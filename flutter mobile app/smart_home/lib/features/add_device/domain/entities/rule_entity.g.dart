// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RuleEntity _$RuleEntityFromJson(Map<String, dynamic> json) => _RuleEntity(
  id: json['id'] as String? ?? "",
  name: json['name'] as String? ?? "",
  source: json['source'] as String? ?? "",
  conditionForNextRule: $enumDecodeNullable(
    _$NextRuleConditionEnumEnumMap,
    json['conditionForNextRule'],
  ),
  enabled: json['enabled'] as bool? ?? false,
  activeFrom: json['activeFrom'] as String?,
  activeTo: json['activeTo'] as String?,
  action: $enumDecode(_$ActionEnumEnumMap, json['action']),
  value: json['value'] as String?,
  condition: $enumDecode(_$RuleConditionEnumEnumMap, json['condition']),
);

Map<String, dynamic> _$RuleEntityToJson(_RuleEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'source': instance.source,
      'conditionForNextRule':
          _$NextRuleConditionEnumEnumMap[instance.conditionForNextRule],
      'enabled': instance.enabled,
      'activeFrom': instance.activeFrom,
      'activeTo': instance.activeTo,
      'action': _$ActionEnumEnumMap[instance.action]!,
      'value': instance.value,
      'condition': _$RuleConditionEnumEnumMap[instance.condition]!,
    };

const _$NextRuleConditionEnumEnumMap = {
  NextRuleConditionEnum.and: 'and',
  NextRuleConditionEnum.or: 'or',
};

const _$ActionEnumEnumMap = {
  ActionEnum.turnOn: 'turnOn',
  ActionEnum.turnOff: 'turnOff',
  ActionEnum.setTemperature: 'setTemperature',
  ActionEnum.setBrightness: 'setBrightness',
};

const _$RuleConditionEnumEnumMap = {
  RuleConditionEnum.greaterThan: 'greaterThan',
  RuleConditionEnum.lessThan: 'lessThan',
  RuleConditionEnum.equalTo: 'equalTo',
};
