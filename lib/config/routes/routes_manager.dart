import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/get_started/presentation/pages/get_started_page.dart';
import '../../../features/sign_up/presentation/pages/sign_up_page.dart';
import '../../core/injection_container.dart';
import '../../features/content_center/presentation/pages/content_center_page.dart';
import '../../features/first_use/presentation/pages/first_use_page.dart';
import '../../features/home_page/presentation/pages/home_page_page.dart';
import '../../features/login/presentations/pages/login_page.dart';
import '../../features/monitor/presentation/pages/monitor.dart';
import '../app/app_preferences.dart';

GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
String? currentRoute = RoutesPaths.homeRoute;

class RoutesNames {
  static const String homeRoute = '#';
  static const String loginRoute = 'login';

  static const String contentCenterRoute = 'contentCenter';
  
  static const String firstUsePage = "firstUsePage";
  static const String getStarted = "getStarted";
  static const String signUp = "signUp";
  static const String itemPage = "itemPage";
  
 
}

class RoutesPaths {
  static String homeRoute = '/';
  static const String loginRoute = '/login';

  static const String contentCenterRoute = '/contentCenter';
  
  static const String firstUsePage = "/firstUsePage";
  static const String getStarted = "/getStarted";
  static const String signUp = "/signUp";
  static const String itemPage = "/itemPage";
  
}

// Widget? getPage({required String path, dynamic params}) {
//   Map<String, Widget> pageMap = const {
//     "/homePage": HomePagePage(),
//     '/contentCenter': ContentCenterPage(),
//     '/servicesManager': servicesManagerPage(),
//     '/newOrder': StorePage(),
//     '/deliveryManager': deliveryManagerPage(),
//     '/deliveryLocation': deliveryLocationPage(),
//     '/lastOrder': LastOrderPage(),
//     '/monitor': MonitorPage(),
//     '/setting': SettingPage(),
//     "/services": servicesPage()
//   };
//   return pageMap.containsKey(path) ? pageMap[path] : null;
// }

late StatefulNavigationShell appNavigationShell;
final GoRouter appRouter = GoRouter(
  initialLocation: RoutesPaths.homeRoute,
  navigatorKey: rootNavigatorKey,
  redirect: (context, state) async {
    // currentRoute = state.fullPath;
    // print(currentRoute);
    // if (getItInstance<AppPreferences>().getUserFirstUse()) {
    //   return RoutesPaths.firstUsePage;
    // }

    // return currentRoute;
  },
  routes: [
    GoRoute(
      name: RoutesNames.homeRoute,
      path: RoutesPaths.homeRoute,
      pageBuilder: (context, state) {
        return buildPageWithDefaultTransition(
            context: context, state: state, child: const HomePagePage());
      },
    ),
    GoRoute(
      name: RoutesNames.loginRoute,
      path: RoutesPaths.loginRoute,
      pageBuilder: (context, state) {
        return buildPageWithDefaultTransition(
            context: context, state: state, child: const LoginPage());
      },
    ),
    GoRoute(
      name: RoutesNames.contentCenterRoute,
      path: RoutesPaths.contentCenterRoute,
      pageBuilder: (context, state) {
        return buildPageWithDefaultTransition(
            context: context, state: state, child: const ContentCenterPage());
      },
    ),
    
    GoRoute(
      name: RoutesNames.firstUsePage,
      path: RoutesPaths.firstUsePage,
      pageBuilder: (context, state) {
        return buildPageWithDefaultTransition(
            context: context, state: state, child: const FirstUsePage());
      },
    ),
    GoRoute(
      name: RoutesNames.getStarted,
      path: RoutesPaths.getStarted,
      pageBuilder: (context, state) {
        return buildPageWithDefaultTransition(
            context: context, state: state, child: const GetStartedPage());
      },
    ),
    GoRoute(
      name: RoutesNames.signUp,
      path: RoutesPaths.signUp,
      pageBuilder: (context, state) {
        return buildPageWithDefaultTransition(
            context: context, state: state, child: const SignUpPage());
      },
    ),
   
  ],
);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    transitionDuration: Duration(milliseconds: 650),
    reverseTransitionDuration: Duration(milliseconds: 650),
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
