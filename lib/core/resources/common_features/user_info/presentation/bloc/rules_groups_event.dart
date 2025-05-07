part of 'rules_groups_bloc.dart';

@freezed
class RulesGroupsEvent with _$RulesGroupsEvent {
  const factory RulesGroupsEvent.started(UserRuleDataType userRuleDataType) =
      Started;
  const factory RulesGroupsEvent.get(UserRuleDataType userRuleDataType) = Get;
  const factory RulesGroupsEvent.set(UserRuleDataType userRuleDataType) = Set;
  const factory RulesGroupsEvent.update(UserRuleDataType userRuleDataType) =
      Update;
}
