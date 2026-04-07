import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import '/core/resource/color_manager.dart';

import '/generated/locale_keys.g.dart';

import '../../dependencies_injection.dart';

class MainBottomBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainBottomBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).primaryColor,
      currentIndex: navigationShell.currentIndex,

      selectedItemColor: Colors.white,
      unselectedItemColor: ColorManager.disabledColor,

      showSelectedLabels: true,
      showUnselectedLabels: true,

      onTap: (index) {
        navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        );
      },

      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: LocaleKeys.homePage_label.tr(),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          activeIcon: Icon(Icons.settings),
          label: LocaleKeys.settingsPage_label.tr(),
        ),
      ],
    );
  }
}
