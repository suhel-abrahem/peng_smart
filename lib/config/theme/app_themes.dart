import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/font_constants.dart';
import '../../core/extensions/theme_data_extensions.dart';
import '../../core/resources/color_manager.dart';

ThemeData darkTheme() {
  return ThemeData(
      focusColor: ColorManager.focusColor,
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: ColorManager.primaryColor,
      primarySwatch: ColorManager.primarySwatch,
      disabledColor: ColorManager.disabledColor,
      shadowColor: ColorManager.shadowColor,
      cardColor: ColorManager.surfaceColor,
      scaffoldBackgroundColor: ColorManager.backgroundColor,
      textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 25.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.textColor),
          headlineMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.textColor),
          headlineSmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.secondaryTextColor),
          bodyLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: ColorManager.secondaryTextColor),
          bodyMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.secondaryTextColor),
          bodySmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.secondaryTextColor),
          labelLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: ColorManager.textColor),
          labelMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorManager.textColor),
          labelSmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.textColor)),
      primaryTextTheme: TextTheme(
          headlineLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 25.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.primaryColor),
          headlineMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.primaryColor),
          headlineSmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.primaryColor),
          bodyLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: ColorManager.primaryColor),
          bodyMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.primaryColor),
          bodySmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.primaryColor),
          labelLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: ColorManager.primaryColor),
          labelMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorManager.primaryColor),
          labelSmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.primaryColor)),
      cardTheme: CardTheme(
          color: ColorManager.primaryContainerColor,
          shadowColor: ColorManager.shadowColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          elevation: 2.0),
      dialogTheme: DialogTheme(
          iconColor: ColorManager.primaryColor,
          shadowColor: ColorManager.shadowColor,
          backgroundColor: ColorManager.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: const BorderSide(
                  color: ColorManager.borderColor,
                  width: 1,
                  style: BorderStyle.solid))),
      dataTableTheme: DataTableThemeData(
          headingRowColor: MaterialStateColor.resolveWith(
            (states) => ColorManager.primaryColorLight,
          ),
          dataRowColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(MaterialState.hovered)) {
              return ColorManager.primarySwatch.shade50;
            }
            return ColorManager.backgroundColor;
          }),
          headingTextStyle: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: ColorManager.textColor),
          dataTextStyle: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ColorManager.secondaryTextColor),
          dividerThickness: 1),
      colorScheme: ColorScheme.dark(
          shadow: ColorManager.shadowColor,
          brightness: Brightness.dark,
          primary: ColorManager.primaryColor,
          onPrimary: ColorManager.surfaceColor,
          onSurface: ColorManager.onSurface,
          secondary: ColorManager.primaryColorLight,
          error: ColorManager.error,
          surface: ColorManager.surfaceColor,
          primaryContainer: ColorManager.primaryContainerColor),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
        filled: true,
        fillColor: ColorManager.surfaceColor,
        hoverColor: ColorManager.primarySwatch.shade100,
        focusColor: ColorManager.surfaceColor,
        labelStyle: TextStyle(
            fontFamily: FontConstants.notoSans,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: ColorManager.secondaryTextColor),
        errorStyle: TextStyle(
            fontFamily: FontConstants.notoSans,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: ColorManager.error),
        helperStyle: TextStyle(
            fontFamily: FontConstants.notoSans,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: ColorManager.error),
        hintStyle: TextStyle(
            fontFamily: FontConstants.notoSans,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: ColorManager.error),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: ColorManager.focusColor,
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(9.r)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: ColorManager.error, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(9.r)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(
                color: ColorManager.borderColor,
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(9.r)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: ColorManager.borderColor,
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(9.r)),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: ColorManager.disabledColor,
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(9.r)),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.r))),
              side: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return const BorderSide(
                      color: ColorManager.disabledColor,
                      width: 1,
                      style: BorderStyle.solid);
                } else if (states.contains(MaterialState.error)) {
                  return const BorderSide(
                      color: ColorManager.error,
                      width: 1,
                      style: BorderStyle.solid);
                } else if (states.contains(MaterialState.focused)) {
                  return const BorderSide(
                      color: ColorManager.focusColor,
                      width: 1,
                      style: BorderStyle.solid);
                }
                return const BorderSide(
                    color: ColorManager.borderColor,
                    width: 1,
                    style: BorderStyle.solid);
              }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade400;
                }
                return Colors.transparent;
              }),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return ColorManager.disabledColor;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.textColor;
                }

                return ColorManager.textColor;
              }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade400;
                } else if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                }
                return ColorManager.surfaceColor;
              }),
              padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                  (states) {
                if (states.contains(MaterialState.pressed)) {
                  return EdgeInsets.symmetric(vertical: 8.h, horizontal: 13.w);
                }
                return EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w);
              }),
              textStyle: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 16.sp,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.w500,
                  );
                } else if (states.contains(MaterialState.hovered)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 16.sp,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.w500,
                  );
                }
                return TextStyle(
                  fontFamily: FontConstants.notoSans,
                  fontSize: 14.sp,
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.w500,
                );
              }))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shadowColor:
                  const MaterialStatePropertyAll(ColorManager.shadowColor),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade900;
                } else if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade500;
                } else if (states.contains(MaterialState.disabled)) {
                  return ColorManager.disabledColor;
                }
                return ColorManager.primaryColor;
              }),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return ColorManager.disabledTextColor;
                }
                return ColorManager.textColor;
              }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade200;
                }
                return ColorManager.surfaceColor;
              }),
              shape:
                  MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
                if (states.contains(MaterialState.disabled)) {
                  return RoundedRectangleBorder(
                      side: const BorderSide(
                          color: ColorManager.disabledColor,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(12.r));
                }
                return RoundedRectangleBorder(
                    side: const BorderSide(
                        color: ColorManager.borderColor,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(12.r));
              }),
              padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                  (states) {
                if (states.contains(MaterialState.pressed)) {
                  return EdgeInsets.symmetric(vertical: 13.h, horizontal: 23.w);
                }
                return EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w);
              }),
              textStyle: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 22.sp,
                    color: ColorManager.textColor,
                    fontWeight: FontWeight.w500,
                  );
                } else if (states.contains(MaterialState.hovered)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 22.sp,
                    color: ColorManager.textColor,
                    fontWeight: FontWeight.w500,
                  );
                }
                return TextStyle(
                  fontFamily: FontConstants.notoSans,
                  fontSize: 20.sp,
                  color: ColorManager.textColor,
                  fontWeight: FontWeight.w500,
                );
              }))),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              shadowColor:
                  const MaterialStatePropertyAll(ColorManager.shadowColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.r))),
              side: MaterialStateProperty.resolveWith((states) {
                return BorderSide.none;
                // if (states.contains(MaterialState.disabled)) {
                //   return const BorderSide(
                //       color: ColorManager.disabledColor,
                //       width: 1,
                //       style: BorderStyle.solid);
                // } else if (states.contains(MaterialState.error)) {
                //   return const BorderSide(
                //       color: ColorManager.error,
                //       width: 1,
                //       style: BorderStyle.solid);
                // } else if (states.contains(MaterialState.focused)) {
                //   return const BorderSide(
                //       color: ColorManager.focusColor,
                //       width: 1,
                //       style: BorderStyle.solid);
                // }
                // return const BorderSide(
                //     color: ColorManager.borderColor,
                //     width: 1,
                //     style: BorderStyle.solid);
              }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade400;
                }
                return Colors.transparent;
              }),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return ColorManager.disabledColor;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.textColor;
                }

                return ColorManager.textColor;
              }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade400;
                } else if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                }
                return ColorManager.surfaceColor;
              }),
              padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                  (states) {
                if (states.contains(MaterialState.pressed)) {
                  return EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.w);
                }
                return EdgeInsets.zero;
              }),
              textStyle: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 16.sp,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.w500,
                  );
                } else if (states.contains(MaterialState.hovered)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 16.sp,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.w500,
                  );
                }
                return TextStyle(
                  fontFamily: FontConstants.notoSans,
                  fontSize: 14.sp,
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.w500,
                );
              }))));
}

