// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class LanguageConstant {
  // static const String ARABIC = 'ar';
  // static const String ENGLISH = 'en';
  // static const String KURDISH = "fa";
  static const String LANGUAGE_ASSETS_PATH = 'assets/lang';
  static const Locale ARABIC_LOCAL = Locale('ar');
  static const Locale ENGLISH_LOCALE = Locale('en');
  static const Locale KURDISH_LOCALE = Locale("fa");
  static const List<Locale> supportedLanguages = [
    ARABIC_LOCAL,
    ENGLISH_LOCALE,
    KURDISH_LOCALE
  ];
}
