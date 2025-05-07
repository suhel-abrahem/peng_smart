import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/resources/common_features/user_info/domain/usecases/add_user_rule_usecase.dart';
import '../../../../../../core/resources/common_features/user_info/domain/usecases/get_user_rule_usecase.dart';
import '../../../../../../core/usecase/usecase.dart';
import '../../../../data_state.dart' as ds;

part 'rules_groups_bloc.freezed.dart';
part 'rules_groups_event.dart';
part 'rules_groups_state.dart';

class RulesGroupsBloc extends Bloc<RulesGroupsEvent, RulesGroupsState> {
  final GetUserRuleUsecase _getUserRuleUsecase;
  final AddUserRuleUsecase _addUserRuleUsecase;
  RulesGroupsBloc(this._getUserRuleUsecase, this._addUserRuleUsecase)
      : super(const Initial()) {
    on<Started>((event, emit) async {
      final response = await getRules(event.userRuleDataType);
      emit(response);
    });
    on<Get>((event, emit) async {
      final response = await getRules(event.userRuleDataType);
      emit(response);
    });
    on<Set>((event, emit) async {
      final response = await setRules(event.userRuleDataType);
      emit(response);
    });
    on<Update>((event, emit) async {
      final response = await setRules(event.userRuleDataType);
      emit(response);
    });
  }
  Future<RulesGroupsState> getRules(UserRuleDataType userRuleDataType) async {
    final response = await _getUserRuleUsecase.call(params: userRuleDataType);
    if (response is ds.DataSuccess) {
      if (response.data != null && (response.data?.isNotEmpty ?? false)) {
        return HaveData(response.data);
      } else {
        return const NoData();
      }
    } else if (response is ds.NoInternet) {
      return const NoInternet();
    } else if (response is ds.LocallySaveFailed) {
      return const FailedToSaveDataLocally();
    } else if (response is ds.FailedToGetRuleGroupsName) {
      return const FailedToGetGroupsName();
    } else if (response is ds.FailedToSetRulesGroupName) {
      return const FailedToSaveGroupsName();
    } else {
      return const Error();
    }
  }

  Future<RulesGroupsState> setRules(UserRuleDataType userRuleDataType) async {
    final response = await _addUserRuleUsecase.call(params: userRuleDataType);
    if (response is ds.DataSuccess) {
      if (userRuleDataType.isEdit ?? false) {
        return const Updated();
      } else {
        return const Uploaded();
      }
    } else if (response is ds.RulesGroupsNameAlreadyExist) {
      return const GroupsNameAlreadyExist();
    } else if (response is ds.LocallySaveFailed) {
      return const FailedToSaveDataLocally();
    } else if (response is ds.FailedToGetRuleGroupsName) {
      return const FailedToGetGroupsName();
    } else if (response is ds.FailedToSetRulesGroupName) {
      return const FailedToSaveGroupsName();
    } else {
      return const Error();
    }
  }
}
