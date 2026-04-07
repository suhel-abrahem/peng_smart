import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:restart/restart.dart';

import '/core/resource/main_page/glew_effect.dart';
import '/main.dart';
import '../../../config/app/app_preferences.dart';
import '../../../config/route/routes_manager.dart';
import '../../../config/theme/app_theme.dart';

import '../../../generated/locale_keys.g.dart';
import '../../constants/font_constants.dart';
import '../../constants/language_constant.dart';
import '../../data_state/data_state.dart';
import '../../dependencies_injection.dart';
import '../../enums/psition_enum.dart';
import '../../util/helper/helper.dart';
import '../color_manager.dart';
import '../custom_widget/dropdown/drop_down_with_label.dart';
import '../custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../firebase_common_services/firebase_messageing_service.dart';
import '../image_widget.dart';
import 'drawer_button.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String? selectedLanguage;
  bool? isDarkTheme = false;

  @override
  void initState() {
    isDarkTheme = getItInstance<AppPreferences>().getAppTheme();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectedLanguage = context.locale.languageCode;
    return Container(
      width: 250.w,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadiusDirectional.horizontal(
          end: Radius.circular(50.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Divider(
          //   color: ColorManager.backgroundColor.withOpacity(0.5),
          //   thickness: 2.h,
          // ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: DrawerButtonWidget(
              selected: currentPath?.endsWith(RoutesPath.homePage),
              title: LocaleKeys.homePage_title.tr(),
              icon: Icons.home,
              onPressed: () {
                context.push(RoutesPath.homePage);
              },
            ),
          ),

          DrawerButtonWidget(
            selected: currentPath?.endsWith(RoutesPath.settingPage),
            title: LocaleKeys.profilePage_title.tr(),
            icon: Icons.account_circle,
            onPressed: () {
              context.push(RoutesPath.settingPage);
            },
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Divider(
              color: ColorManager.backgroundColor.withValues(alpha: 0.5),
              thickness: 2.h,
            ),
          ),
          Spacer(),
          //Language dropdown
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: 8.w),
                    child: Icon(
                      Icons.language,
                      color: ColorManager.darkTextColor,
                      size: 24.sp,
                    ),
                  ),
                  DropDownWithLabel<String>(
                    menuBoxShadow: BoxShadow(
                      color: Theme.of(context).shadowColor,
                      blurRadius: 4.r,
                      offset: Offset(1.w, 2.h),
                    ),
                    boxShadow: BoxShadow(
                      color: Theme.of(context).shadowColor,

                      offset: Offset(0, 1.h),
                    ),
                    valueColor: ColorManager.darkTextColor,
                    borderRadius: BorderRadius.circular(30.r),
                    label: LocaleKeys.language_choose.tr(),
                    labelStyle: Theme.of(context).textTheme.labelLarge
                        ?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                          color: ColorManager.darkTextColor,
                        ),
                    labelPadding: EdgeInsets.only(bottom: 4.h),
                    labelPosition: Position.upper,
                    backgroundColor: Theme.of(context).primaryColor,
                    items: LanguageConstant.supportedLanguagesNames,
                    onChange: (newLanguage) async {
                      if (newLanguage != null) {
                        setState(() {
                          selectedLanguage = newLanguage;
                        });
                        context.setLocale(Helper.getLocaleByName(newLanguage));
                        await getItInstance<AppPreferences>().setLanguage(
                          languageName: newLanguage,
                        );

                        setState(() {
                          lastPath = newLanguage;
                        });
                      }
                    },
                    stringConverter: (string) {
                      return string.toString();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                    dropDownWidth: 100.w,
                    dropDownHeight: 40.h,
                    itemWidth: 120.w,
                    isLoading: false,
                    value: Helper.getLanguageName(
                      selectedLanguage ??
                          LanguageConstant.enLoacle.languageCode,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 20.w,
              end: 20.w,
              top: 12.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.brightness_6,
                      color: ColorManager.darkTextColor,
                      size: 24.sp,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 8.w),
                      child: Text(
                        LocaleKeys.theme_choose.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                          color: ColorManager.darkTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                  child: ThemeSwitcher(
                    builder: (context2) {
                      return SizedBox(
                        width: 70.w,

                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Switch.adaptive(
                            value: isDarkTheme ?? false,
                            inactiveTrackColor: ColorManager.backgroundColor,
                            activeTrackColor: ColorManager.darkBackground,
                            thumbIcon: WidgetStateProperty.resolveWith((
                              states,
                            ) {
                              return Icon(
                                (isDarkTheme ?? false)
                                    ? Icons.dark_mode
                                    : Icons.light_mode,
                                size: 16.sp,
                                color: (isDarkTheme ?? false)
                                    ? ColorManager.darkBackground
                                    : ColorManager.darkBackground,
                              );
                            }),
                            onChanged: (bool value) {
                              setState(() {
                                isDarkTheme = value;
                              });
                              getItInstance<AppPreferences>().setAppTheme(
                                isDarkTheme: isDarkTheme,
                              );
                              ThemeSwitcher.of(context2).changeTheme(
                                offset: Offset(-1, -1),
                                theme: (isDarkTheme ?? false)
                                    ? darkTheme()
                                    : lightTheme(),
                                isReversed: true,
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
