part of 'rules_groups_bloc.dart';

@freezed
class RulesGroupsState with _$RulesGroupsState {
  const factory RulesGroupsState.initial() = Initial;
  const factory RulesGroupsState.haveData(
      List<UserRuleDataType?>? userRuleDataType) = HaveData;
  const factory RulesGroupsState.noData() = NoData;
  const factory RulesGroupsState.noInternet() = NoInternet;
  const factory RulesGroupsState.groupsNameAlreadyExist() =
      GroupsNameAlreadyExist;
  const factory RulesGroupsState.failedToSaveDataLocally() =
      FailedToSaveDataLocally;
  const factory RulesGroupsState.failedToGetDataLocally() =
      FailedToGetDataLocally;
  const factory RulesGroupsState.failedToGetGroupsName() =
      FailedToGetGroupsName;
  const factory RulesGroupsState.failedToSaveGroupsName() =
      FailedToSaveGroupsName;
  const factory RulesGroupsState.uploaded() = Uploaded;
  const factory RulesGroupsState.updated()=Updated;
  const factory RulesGroupsState.error() = Error;
}
