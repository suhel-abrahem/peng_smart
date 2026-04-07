import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/features/add_device/domain/entities/rule_group_entity.dart';
part 'rules_entity.freezed.dart';
part 'rules_entity.g.dart';

@freezed
abstract class RulesEntity with _$RulesEntity {
  const factory RulesEntity({@Default([]) List<RuleGroupEntity>? groups}) =
      _RulesEntity;

  factory RulesEntity.fromJson(Map<String, dynamic> json) =>
      _$RulesEntityFromJson(json);
}
