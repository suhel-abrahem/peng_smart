import "package:freezed_annotation/freezed_annotation.dart";

part 'user_rule_entities.freezed.dart';
part 'user_rule_entities.g.dart';

@freezed
class UserRuleEntities with _$UserRuleEntities {
  const factory UserRuleEntities({
    @Default(["", "", ""]) List<String?>? ruleName,
    @Default(0) int defaultLanguage,
    @Default(["الافتراضي", "گریمانە", "default"]) List<String?>? groupName,
    @Default('') String? ruleId,
    @Default(false) bool? canAddUsers,
    @Default(false) bool? canRemoveUsers,
    @Default(false) bool? canAddClients,
    @Default(false) bool? canRemoveClient,
    @Default(false) bool? canBlockUsers,
    @Default(false) bool? canBlockClients,
    @Default(false) bool? canAcceptRequisiteFromClient,
    @Default(false) bool? canAcceptRequisiteFromAnotherUser,
    @Default(false) bool? canEditItems,
    @Default(false) bool? canEditBills,
    @Default(false) bool? canShowBills,
    @Default(false) bool? canEditDepartments,
    @Default(false) bool? canMonitor,
    @Default(false) bool? canOrder,
    @Default(false) bool? canEditOffers,
    @Default(false) bool? canEditAppFeatures,
    @Default(false) bool? canEditRulesGroups,
    @Default(false) bool? canEditHisRulesGroups,
  }) = _UserRuleEntities;
  factory UserRuleEntities.fromJson(Map<String, dynamic> json) =>
      _$UserRuleEntitiesFromJson(json);
}
