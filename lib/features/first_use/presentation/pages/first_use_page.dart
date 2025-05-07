import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/routes/routes_manager.dart';
import '../../../../core/enums/assets_type_enum.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/common_widget/common_Widget.dart';
import '../../../../core/util/helper.dart';
import '../../../../features/home_page/presentation/pages/home_page_page.dart';
import '../../../../generated/locale_keys.g.dart';

import '../../../../config/app/app.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../core/enums/theme_enums.dart';
import '../../../../core/injection_container.dart';
import '../../../../core/resources/common_widget/dropdown/dropdown.dart';
import '../../../../core/resources/language_manager.dart';

class FirstUsePage extends StatefulWidget {
  const FirstUsePage({super.key});

  @override
  State<FirstUsePage> createState() => _FirstUsePageState();
}

class _FirstUsePageState extends State<FirstUsePage> {
  String? currentLanguage;
  ThemeDataBrightness? currentTheme;
  late bool isDarkTheme;
  bool isHidden = true;
  IconData changeThemButtonIcon = Icons.dark_mode;

  @override
  void initState() {
    currentLanguage = getItInstance<AppPreferences>().getAppLanguage();
    isDarkTheme = getItInstance<AppPreferences>().getThemeBool();
    currentTheme = Helper.getCurrentThemeEnum(isDarkTheme);
    changeThemButtonIcon = Helper.getThemeButtonText(isDarkTheme);
    getItInstance<AppPreferences>().setUserFirstUse();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: Stack(
            children: [
              //main container
              PositionedDirectional(
                  bottom: 0,
                  start: 0,
                  child: Container(
                    padding: EdgeInsets.only(top: 150.h),
                    width: 340.w,
                    height: 400.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.r))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          LocaleKeys.hiThere.tr(),
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        SizedBox(
                          width: 200.w,
                          child: ElevatedButton(
                              onPressed: () {
                                getItInstance<AppPreferences>()
                                    .setUserFirstUse(state: false);
                                context.push(RoutesPaths.getStarted);
                              },
                              child: Text(LocaleKeys.getStarted.tr())),
                        )
                      ],
                    ),
                  ).animate().slideY(
                        duration: Duration(milliseconds: 600),
                        begin: 1,
                        end: 0,
                      )),
              // circle container
              PositionedDirectional(
                  bottom: 250.h,
                  start: 0,
                  end: 0,
                  child: Container(
                    width: 240.w,
                    height: 350.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        shape: BoxShape.circle),
                  ).animate().slideY(
                        duration: Duration(milliseconds: 600),
                        begin: 1,
                        end: 0,
                      )),
              PositionedDirectional(
                  bottom: 250.h,
                  start: 0,
                  end: 0,
                  child: Container(
                    width: 240.w,
                    height: 350.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        shape: BoxShape.circle),
                    child: ClipRRect(
                      child: Image.asset(
                        getAssetsPath(
                            assetsName: ImagesName.logo,
                            assetsType: AssetsType.png),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ).animate().slideY(
                      duration: Duration(milliseconds: 1000),
                      begin: -2,
                      end: 0,
                      curve: Curves.bounceIn,
                      delay: Duration(milliseconds: 600))),
              PositionedDirectional(
                start: 0,
                child: Container(
                        width: 340.w,
                        height: 70.h,
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(.3),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropDownWithLabel<String>(
                                label: LocaleKeys.language.tr(),
                                dropDownWidth: 100.w,
                                dropDownHeight: 39.h,
                                items: supportedLanguagesList,
                                isLoading: false,
                                value: currentLanguage,
                                onChange: (language) async {
                                  setState(() {
                                    currentLanguage = language;

                                    context.setLocale((getLanguageLocale(
                                        currentLanguage ??
                                            supportedLanguagesList[0])));
                                    getItInstance<AppPreferences>()
                                        .setAppLanguage(
                                            language: currentLanguage ??
                                                supportedLanguagesList[0]);
                                    globalCurrentLanguage = language;
                                  });
                                },
                                stringConverter: (string) {
                                  return string.toString();
                                }),
                            ThemeSwitcher(builder: (context2) {
                              return TextButton(
                                child: Icon(changeThemButtonIcon),
                                style: Theme.of(context)
                                    .textButtonTheme
                                    .style
                                    ?.copyWith(
                                        padding: const WidgetStatePropertyAll(
                                            EdgeInsets.zero)),
                                onPressed: () {
                                  setState(() {
                                    isDarkTheme = !(isDarkTheme);
                                    changeThemButtonIcon =
                                        Helper.getThemeButtonText(isDarkTheme);
                                    currentTheme =
                                        Helper.getCurrentThemeEnum(isDarkTheme);
                                    getItInstance<AppPreferences>().setTheme(
                                        themeData: currentTheme ??
                                            ThemeDataBrightness.darkTheme);
                                  });
                                  ThemeSwitcher.of(context2).changeTheme(
                                      offset: const Offset(-1, -1),
                                      theme: getItInstance<AppPreferences>()
                                          .getTheme(),
                                      isReversed: true // default: false
                                      );
                                },
                              );
                            })
                          ],
                        ))
                    .animate()
                    .slide(
                        delay: const Duration(milliseconds: 1600),
                        duration: const Duration(milliseconds: 1000),
                        begin: const Offset(-1, -1),
                        end: Offset.zero,
                        curve: Curves.bounceIn),
              ),
            ],
          )),
    );
  }
}
