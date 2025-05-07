import 'package:flutter/material.dart';

import '../constants/language_constants.dart';

const Map<String, Locale> supportedLocales = {
  "العربية": LanguageConstant.ARABIC_LOCAL,
  "English": LanguageConstant.ENGLISH_LOCALE,
  "كوردى": LanguageConstant.KURDISH_LOCALE
};

Locale getLanguageLocale(String language) {
  if (supportedLocales.containsKey(language)) {
    return supportedLocales[language] ?? LanguageConstant.ARABIC_LOCAL;
  } else {
    return LanguageConstant.ARABIC_LOCAL;
  }
}

const List<String> supportedLanguagesList = ["العربية", "English", "كوردى"];
