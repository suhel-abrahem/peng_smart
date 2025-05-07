import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'main_costume_drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MainCostumePage extends StatefulWidget {
  final PreferredSize? appBar;

  final Widget? body;
  final Widget? slideMenu;
  final bool haveDrawer;
  final int? bottomBarIndex;
  final bool? haveAppBar;
  final bool? haveBottomBar;
  final String? title;
  const MainCostumePage({
    super.key,
    this.body,
    this.slideMenu,
    this.haveDrawer = true,
    this.appBar,
    this.bottomBarIndex,
    this.haveAppBar,
    this.haveBottomBar,
    this.title,
  });

  @override
  State<MainCostumePage> createState() => _MainCostumePageState();
}

class _MainCostumePageState extends State<MainCostumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        extendBodyBehindAppBar: false,
        appBar: widget.appBar ??
            ((widget.haveAppBar ?? true)
                ? AppBar(
                    actions: [
                      // IconButton(
                      //   style: Theme.of(context)
                      //       .iconButtonTheme
                      //       .style
                      //       ?.copyWith(
                      //           padding: WidgetStatePropertyAll(
                      //               EdgeInsets.symmetric(
                      //                   vertical: 2.h, horizontal: 2.w))),
                      //   onPressed: () {},
                      //   icon: Icon(Icons.search_sharp,
                      //       size: 30.sp,
                      //       color: Theme.of(context)
                      //           .textTheme
                      //           .headlineLarge
                      //           ?.color),
                      // ),
                      IconButton(
                        style: Theme.of(context)
                            .iconButtonTheme
                            .style
                            ?.copyWith(
                                padding: WidgetStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        vertical: 2.h, horizontal: 2.w))),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new_rounded,
                            size: 30.sp,
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.color),
                      )
                    ],
                    backgroundColor: Theme.of(context).colorScheme.background,
                    elevation: 0,
                    leading: Row(
                      children: [
                        widget.haveDrawer
                            ? Builder(builder: (context) {
                                return IconButton(
                                  style: Theme.of(context)
                                      .iconButtonTheme
                                      .style
                                      ?.copyWith(
                                          padding: WidgetStatePropertyAll(
                                              EdgeInsets.symmetric(
                                                  vertical: 2.h,
                                                  horizontal: 2.w))),
                                  onPressed: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  icon: Icon(Icons.menu_rounded,
                                      size: 30.sp,
                                      color: Theme.of(context)
                                          .textTheme
                                          .headlineLarge
                                          ?.color),
                                );
                              })
                            : SizedBox(),
                      ],
                    ),
                    title: Text(
                      widget.title ?? "",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.color,
                              ),
                    ),
                    centerTitle: true,
                  )
                : null),
        drawer: widget.haveDrawer ? MainCostumeDrawer() : null,
        body: widget.body?.animate().slideY(
            begin: 2,
            end: 0,
            curve: Curves.bounceInOut,
            duration: Duration(milliseconds: 500),
            delay: Duration(milliseconds: 500)));
  }
}
