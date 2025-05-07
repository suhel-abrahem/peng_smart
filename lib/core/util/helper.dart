import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/routes/routes_manager.dart';
import '../../generated/locale_keys.g.dart';
import '../constants/font_constants.dart';
import '../constants/language_constants.dart';
import '../enums/theme_enums.dart';
import '../resources/color_manager.dart';

class Helper {
  static RichText labelText(
      {String label = '',
      bool isRequired = true,
      TextStyle? labelStyle,
      bool readText = false}) {
    return RichText(
        text: TextSpan(
            text: label,
            style: labelStyle ??
                (rootNavigatorKey.currentContext != null
                    ? (readText
                        ? Theme.of(rootNavigatorKey.currentContext!)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color:
                                    Theme.of(rootNavigatorKey.currentContext!)
                                        .colorScheme
                                        .error)
                        : Theme.of(rootNavigatorKey.currentContext!)
                            .textTheme
                            .labelLarge)
                    : TextStyle(
                        fontFamily: FontConstants.notoSans,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.textColor)),
            children: [
          if (isRequired && label.isNotEmpty)
            TextSpan(
                text: " *",
                style: rootNavigatorKey.currentContext != null
                    ? Theme.of(rootNavigatorKey.currentContext!)
                        .inputDecorationTheme
                        .errorStyle
                    : const TextStyle(color: ColorManager.error))
        ]));
  }

  static Duration convertStringToDurations(String? durationAsString) {
    durationAsString ??= '';

    if (durationAsString.isNotEmpty) {
      switch (durationAsString) {
        case 'oneDay':
          return const Duration(days: 1);
        case 'oneWeek':
          return const Duration(days: 7);
        case 'oneMonth':
          return const Duration(days: 30);
        case 'oneYear':
          return const Duration(days: 365);
        default:
          return Duration.zero;
      }
    }
    return Duration.zero;
  }

  static int bypassOptionToInt(
      {String? bypassOption = LocaleKeys.bypassOption_off}) {
    int bypassOptionAsInt = 0;
    if (bypassOption == LocaleKeys.bypassOption_locally.tr()) {
      bypassOptionAsInt = 1;
    } else if (bypassOption == LocaleKeys.bypassOption_fromCloud.tr()) {
      bypassOptionAsInt = 2;
    } else {
      bypassOptionAsInt = 0;
    }
    return bypassOptionAsInt;
  }

  static String bypassOptionToString({int? bypassOption = 0}) {
    String bypassOptionAsString = LocaleKeys.bypassOption_off.tr();
    if (bypassOption == 1) {
      bypassOptionAsString = LocaleKeys.bypassOption_locally.tr();
    } else if (bypassOption == 2) {
      bypassOptionAsString = LocaleKeys.bypassOption_fromCloud.tr();
    } else {
      bypassOptionAsString = LocaleKeys.bypassOption_off.tr();
    }
    return bypassOptionAsString;
  }

  static String getConnectionResultAsString(
      ConnectivityResult? connectionResult) {
    connectionResult ??= ConnectivityResult.none;
    String connectionResultAsString = LocaleKeys.connection_none.tr();
    if (connectionResult == ConnectivityResult.none) {
      connectionResultAsString = LocaleKeys.connection_none.tr();
    } else {
      if (connectionResult == ConnectivityResult.wifi) {
        connectionResultAsString = LocaleKeys.connection_wifi.tr();
      } else if (connectionResult == ConnectivityResult.mobile) {
        connectionResultAsString = LocaleKeys.connection_mobile.tr();
      } else if (connectionResult == ConnectivityResult.bluetooth) {
        connectionResultAsString = LocaleKeys.connection_bluetooth.tr();
      } else if (connectionResult == ConnectivityResult.vpn) {
        connectionResultAsString = LocaleKeys.connection_vpn.tr();
      } else if (connectionResult == ConnectivityResult.ethernet) {
        connectionResultAsString = LocaleKeys.connection_ethernet.tr();
      } else {
        connectionResultAsString = LocaleKeys.connection_otherz.tr();
      }
    }
    return connectionResultAsString;
  }

  static String nameLanguageSelector<T>(
      {required BuildContext context,
      required int? defaultLanguage,
      required List<T?>? names}) {
    String output = '';
    switch (context.locale) {
      case LanguageConstant.ARABIC_LOCAL:
        ((names?.isNotEmpty ?? false) &&
                names![0] != null &&
                names[0].toString().trim().isNotEmpty)
            ? output = names[0].toString()
            : output = ((names?.isNotEmpty ?? false) &&
                    names?[defaultLanguage ?? 0] != null)
                ? names![defaultLanguage ?? 0].toString()
                : '';
        break;
      case LanguageConstant.ENGLISH_LOCALE:
        ((names?.length ?? 0) > 1 &&
                names?[1] != null &&
                (names?[1].toString().trim().isNotEmpty ?? false))
            ? output = names![1].toString()
            : output = ((names?.isNotEmpty ?? false) &&
                    (names?[defaultLanguage ?? 0] != null))
                ? names![defaultLanguage ?? 0].toString()
                : '';
        break;
      case LanguageConstant.KURDISH_LOCALE:
        ((names?.length ?? 0) > 2 &&
                names?[2] != null &&
                (names?[2].toString().trim().isNotEmpty ?? false))
            ? output = names![2].toString()
            : output = ((names?.isNotEmpty ?? false) &&
                    (names?[defaultLanguage ?? 0] != null))
                ? names![defaultLanguage ?? 0].toString()
                : '';
        break;
      default:
        output = ((names?.isNotEmpty ?? false) &&
                (names?[defaultLanguage ?? 0] != null))
            ? names![defaultLanguage ?? 0].toString()
            : '';
        break;
    }
    return output;
  }

  static int languageNameToInt(String languageName) {
    return languageName == LocaleKeys.kr
        ? 2
        : languageName == LocaleKeys.en
            ? 1
            : 0;
  }

  static String ruleNameInEntityFromIndex(int? index) {
    index ??= 0;
    String output = '';
    switch (index) {
      case 0:
        output = "canAcceptRequisiteFromAnotherUser";
      case 1:
        output = "canAcceptRequisiteFromClient";
      case 2:
        output = "canAddClients";
      case 3:
        output = "canAddUsers";
      case 4:
        output = "canBlockClients";
      case 5:
        output = "canBlockUsers";
      case 6:
        output = "canEditAppFeatures";
      case 7:
        output = "canEditBills";
      case 8:
        output = "canEditDepartments";
      case 9:
        output = "canEditHisRulesGroups";
      case 10:
        output = "canEditItems";
      case 11:
        output = "canEditOffers";
      case 12:
        output = "canEditRulesGroups";
      case 13:
        output = "canMonitor";
      case 14:
        output = "canOrder";
      case 15:
        output = "canRemoveClient";
      case 16:
        output = "canRemoveUsers";
      case 17:
        output = "canShowBills";
      default:
        output = "canOrder";
    }
    return output;
  }

  static String? customDateFormatAsString(
      {required DateTime? date, DateFormat? format}) {
    format ?? DateFormat("yy/MM/dd");
    if (date != null && format != null) {
      return format.format(date);
    }
    return null;
  }

  static String? dateNullSafety({String? date, String? message}) {
    if (date == null) {
      return message;
    }
    return date;
  }

  static double dimensionConverter(
      {required double? dimensionValue, required String? unit}) {
    double output = 0.0;
    unit ?? "m";
    if (unit == "m") {
      output = dimensionValue ?? 0.0;
    } else if (unit == "mm") {
      output = (dimensionValue ?? 0.0) / 1000.0;
    } else {
      output = (dimensionValue ?? 0.0) / 100.0;
    }
    return output;
  }

  static IconData getThemeButtonText(bool isDarkTheme) {
    return (isDarkTheme) ? Icons.dark_mode : Icons.light_mode;
  }

  static ThemeDataBrightness getCurrentThemeEnum(bool isDarkTheme) {
    return (isDarkTheme)
        ? ThemeDataBrightness.darkTheme
        : ThemeDataBrightness.lightTheme;
  }
}
