import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/usecase/usecase.dart';

import '../../core/constants/shared_preferences_keys.dart';
import '../../core/enums/sync_type_enum.dart';
import '../../core/enums/theme_enums.dart';
import '../../core/resources/data_type/items_data_type.dart';
import '../../core/resources/language_manager.dart';
import '../../core/resources/user_model/user_model.dart';
import '../../core/util/helper.dart';
import '../../features/setting/domain/entities/sync_setting_can_sync_model.dart';
import '../../features/setting/domain/entities/sync_setting_date_model.dart';
import '../../features/setting/domain/entities/sync_setting_model.dart';
import '../theme/app_themes.dart';

class AppPreferences {
  late final SharedPreferences sharedPreferences;
  AppPreferences(this.sharedPreferences);

  static Future<AppPreferences> init() async {
    return AppPreferences(await SharedPreferences.getInstance());
  }

  String getAppLanguage() {
    String? language =
        sharedPreferences.getString(SharedPreferencesKeys.PREFS_KEY_LANGUAGE);
    if (language != null && language.isNotEmpty) {
      return language;
    }
    return supportedLanguagesList[0];
  }

  Future<Locale?> setAppLanguage({required String language}) async {
    String currentLanguage = getAppLanguage();
    if (language != currentLanguage) {
      currentLanguage = language;
      sharedPreferences.setString(
          SharedPreferencesKeys.PREFS_KEY_LANGUAGE, currentLanguage);
    }
    return getLanguageLocale(currentLanguage);
  }

  Locale getAppLanguageLocale() {
    String currentLanguage = getAppLanguage();
    return getLanguageLocale(currentLanguage);
  }

  Future<void> setTheme({required ThemeDataBrightness themeData}) async {
    sharedPreferences.setString(
        SharedPreferencesKeys.PREFS_KEY_THEME, themeData.toString());
  }

  ThemeData getTheme() {
    String? theme =
        sharedPreferences.getString(SharedPreferencesKeys.PREFS_KEY_THEME);
    theme ??= ThemeDataBrightness.darkTheme.toString();
    if (theme == ThemeDataBrightness.darkTheme.toString()) {
      return darkTheme();
    } else {
      return lightTheme();
    }
  }

  bool getThemeBool() {
    String? theme =
        sharedPreferences.getString(SharedPreferencesKeys.PREFS_KEY_THEME);
    theme ??= ThemeDataBrightness.darkTheme.toString();
    return theme == ThemeDataBrightness.darkTheme.toString();
  }

  Future<void> setUserFirstUse({bool state = true}) async {
    sharedPreferences.setBool(SharedPreferencesKeys.PREFS_KEY_FIRST_USE, state);
  }

  bool getUserFirstUse() {
    return sharedPreferences
            .getBool(SharedPreferencesKeys.PREFS_KEY_FIRST_USE) ??
        true;
  }

  Future<void> setUserLoginState({bool state = true}) async {
    sharedPreferences.setBool(
        SharedPreferencesKeys.PREFS_KEY_USER_LOGGED_IN, state);
  }

  bool getUserLoginState() {
    return sharedPreferences
            .getBool(SharedPreferencesKeys.PREFS_KEY_USER_LOGGED_IN) ??
        false;
  }

  Future<void> setUserInfo(UserModel userModel) async {
    sharedPreferences.setString(
        SharedPreferencesKeys.PREFS_KEY_USER, jsonEncode(userModel.toJson()));
  }

  Future<String> getUserInfo() async {
    return sharedPreferences.getString(SharedPreferencesKeys.PREFS_KEY_USER) ??
        '';
  }

  Map<String, dynamic> getSyncType() {
    String? savesData =
        sharedPreferences.getString(SharedPreferencesKeys.PREFS_KEY_SYNC_TYPE);
    return savesData != null
        ? jsonDecode(savesData)
        : SyncSettingModel(
            auto: SyncTypeEnum.custom.formattedValue,
            tables: SyncTypeEnum.never.formattedValue,
            charts: SyncTypeEnum.never.formattedValue,
            items: SyncTypeEnum.never.formattedValue,
            deliveryNames: SyncTypeEnum.never.formattedValue,
            deliveryLocations: SyncTypeEnum.never.formattedValue,
            deliveryClients: SyncTypeEnum.never.formattedValue,
            rule: SyncTypeEnum.never.formattedValue,
          ).toJson();
  }

  Future<void> setSyncType({required SyncSettingModel syncModel}) async {
    await sharedPreferences.setString(SharedPreferencesKeys.PREFS_KEY_SYNC_TYPE,
        jsonEncode(syncModel.toJson()));
  }

