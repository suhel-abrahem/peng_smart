import 'dart:async';
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../../../config/app/app_preferences.dart';
import '../../../../../../core/constants/app_parts_constants.dart';
import '../../../../../../core/resources/common_features/user_info/domain/entities/group_name_entity.dart';
import '../../../../../../core/resources/common_features/user_info/domain/entities/user_rule_entities.dart';
import '../../../../../injection_container.dart';
import '../../../../../usecase/usecase.dart';
import '../../../../common_service/common_service.dart';
import '../../../../connectivity/check_connectivity.dart';
import '../../../../data_state.dart';
import '../../../warehouse/domain/entities/id_entities.dart';
import '../../domain/repositories/user_rule_repository.dart';

class UserRuleRepositoryImplement implements UserRuleRepository {
  final CommonService _commonService;
  final CheckConnectivity _checkConnectivity;

  UserRuleRepositoryImplement(
      {required CommonService commonService,
      required CheckConnectivity checkConnectivity})
      : _commonService = commonService,
        _checkConnectivity = checkConnectivity;
  @override
  Future<DataState<void>> addRule(UserRuleDataType? userRuleDataType) async {
    bool canSync =
        getItInstance<AppPreferences>().getCanSync()[AppPartsConstants.rule];
    if (userRuleDataType?.bypass == 1) {
      canSync = false;
    }
    //cloudy
    if (canSync || (userRuleDataType?.bypass == 2)) {
      ConnectivityResult? internetConnection;
      await _checkConnectivity
          .checkConnectivity()
          .then((onValue) => internetConnection = onValue);
      if (internetConnection != ConnectivityResult.none) {
        List<String?>? rulesGroupsName = [];
        try {
          DataState<Stream<List<dynamic>>> rulesGroupAsStream =
              await _commonService.getDataFromFirestore(
                  collectionName: AppPartsConstants.rulesGroup);

          StreamSubscription? rulesGroupSubscription;
          rulesGroupSubscription = rulesGroupAsStream.data?.listen((onData) {
            for (var action in onData) {
              final data = RuleGroupNameEntity.fromJson(action.data);

              rulesGroupsName.add(data.name);
            }
            rulesGroupSubscription?.cancel();
          }, onError: (e) => FailedToGetRuleGroupsName(message: e));
        } catch (e) {
          return FailedToGetRuleGroupsName(message: e.toString());
        }
        if (rulesGroupsName.contains(userRuleDataType?.groupName) &&
            !(userRuleDataType?.isEdit ?? false)) {
          return RulesGroupsNameAlreadyExist();
        }

        if (!(userRuleDataType?.isEdit ?? false)) {
          DataState<Stream<List>> idAsStream =
              await _commonService.getDataFromFirestore(
                  collectionName: AppPartsConstants.rulesGroupId, id: "id");
          int? id;
          StreamSubscription? idSub;
          idSub = idAsStream.data?.listen((List event) async {
            if (event.firstOrNull != null) {
              var data = await event.firstOrNull;
              if (data != null && data["id"] != null) {
                id = (data["id"] ?? 0) + 1;
              } else {
                id = 0;
              }
            } else {
              id = 0;
            }
            await _commonService.setDataToFirestore(
                collectionName: AppPartsConstants.rulesGroupId,
                data: IdEntities.fromJson({"id": id}),
                id: "id");
            idSub?.cancel();
          });
          try {
            await _commonService.setDataToFirestore(
                collectionName: AppPartsConstants.rulesGroup,
                id: id.toString(),
                data: RuleGroupNameEntity(
                    name: userRuleDataType?.groupName, id: id.toString()));

            List<String>? locallyData = getItInstance<AppPreferences>()
                .getDataLocally(AppPartsConstants.rulesGroup);
            locallyData?.add(jsonEncode(
                RuleGroupNameEntity(name: userRuleDataType?.groupName)));
            await getItInstance<AppPreferences>().setDataLocally(
                key: AppPartsConstants.rulesGroup,
                dataAsJson: locallyData ?? []);
          } catch (e) {
            return FailedToSetRulesGroupName();
          }
        }
        try {
          await _commonService.setDataToFirestore(
              collectionName: userRuleDataType?.userRuleEntities?.groupName?[
                      userRuleDataType.userRuleEntities?.defaultLanguage ??
                          0] ??
                  '',
              data: userRuleDataType?.userRuleEntities);
          try {
            List<String>? data = [];
            final locallyData = getItInstance<AppPreferences>().getDataLocally(
                userRuleDataType?.userRuleEntities?.groupName?[
                        userRuleDataType.userRuleEntities?.defaultLanguage ??
                            0] ??
                    '');
            locallyData?.forEach((element) => data.add(
                jsonEncode(UserRuleDataType.fromJson(jsonDecode(element)))));
            if (userRuleDataType != null) {
              data.add(jsonEncode(userRuleDataType.copyWith(isUploaded: true)));
            }
            getItInstance<AppPreferences>().setDataLocally(
                key: userRuleDataType?.groupName ?? '', dataAsJson: (data));
          } catch (e) {
            return LocallySaveFailed();
          }
          return const DataSuccess();
        } catch (e) {
          return DataFailed(message: e.toString());
        }
      } else {
        return NoInternet();
      }
    }
    //locally
    else if (!canSync || userRuleDataType?.bypass == 1) {
      List<String>? groupName = [];
      try {
        groupName = getItInstance<AppPreferences>()
            .getDataLocally(AppPartsConstants.rulesGroup);
      } catch (e) {
        return FailedToGetRuleGroupsName();
      }
      if (groupName?.contains(userRuleDataType?.groupName) ?? false) {
        return RulesGroupsNameAlreadyExist();
      }
      groupName?.add(
          jsonEncode(RuleGroupNameEntity(name: userRuleDataType?.groupName)));
      try {
        getItInstance<AppPreferences>().setDataLocally(
            key: AppPartsConstants.rulesGroup, dataAsJson: groupName ?? []);
      } catch (e) {
        return FailedToSetRulesGroupName();
      }
      try {
        List<UserRuleDataType>? data = [];
        final locallyData = getItInstance<AppPreferences>()
            .getDataLocally(AppPartsConstants.rule);
        locallyData?.forEach((element) => data.add(jsonDecode(element)));
        if (userRuleDataType != null) {
          data.add(userRuleDataType);
        }
        getItInstance<AppPreferences>().setDataLocally(
            key: userRuleDataType?.userRuleEntities?.groupName?[
                    userRuleDataType.userRuleEntities?.defaultLanguage ?? 0] ??
                '',
            dataAsJson: [jsonEncode(data)]);
      } catch (e) {
        return LocallySaveFailed();
      }
      return const DataSuccess();
    }
    return const DataFailed(message: "none");
  }

