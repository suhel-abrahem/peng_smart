import 'dart:ui';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../core/extensions/screen_size.dart';
import '../../core/resources/common_page/delivery_men_contaner.dart';

import '../../core/extensions/theme_data_extensions.dart';
import '../../core/injection_container.dart';
import '../../generated/locale_keys.g.dart';
import '../routes/routes_manager.dart';
import 'app_preferences.dart';

String? globalCurrentLanguage;

class UserApp extends StatelessWidget {
  const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = const MediaQueryData();
    Size size = const Size(340, 920);
    return ScreenUtilInit(
      key: ValueKey(globalCurrentLanguage),
      designSize: size,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (secondContext, child) => ThemeProvider(
        initTheme: getItInstance<AppPreferences>().getTheme(),
        builder: (p0, theme) => ResponsiveBreakpoints.builder(
            child: Builder(builder: (_) {
              size = Size(mediaQuery.w, mediaQuery.h);
              print(ResponsiveBreakpoints.of(_).breakpoint.name);
              Size newSize = Size(mediaQuery.w, mediaQuery.h);

              if (size != newSize) {
                size = newSize;
              }
              Theme.of(context).switchTheme;
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.portraitUp,
                DeviceOrientation.portraitDown,
              ]);
              SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
              return MaterialApp.router(
                title: LocaleKeys.appName.tr(),
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: getItInstance<AppPreferences>().getAppLanguageLocale(),
                scrollBehavior: const MaterialScrollBehavior().copyWith(
                  dragDevices: {
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.touch,
                  },
                ),
                themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
                theme: getItInstance<AppPreferences>().getTheme(),
                darkTheme: getItInstance<AppPreferences>().getTheme(),
                routerConfig: appRouter,
                debugShowCheckedModeBanner: false,
              );
            }),
            breakpoints: const [
              Breakpoint(start: 921, end: 1920, name: DESKTOP),
              Breakpoint(start: 0, end: 800, name: MOBILE)
            ]),
      ),
    );
  }
}
