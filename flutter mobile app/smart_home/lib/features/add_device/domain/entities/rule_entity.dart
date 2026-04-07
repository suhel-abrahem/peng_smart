import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/enums/action_enum.dart';
import 'package:smart_home/core/enums/next_rule_condition_enum.dart';
import 'package:smart_home/core/enums/rule_condition_enum.dart';
import 'package:smart_home/features/add_device/domain/entities/action_link_entity.dart';
part 'rule_entity.freezed.dart';
part 'rule_entity.g.dart';

@freezed
abstract class RuleEntity with _$RuleEntity {
  const factory RuleEntity({
    @Default("") String id,
    @Default("") String name,
    NextRuleConditionEnum? conditionForNextRule,
    @Default(false) bool enabled,
     String? activeFrom,
     String? activeTo,
    ActionLinkEntity? actionLink,
    required ActionEnum action,
    required String value,
    required RuleConditionEnum condition,
  }) = _RuleEntity;

  factory RuleEntity.fromJson(Map<String, dynamic> json) =>
      _$RuleEntityFromJson(json);
}
