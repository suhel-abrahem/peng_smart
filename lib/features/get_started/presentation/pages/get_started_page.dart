import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../config/routes/routes_manager.dart';
import '../../../../core/enums/assets_type_enum.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/common_widget/common_Widget.dart';
import '../../../../features/home_page/presentation/pages/home_page_page.dart';
import '../../../../generated/locale_keys.g.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/enums/theme_enums.dart';
import '../../../../core/injection_container.dart';
import '../../../../core/util/helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
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
    // getItInstance<AppPreferences>().setUserFirstUse();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: Center(
              child: Text(
                LocaleKeys.getStarted.tr(),
                style: Theme.of(context).textTheme.headlineLarge,
              ).animate().slideX(
                  duration: Duration(milliseconds: 500), begin: -2, end: 0),
            ),
          ),
          SizedBox(
            height: 400.h,
            width: 300.w,
            child: LottieBuilder.asset(
              getAssetsPath(
                  assetsName: LottiesName.getStarted,
                  assetsType: AssetsType.lotties),
              repeat: true,
            ),
          ).animate().slideX(
              duration: Duration(milliseconds: 500),
              begin: 2,
              end: 0,
              delay: Duration(milliseconds: 500)),
          Container(
            height: 300.h,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(40.r))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 260.w,
                  child: ElevatedButton(
                      onPressed: () => context.push(RoutesPaths.loginRoute),
                      child: Text(
                        LocaleKeys.auth_login.tr(),
                        style: Theme.of(context).textTheme.labelLarge,
                      )),
                ),
                SizedBox(
                  width: 260.w,
                  child: ElevatedButton(
                      onPressed: () => context.push(RoutesPaths.homeRoute),
                      child: Text(
                        LocaleKeys.auth_containueAsQuest.tr(),
                        style: Theme.of(context).textTheme.labelLarge,
                      )),
                ),
                SizedBox(
                  height: 50.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        LocaleKeys.auth_dontHaveAccount.tr(),
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      TextButton(
                          onPressed: () => context.push(RoutesPaths.signUp),
                          child: Text(
                            LocaleKeys.auth_signup.tr(),
                            style: Theme.of(context).textTheme.labelLarge,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ).animate().slideY(
              duration: Duration(milliseconds: 500),
              begin: 2,
              end: 0,
              delay: Duration(milliseconds: 1000))
        ],
      )),
    );
  }
}