  @override
  Future<DataState<List<UserRuleDataType?>?>> getRule(
      UserRuleDataType? userRuleDataType) async {
    bool canSync =
        getItInstance<AppPreferences>().getCanSync()[AppPartsConstants.rule];
    if (userRuleDataType?.bypass == 1) {
      canSync = false;
    }
    //cloudy
    if (canSync || (userRuleDataType?.bypass == 2)) {
      ConnectivityResult? internetConnection;
      await _checkConnectivity
          .checkConnectivity()
          .then((onValue) => internetConnection = onValue);
      if (internetConnection != ConnectivityResult.none) {
        List<UserRuleDataType>? data = [];
        // if the group name is not null this method will return all
        // rule in this group name. other wise the method will return
        // all rule of all groups!
        if (userRuleDataType?.groupName != null) {
          try {
            Completer<DataState<List<UserRuleDataType>?>>
                getCloudyDataCompleter = Completer();
            StreamSubscription? getCloudyDataSubscription;
            DataState<Stream<List<dynamic>>> cloudyDataAsStream =
                await _commonService.getDataFromFirestore(
              collectionName: userRuleDataType?.userRuleEntities?.groupName?[
                      userRuleDataType.userRuleEntities?.defaultLanguage ??
                          0] ??
                  '',
            );
            getCloudyDataSubscription = cloudyDataAsStream.data?.listen((data) {
              for (var element in data) {
                final currentData = element.data;
                data.add(UserRuleDataType(
                    userRuleEntities: UserRuleEntities.fromJson(currentData),
                    isUploaded: true));
              }
              getCloudyDataCompleter
                  .complete(DataSuccess(data: data as List<UserRuleDataType>));
              getCloudyDataSubscription?.cancel();
            });
            try {
              final locallyData = getItInstance<AppPreferences>()
                  .getDataLocally(userRuleDataType
                              ?.userRuleEntities?.groupName?[
                          userRuleDataType.userRuleEntities?.defaultLanguage ??
                              0] ??
                      '');
              locallyData?.forEach((element) =>
                  !(UserRuleDataType.fromJson(jsonDecode(element)).isUploaded ??
                          true)
                      ? data
                          ?.add(UserRuleDataType.fromJson(jsonDecode(element)))
                      : null);
              if (userRuleDataType != null) {
                data.add(userRuleDataType.copyWith(isUploaded: true));
              }
            } catch (e) {
              return LocallySaveFailed();
            }
            return getCloudyDataCompleter.future;
          } catch (e) {
            return DataFailed(message: e.toString());
          }
        } else {
          List<String?>? rulesGroupsName = [];
          DataState<Stream<List>>? rulesGroupsNameAsStream =
              await _commonService.getDataFromFirestore(
                  collectionName: AppPartsConstants.rulesGroup);
          StreamSubscription? rulesGroupsNameSup;
          List<StreamSubscription?>? allRulesSup = [];
          List<DataState<Stream<List>>?>? rulesAsStream = [];
          Completer<DataState<List<UserRuleDataType>>> allRulesCompleter =
              Completer();
          try {
            rulesGroupsNameSup = rulesGroupsNameAsStream.data?.listen((onData) {
              for (var entity in onData) {
                final data = entity.data;
                rulesGroupsName.add(RuleGroupNameEntity.fromJson(data).name);
              }
              rulesGroupsNameSup?.cancel();
            }, onError: (e) => FailedToGetRuleGroupsName());
          } catch (e) {
            return FailedToGetRuleGroupsName();
          }
          try {
            data = [];
            for (var action in rulesGroupsName) {
              final ruleAsStream = await _commonService.getDataFromFirestore(
                  collectionName: action ?? '');
              rulesAsStream.add(ruleAsStream);
            }
            for (int index = 0; index < rulesAsStream.length; index++) {
              allRulesSup[index] = rulesAsStream[index]?.data?.listen((onData) {
                for (var action in onData) {
                  final actionData = action.data;
                  data?.add(UserRuleDataType(
                      userRuleEntities: UserRuleEntities.fromJson(actionData)));
                }
                allRulesSup[index]?.cancel();
              }, onError: (e) => allRulesCompleter.completeError(e.toString()));
            }
            allRulesCompleter.complete(DataSuccess(data: data));
          } catch (e) {
            return DataFailed(message: e.toString());
          }
          return allRulesCompleter.future;
        }
      } else {
        return NoInternet();
      }
    }
    //locally
    else if (!canSync || userRuleDataType?.bypass == 1) {
      if (userRuleDataType?.groupName != null) {
        try {
          List<UserRuleDataType>? data = [];
          final locallyData = getItInstance<AppPreferences>().getDataLocally(
              userRuleDataType?.userRuleEntities?.groupName?[2] ?? '');
          locallyData?.forEach((element) =>
              data.add(UserRuleDataType.fromJson(jsonDecode(element))));
          return DataSuccess(data: data);
        } catch (e) {
          return DataFailed(message: e.toString());
        }
      } else {
        List<String> groupsName = [];
        List<UserRuleDataType>? data = [];
        try {
          final locallyData = getItInstance<AppPreferences>()
              .getDataLocally(AppPartsConstants.rulesGroup);

          locallyData?.forEach((action) => groupsName.add(
              RuleGroupNameEntity.fromJson(jsonDecode(action)).name ?? ''));
        } catch (e) {
          return FailedToGetRuleGroupsName();
        }
        try {
          for (var action in groupsName) {
            final locallyData =
                getItInstance<AppPreferences>().getDataLocally(action);
            locallyData?.forEach((element) =>
                data.add(UserRuleDataType.fromJson(jsonDecode(element))));
          }
          return DataSuccess(data: data);
        } catch (e) {
          return DataFailed(message: e.toString());
        }
      }
    }
    return const DataFailed(message: "none");
  }
}
