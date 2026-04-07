import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/features/add_device/domain/entities/rule_entity.dart';

import 'action_link_entity.dart';
part 'rule_group_entity.freezed.dart';
part 'rule_group_entity.g.dart';

@freezed
abstract class RuleGroupEntity with _$RuleGroupEntity {
  const factory RuleGroupEntity({
    @Default("") String id,
    @Default("") String name,
    @Default(false) bool enabled,
    @Default([]) List<RuleEntity> rules,
    @Default([]) List<ActionLinkEntity> actions,
  }) = _RuleGroupEntity;

  factory RuleGroupEntity.fromJson(Map<String, dynamic> json) =>
      _$RuleGroupEntityFromJson(json);
}