  Future<void> setDataLocally(
      {required String key, required List<String> dataAsJson}) async {
    await sharedPreferences.setStringList(key, dataAsJson);
  }

  List<String>? getDataLocally(String key) {
    return sharedPreferences.getStringList(key);
  }

  // Future<void> setCollectionsNames(
  //     {required String key, required List<String> collectionsNames}) async {
  //   await sharedPreferences.setString(key, jsonEncode(collectionsNames));
  // }

  // List<String> getCollectionsNames() {
  //   return jsonDecode(sharedPreferences
  //           .getString(SharedPreferencesKeys.PREFS_KEY_COLLECTIONS_NAMES) ??
  //       '[]') as List<String>;
  // }

  Map<String, dynamic> getSyncDate() {
    String? savesData =
        sharedPreferences.getString(SharedPreferencesKeys.PREFS_KEY_SYNC_DATE);
    return savesData != null
        ? jsonDecode(savesData)
        : const SyncSettingDateModel().toJson();
  }

  Future<void> setSyncDate(
      {required SyncSettingDateModel syncDateModel}) async {
    await sharedPreferences.setString(SharedPreferencesKeys.PREFS_KEY_SYNC_DATE,
        jsonEncode(syncDateModel.toJson()));
  }

  Future<void> checkDateToSync() async {
    Map<String, dynamic> dates = getSyncDate();
    Map<String, dynamic> syncTimes = getSyncType();
    Map<String, dynamic> canSync = getCanSync();
    dates.forEach((key, value) {
      if (syncTimes[key] != SyncTypeEnum.always.formattedValue &&
          syncTimes[key] != SyncTypeEnum.never.formattedValue &&
          syncTimes[key] != SyncTypeEnum.custom.formattedValue) {
        DateTime time = DateTime.tryParse(value ?? '') ?? DateTime.now();

        DateTime timeNow = DateTime.now();
        bool comparisonResult =
            ((time.isBefore(timeNow)) || (time.isAtSameMomentAs(timeNow)));

        if (comparisonResult) {
          String? durationAsString = syncTimes[key];
          Duration duration = Helper.convertStringToDurations(durationAsString);
          dates[key] = timeNow.add(duration).toString();
          canSync[key] = true;
        }
      } else if (syncTimes[key] == SyncTypeEnum.always.formattedValue) {
        canSync[key] = true;
      } else {
        canSync[key] = false;
      }
    });
    await setSyncDate(
        syncDateModel:
            SyncSettingDateModel.fromJson(jsonDecode(jsonEncode(dates))));
    await setCanSync(
        syncCanSyncModel:
            SyncSettingCanSyncModel.fromJson(jsonDecode(jsonEncode(canSync))));
  }

  Map<String, dynamic> getCanSync() {
    String? savesData = sharedPreferences
        .getString(SharedPreferencesKeys.PREFS_KEY_SYNC_CAN_SYNC);
    return savesData != null
        ? jsonDecode(savesData)
        : const SyncSettingCanSyncModel().toJson();
  }

  Future<void> setCanSync(
      {required SyncSettingCanSyncModel syncCanSyncModel}) async {
    await sharedPreferences.setString(
        SharedPreferencesKeys.PREFS_KEY_SYNC_CAN_SYNC,
        jsonEncode(syncCanSyncModel.toJson()));
  }

  Future<void> resetCanSync({required String key, bool canSync = false}) async {
    Map<String, dynamic> canSyncs = getCanSync();
    canSyncs[key] = canSync;
    await setCanSync(
        syncCanSyncModel:
            SyncSettingCanSyncModel.fromJson(jsonDecode(jsonEncode(canSyncs))));
  }

  Map<ItemsDataType, dynamic> getItemsInCart(String customerNumber) {
    final data = sharedPreferences.getString(customerNumber);
    Map<ItemsDataType, dynamic> map = {};
    if (data != null && data.isNotEmpty) {
      Map<String, dynamic> stringMap = jsonDecode(data);

      stringMap.forEach((key, value) =>
          map.addAll({ItemsDataType.fromJson(jsonDecode(key)): value}));
    }
    return map;
  }

  Future<void> setItemsToCart(
      {required String customerNumber,
      required Map<ItemsDataType, dynamic> items}) async {
    Map<String, dynamic> map = {};
    items.forEach((key, value) => map.addAll({jsonEncode(key): value}));
    await sharedPreferences.setString(customerNumber, jsonEncode(map));
  }
}
