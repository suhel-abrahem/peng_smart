import 'dart:convert';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/features/auth/presentation/pages/login_page.dart';
import 'package:smart_home/features/auth/presentation/pages/register_page.dart';

import '../../features/add_device/presentions/page/add_device_page.dart';
import '../../features/setting_page/presentation/pages/setting_page.dart';
import '../app/app_preferences.dart';
import 'route_tracker.dart';
import '../../core/dependencies_injection.dart';
import '../../core/enums/login_state_enum.dart';

import '../../features/home_page/presentation/pages/home_page_page.dart';

import '../../core/resource/main_page/main_bottom_bar.dart';

String? currentPath = RoutesPath.homePage;

class RoutesName {
  static String homePage = "homePage";

  static String settingPage = "settingPage";
  static String addDevicePage = "addDevicePage";
  static String loginPage = "loginPage";
  static String signupPage = "signupPage";
  static String otpPage = "otpPage";
  static String resetPasswordPage = "resetPasswordPage";
}

class RoutesPath {
  static String homePage = '/';

  static String settingPage = '/setting';
  static String addDevicePage = '/addDevice';
  static String loginPage = '/login';
  static String signupPage = '/signup';
  static String otpPage = '/otp';
  static String resetPasswordPage = '/reset-password';
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
String? lastPath;
GoRouter goRouter = GoRouter(
  observers: [RouteTracker()],
  redirect: (context, state) {
    currentPath = state.uri.toString();
    print(
      "login state: ${getItInstance<AppPreferences>().getUserInfo()?.loginState}",
    );
    if ((getItInstance<AppPreferences>().getUserInfo()?.loginState ==
            LoginStateEnum.logout) &&
        !(state.uri.toString().endsWith(RoutesPath.loginPage) ||
            state.uri.toString().endsWith(RoutesPath.otpPage) ||
            state.uri.toString().endsWith(RoutesPath.resetPasswordPage) ||
            state.uri.toString().endsWith(RoutesPath.signupPage))) {
      return RoutesPath.loginPage;
    }
    // if (currentPath?.endsWith(lastPath ?? "") == false) {
    //   return lastPath;
    // }
    // if (getItInstance<AppPreferences>().isFirstUse() == false) {
    //   return RoutesPath.firstUsePage;
    // } else if (getItInstance<AppPreferences>().getUserInfo()?.loginStateEnum ==
    //         LoginStateEnum.unlogined &&
    //     !(state.uri.toString().endsWith(RoutesPath.signupPage) ||
    //         state.uri.toString().endsWith(RoutesPath.otpPage) ||
    //         state.uri.toString().endsWith(RoutesPath.resetPasswordPage))) {
    //   return RoutesPath.loginPage;
    // }
    return null;
  },
  initialLocation: RoutesPath.homePage,
  navigatorKey: navigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => ThemeSwitchingArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: navigationShell,
          bottomNavigationBar: MainBottomBar(
            key: ValueKey(currentPath),
            navigationShell: navigationShell,
          ).animate().scaleY(duration: 500.ms),
        ),
      ),
      branches: [
        //home page branch
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesPath.homePage,
              name: RoutesName.homePage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: HomePagePage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.addDevicePage,
              name: RoutesName.addDevicePage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: AddDevicePage(),
                  state: state,
                );
              },
            ),
          ],
        ),

        //profile page branch
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesPath.settingPage,
              name: RoutesName.settingPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: SettingPage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.loginPage,
              name: RoutesName.loginPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(child: LoginPage(), state: state);
              },
            ),
            GoRoute(
              path: RoutesPath.signupPage,
              name: RoutesName.signupPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: RegisterPage(),
                  state: state,
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
CustomTransitionPage _customTransitionPage({
  required Widget child,
  GoRouterState? state,
}) {
  return CustomTransitionPage(
    transitionDuration: Duration(milliseconds: 300),
    reverseTransitionDuration: Duration(milliseconds: 300),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        key: state?.pageKey,
        opacity: animation.drive(CurveTween(curve: Curves.easeInOut)),
        // opacity: animation,
        child: child,
      );
    },
  );
}