ThemeData lightTheme() {
  return ThemeData(
      colorScheme: const ColorScheme(
          primaryContainer: ColorManager.primaryContainerColor,
          brightness: Brightness.light,
          primary: ColorManager.primaryColor,
          onPrimary: ColorManager.lightBackground,
          secondary: ColorManager.primaryColor,
          onSecondary: ColorManager.lightBackground,
          error: ColorManager.error,
          onError: ColorManager.lightTextColor,
          shadow: ColorManager.lightShadowColor,
          surface: ColorManager.lightSurfaceColor,
          onSurface: ColorManager.onLightSurface),
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: ColorManager.primaryColor,
      scaffoldBackgroundColor: ColorManager.lightBackground,
      focusColor: ColorManager.focusColor,
      shadowColor: ColorManager.lightShadowColor,
      cardColor: ColorManager.surfaceColor,
      cardTheme: CardTheme(
          color: ColorManager.surfaceColor,
          shadowColor: ColorManager.shadowColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.r),
              side: const BorderSide(
                  color: ColorManager.borderColor,
                  width: 1,
                  style: BorderStyle.solid))),
      dialogTheme: DialogTheme(
          backgroundColor: ColorManager.lightSurfaceColor,
          elevation: 2,
          shadowColor: ColorManager.shadowColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.r),
              side: const BorderSide(
                  color: ColorManager.borderColor,
                  width: 1,
                  style: BorderStyle.solid)),
          iconColor: ColorManager.primaryColor,
          titleTextStyle: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: ColorManager.lightTextColor),
          contentTextStyle: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.lightSecondaryTextColor)),
      textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 25.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.lightTextColor),
          headlineMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.lightTextColor),
          headlineSmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.lightSecondaryTextColor),
          bodyLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: ColorManager.lightSecondaryTextColor),
          bodyMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.lightSecondaryTextColor),
          bodySmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.lightSecondaryTextColor),
          labelLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: ColorManager.lightTextColor),
          labelMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorManager.lightTextColor),
          labelSmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.lightTextColor)),
      primaryTextTheme: TextTheme(
          headlineLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 25.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.primaryColor),
          headlineMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.primaryColor),
          headlineSmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: ColorManager.primaryColor),
          bodyLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: ColorManager.primaryColor),
          bodyMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.primaryColor),
          bodySmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.primaryColor),
          labelLarge: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: ColorManager.primaryColor),
          labelMedium: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorManager.primaryColor),
          labelSmall: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorManager.primaryColor)),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.lightSurfaceColor,
        focusColor: ColorManager.focusColor,
        hoverColor: ColorManager.primarySwatch.shade100,
        border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.borderColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(9.r)),
        labelStyle: TextStyle(
            fontFamily: FontConstants.notoSans,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: ColorManager.lightSecondaryTextColor),
        errorStyle: TextStyle(
            fontFamily: FontConstants.notoSans,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: ColorManager.error),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.focusColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(9.r)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.error,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(9.r)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.borderColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(9.r)),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.disabledColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(9.r)),
      ),
      dataTableTheme: DataTableThemeData(
          headingRowColor: MaterialStateColor.resolveWith(
            (states) => ColorManager.primaryColorLight,
          ),
          dataRowColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(MaterialState.hovered)) {
              return ColorManager.primarySwatch.shade50;
            }
            return ColorManager.lightSurfaceColor;
          }),
          headingTextStyle: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: ColorManager.lightTextColor),
          dataTextStyle: TextStyle(
              fontFamily: FontConstants.notoSans,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ColorManager.lightSecondaryTextColor),
          dividerThickness: 1),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.r))),
              side: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return const BorderSide(
                      color: ColorManager.disabledColor,
                      width: 1,
                      style: BorderStyle.solid);
                } else if (states.contains(MaterialState.error)) {
                  return const BorderSide(
                      color: ColorManager.error,
                      width: 1,
                      style: BorderStyle.solid);
                } else if (states.contains(MaterialState.focused)) {
                  return const BorderSide(
                      color: ColorManager.focusColor,
                      width: 1,
                      style: BorderStyle.solid);
                }
                return const BorderSide(
                    color: ColorManager.borderColor,
                    width: 1,
                    style: BorderStyle.solid);
              }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade400;
                }
                return Colors.transparent;
              }),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return ColorManager.disabledColor;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.lightTextColor;
                }

                return ColorManager.primaryColor;
              }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade400;
                } else if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                }
                return ColorManager.lightSurfaceColor;
              }),
              padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                  (states) {
                if (states.contains(MaterialState.pressed)) {
                  return EdgeInsets.symmetric(vertical: 8.h, horizontal: 13.w);
                }
                return EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w);
              }),
              textStyle: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 16.sp,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.w500,
                  );
                } else if (states.contains(MaterialState.hovered)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 16.sp,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.w500,
                  );
                }
                return TextStyle(
                  fontFamily: FontConstants.notoSans,
                  fontSize: 14.sp,
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.w500,
                );
              }))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shadowColor:
                  const MaterialStatePropertyAll(ColorManager.shadowColor),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade900;
                } else if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade500;
                } else if (states.contains(MaterialState.disabled)) {
                  return ColorManager.disabledColor;
                }
                return ColorManager.primaryColor;
              }),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return ColorManager.disabledTextColor;
                }
                return ColorManager.lightSurfaceColor;
              }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade400;
                }
                return ColorManager.lightSurfaceColor;
              }),
              shape:
                  MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
                if (states.contains(MaterialState.disabled)) {
                  return RoundedRectangleBorder(
                      side: const BorderSide(
                          color: ColorManager.disabledColor,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(12.r));
                }
                return RoundedRectangleBorder(
                    side: const BorderSide(
                        color: ColorManager.borderColor,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(12.r));
              }),
              padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                  (states) {
                if (states.contains(MaterialState.pressed)) {
                  return EdgeInsets.symmetric(vertical: 13.h, horizontal: 23.w);
                }
                return EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w);
              }),
              textStyle: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 22.sp,
                    color: ColorManager.lightTextColor,
                    fontWeight: FontWeight.w500,
                  );
                } else if (states.contains(MaterialState.hovered)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 22.sp,
                    color: ColorManager.lightTextColor,
                    fontWeight: FontWeight.w500,
                  );
                }
                return TextStyle(
                  fontFamily: FontConstants.notoSans,
                  fontSize: 20.sp,
                  color: ColorManager.lightTextColor,
                  fontWeight: FontWeight.w500,
                );
              }))),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              shadowColor:
                  const MaterialStatePropertyAll(ColorManager.shadowColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.r))),
              side: MaterialStateProperty.resolveWith((states) {
                return BorderSide.none;
                // if (states.contains(MaterialState.disabled)) {
                //   return const BorderSide(
                //       color: ColorManager.disabledColor,
                //       width: 1,
                //       style: BorderStyle.solid);
                // } else if (states.contains(MaterialState.error)) {
                //   return const BorderSide(
                //       color: ColorManager.error,
                //       width: 1,
                //       style: BorderStyle.solid);
                // } else if (states.contains(MaterialState.focused)) {
                //   return const BorderSide(
                //       color: ColorManager.focusColor,
                //       width: 1,
                //       style: BorderStyle.solid);
                // }
                // return const BorderSide(
                //     color: ColorManager.borderColor,
                //     width: 1,
                //     style: BorderStyle.solid);
              }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade400;
                }
                return Colors.transparent;
              }),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return ColorManager.disabledColor;
                } else if (states.contains(MaterialState.pressed)) {
                  return ColorManager.lightTextColor;
                }

                return ColorManager.lightTextColor;
              }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return ColorManager.primarySwatch.shade400;
                } else if (states.contains(MaterialState.hovered)) {
                  return ColorManager.primarySwatch.shade100;
                }
                return ColorManager.lightSurfaceColor;
              }),
              padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                  (states) {
                if (states.contains(MaterialState.pressed)) {
                  return EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.w);
                }
                return EdgeInsets.zero;
              }),
              textStyle: WidgetStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 16.sp,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.w500,
                  );
                } else if (states.contains(WidgetState.hovered)) {
                  return TextStyle(
                    fontFamily: FontConstants.notoSans,
                    fontSize: 16.sp,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.w500,
                  );
                }
                return TextStyle(
                  fontFamily: FontConstants.notoSans,
                  fontSize: 14.sp,
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.w500,
                );
              }))));
}

extension BorderThemeExtension on ThemeData {
  BorderSide get defaultBorderSide => (isDarkTheme)
      ? const BorderSide(
          color: ColorManager.borderColor,
          width: 1,
          style: BorderStyle.solid,
        )
      : const BorderSide(
          color: ColorManager.borderColor, width: 1, style: BorderStyle.solid);

  BorderSide get defaultBorderSideError => const BorderSide(
        color: ColorManager.error,
        width: 1,
        style: BorderStyle.solid,
      );

  BorderSide get defaultBorderSideShadow => const BorderSide(
        color: ColorManager.shadowColor,
        width: 1,
        style: BorderStyle.solid,
      );
  BorderSide get defaultBorderSideDisable => const BorderSide(
        color: ColorManager.disabledColor,
        width: 1,
        style: BorderStyle.solid,
      );
  BorderSide get defaultBorderSideFocus => const BorderSide(
        color: ColorManager.focusColor,
        width: 3,
        style: BorderStyle.solid,
      );
}
