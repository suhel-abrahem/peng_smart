import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import '../../../config/app/app.dart';
import '../../extensions/screen_size.dart';
import '../common_widget/network_image/network_image.dart';
import '../../../generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../config/app/app_preferences.dart';
import '../../../config/routes/routes_manager.dart';
import '../../../features/home_page/presentation/pages/home_page_page.dart';

import '../../enums/theme_enums.dart';
import '../../injection_container.dart';

import '../color_manager.dart';
import '../common_widget/common_Widget.dart';
import '../common_widget/dropdown/dropdown.dart';
import '../language_manager.dart';

class MainCostumeDrawer extends StatefulWidget {
  const MainCostumeDrawer({
    super.key,
  });

  @override
  State<MainCostumeDrawer> createState() => _MainCostumeDrawerState();
}

class _MainCostumeDrawerState extends State<MainCostumeDrawer> {
  String? currentLanguage;
  String? errorMessage;
  ThemeDataBrightness? currentTheme;
  late bool isDarkTheme;

  IconData changeThemButtonIcon = Icons.dark_mode;

  //final MediaQueryData mediaQuery = const MediaQueryData();
  //late double padding;
  final double drawerDividerWidth = 270.w;
  final double drawerWidth = 290.w;
  IconData getThemeButtonText() {
    return (isDarkTheme) ? Icons.dark_mode : Icons.light_mode;
  }

  ThemeDataBrightness getCurrentThemeEnum() {
    return (isDarkTheme)
        ? ThemeDataBrightness.darkTheme
        : ThemeDataBrightness.lightTheme;
  }

  @override
  void initState() {
    currentLanguage = getItInstance<AppPreferences>().getAppLanguage();
    isDarkTheme = getItInstance<AppPreferences>().getThemeBool();
    currentTheme = getCurrentThemeEnum();
    changeThemButtonIcon = getThemeButtonText();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //padding = mediaQuery.h >= 1000 ? 24.h : 15.5.h;
    //double drawerDividerWidth = getDrawerWidth() - 20.w;
    return Container(
        width: 290.w,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Theme.of(context).shadowColor, blurRadius: 10.r)
            ],
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20.r)),
        child: ListView());
  }
}
