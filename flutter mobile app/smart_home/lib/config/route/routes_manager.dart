import 'dart:convert';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/features/auth/presentation/pages/login_page.dart';
import 'package:smart_home/features/auth/presentation/pages/register_page.dart';
import 'package:smart_home/features/home_page/presentation/pages/home_page_page.dart';
import 'package:smart_home/features/homes/presentation/pages/home_gate_page.dart';

import '../../features/add_device/presentions/page/add_device_page.dart';
import '../../features/homes/domain/entities/home_entity.dart';
import '../../features/homes/presentation/pages/create_home_page.dart';
import '../../features/room/presentation/pages/add_room_page.dart';
import '../../features/setting_page/presentation/pages/setting_page.dart';
import '../app/app_preferences.dart';
import 'route_tracker.dart';
import '../../core/dependencies_injection.dart';
import '../../core/enums/login_state_enum.dart';

import '../../core/resource/main_page/main_bottom_bar.dart';

String? currentPath = RoutesPath.homePage;

class RoutesName {
  static String homePage = "homePage";
  static String homeGatePage = "homeGatePage";
  static String addHomePage = "addHomePage";
  static String settingPage = "settingPage";
  static String addDevicePage = "addDevicePage";
  static String loginPage = "loginPage";
  static String signupPage = "signupPage";
  static String otpPage = "otpPage";
  static String resetPasswordPage = "resetPasswordPage";
  static String addRoomPage = "addRoomPage";
}

class RoutesPath {
  static String homePage = '/';
  static String homeGatePage = '/homeGate';
  static String addHomePage = '/createHome';
  static String settingPage = '/setting';
  static String addDevicePage = '/addDevice';
  static String loginPage = '/login';
  static String signupPage = '/signup';
  static String otpPage = '/otp';
  static String resetPasswordPage = '/reset-password';
  static String addRoomPage = '/addRoom';
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
String? lastPath;
GoRouter goRouter = GoRouter(
  observers: [RouteTracker()],
  redirect: (context, state) {
    currentPath = state.uri.toString();

    final user = getItInstance<AppPreferences>().getUserInfo();

    final isLoggedIn = user?.loginState == LoginStateEnum.login;

    final isAuthPage =
        state.uri.toString().endsWith(RoutesPath.loginPage) ||
        state.uri.toString().endsWith(RoutesPath.signupPage);

    // ❌ Not logged in → go login
    if (!isLoggedIn && !isAuthPage) {
      return RoutesPath.loginPage;
    }

    // ✅ Logged in → always go to homeGate first
    if (isLoggedIn && state.uri.toString() == RoutesPath.loginPage) {
      return RoutesPath.homeGatePage;
    }

    return null;
  },
  initialLocation: RoutesPath.homeGatePage,
  navigatorKey: navigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => ThemeSwitchingArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: navigationShell,
          bottomNavigationBar:
              currentPath == RoutesPath.loginPage ||
                  currentPath == RoutesPath.signupPage
              ? null
              : MainBottomBar(
                  key: ValueKey(currentPath),
                  navigationShell: navigationShell,
                ),
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
              path: RoutesPath.addRoomPage,
              name: RoutesName.addRoomPage,
              pageBuilder: (context, state) {
                final home = state.extra as HomeEntity;
                return _customTransitionPage(
                  child: AddRoomPage(home: home),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.homeGatePage,
              name: RoutesName.homeGatePage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: HomeGatePage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.addHomePage,
              name: RoutesName.addHomePage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: CreateHomePage(),
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
