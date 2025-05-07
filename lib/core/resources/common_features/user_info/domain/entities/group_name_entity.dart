import 'package:freezed_annotation/freezed_annotation.dart';
part 'group_name_entity.freezed.dart';
part 'group_name_entity.g.dart';

@freezed
class RuleGroupNameEntity with _$RuleGroupNameEntity {
  const factory RuleGroupNameEntity({
    @Default('') String? name,
    @Default('') String? id,
  }) = _RuleGroupName;
  factory RuleGroupNameEntity.fromJson(Map<String, dynamic> json) =>
      _$RuleGroupNameEntityFromJson(json);
}
