import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_home/core/resource/user_info_entity/user_info_entity.dart';

import '../../core/constants/language_constant.dart';
import '../../core/constants/shared_preferences_keys.dart';

class AppPreferences {
  late final SharedPreferences _sharedPreferences;
  AppPreferences(SharedPreferences sharedPreferences)
    : _sharedPreferences = sharedPreferences;

  Future<void> setLanguage({String? languageName}) async {
    await _sharedPreferences.setString(
      SharedPreferencesKeys.appLanguageKey,
      languageName ?? LanguageConstant.en,
    );
  }

  String? getLanguage() {
    return _sharedPreferences.getString(SharedPreferencesKeys.appLanguageKey);
  }

  Future<void> setAppTheme({bool? isDarkTheme}) async {
    await _sharedPreferences.setBool(
      SharedPreferencesKeys.appThemeKey,
      isDarkTheme ?? false,
    );
  }

  bool? getAppTheme() {
    return _sharedPreferences.getBool(SharedPreferencesKeys.appThemeKey);
  }

  Future<void> setDataLocale({
    required List<String?>? data,
    required String? key,
  }) async {
    await _sharedPreferences.setStringList(
      key ?? "",
      (data ?? [""]).whereType<String>().toList(),
    );
  }

  List<String?>? getDataLocale({String? key}) {
    return _sharedPreferences.getStringList(key ?? "");
  }

  bool? isFirstUse() {
    return _sharedPreferences.getBool(SharedPreferencesKeys.isFirstUseKey) ??
        false;
  }

  Future<void> setFirstUse({required bool isFirstUse}) async {
    await _sharedPreferences.setBool(
      SharedPreferencesKeys.isFirstUseKey,
      isFirstUse,
    );
  }

  Future<void> clearSession() async {
    await _sharedPreferences.remove(SharedPreferencesKeys.userInfoKey);
  }

  Future<void> setUserInfo(UserInfoEntity userInfo) async {
    final userInfoJson = jsonEncode(userInfo.toJson());
    await _sharedPreferences.setString(
      SharedPreferencesKeys.userInfoKey,
      userInfoJson,
    );
  }

  UserInfoEntity? getUserInfo() {
    final userInfoJson = _sharedPreferences.getString(
      SharedPreferencesKeys.userInfoKey,
    );
    print("UserInfo JSON: $userInfoJson");
    print(
      "UserInfo : ${UserInfoEntity.fromJson(jsonDecode(userInfoJson ?? "{}"))}",
    );
    return UserInfoEntity.fromJson(jsonDecode(userInfoJson ?? "{}"));
  }
}
