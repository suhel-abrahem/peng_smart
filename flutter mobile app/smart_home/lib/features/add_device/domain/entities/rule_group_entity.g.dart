// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_group_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RuleGroupEntity _$RuleGroupEntityFromJson(Map<String, dynamic> json) =>
    _RuleGroupEntity(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      enabled: json['enabled'] as bool? ?? false,
      rules:
          (json['rules'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      actions:
          (json['actions'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      days:
          (json['days'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$RuleGroupEntityToJson(_RuleGroupEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'enabled': instance.enabled,
      'rules': instance.rules,
      'actions': instance.actions,
      'days': instance.days,
    };
