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
  value: json['value'] as String?,
  days: json['days'] as List<dynamic>? ?? const [],
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
      'value': instance.value,
      'days': instance.days,
    };

const _$NextRuleConditionEnumEnumMap = {
  NextRuleConditionEnum.and: 'and',
  NextRuleConditionEnum.or: 'or',
};
