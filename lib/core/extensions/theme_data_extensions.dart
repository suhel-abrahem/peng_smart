import 'package:flutter/material.dart';

import '../enums/theme_enums.dart';

extension ThemeDataBrightnessValueExtension on ThemeData {
  String getValue() {
    if (isDarkTheme) {
      return ThemeDataBrightness.darkTheme.toString();
    } else {
      return ThemeDataBrightness.lightTheme.toString();
    }
  }
}

extension ThemeDataBrightnessExtension on ThemeData {
  bool get isDarkTheme {
    return brightness == Brightness.dark;
  }
}