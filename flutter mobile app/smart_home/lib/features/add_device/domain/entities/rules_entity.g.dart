// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RulesEntity _$RulesEntityFromJson(Map<String, dynamic> json) => _RulesEntity(
  groups:
      (json['groups'] as List<dynamic>?)
          ?.map((e) => RuleGroupEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$RulesEntityToJson(_RulesEntity instance) =>
    <String, dynamic>{'groups': instance.groups};
