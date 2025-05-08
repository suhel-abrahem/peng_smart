import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/usecase/usecase.dart';

import '../../core/constants/shared_preferences_keys.dart';
import '../../core/enums/sync_type_enum.dart';
import '../../core/enums/theme_enums.dart';
import '../../core/resources/language_manager.dart';
import '../../core/resources/user_model/user_model.dart';
import '../../core/util/helper.dart';
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

  

  Future<void> setDataLocally(
      {required String key, required List<String> dataAsJson}) async {
    await sharedPreferences.setStringList(key, dataAsJson);
  }

  List<String>? getDataLocally(String key) {
    return sharedPreferences.getStringList(key);
  }

  

  
}
