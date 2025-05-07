import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/language_constants.dart';
import '../../../core/resources/common_page/custom_app_bar_clip.dart';
import '../../../core/util/helper.dart';

class MainCustomAppBar extends StatelessWidget {
  final Widget? action;
  final String title;
  final bool? haveSearchBar;
  const MainCustomAppBar(
      {super.key, this.action, required this.title, this.haveSearchBar = true});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomAppBarClip(),
      child: Container(
        padding:
            EdgeInsets.only(top: 20.h, left: 12.w, right: 12.w, bottom: 48.h),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          // borderRadius: BorderRadiusDirectional.only(
          //   bottomStart: Radius.elliptical(330.r, 30.r),
          //   bottomEnd: Radius.elliptical(150.r, 30.r),
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //action bar
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 12.w),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(
                    width: 48.w,
                    height: 48.h,
                    child: OutlinedButton(
                        style: Theme.of(context)
                            .outlinedButtonTheme
                            .style
                            ?.copyWith(
                                shape: const WidgetStatePropertyAll(
                                    CircleBorder()),
                                side: const WidgetStatePropertyAll(
                                    BorderSide.none),
                                padding: const WidgetStatePropertyAll(
                                    EdgeInsets.zero)),
                        onPressed: context.canPop()
                            ? () {
                                context.pop();
                              }
                            : null,
                        child: Center(
                          child: Icon(
                            context.locale == LanguageConstant.ARABIC_LOCAL
                                ? CupertinoIcons.forward
                                : CupertinoIcons.back,
                            size: 38.sp,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            action ?? SizedBox(),
            if (haveSearchBar ?? true)
              Center(
                child: SizedBox(
                  width: 280.w,
                  height: 50.h,
                  child: SearchBar(
                    trailing: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: const Icon(Icons.search_outlined),
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    ).animate().slideY(
        duration: Duration(milliseconds: 500),
        begin: -2,
        curve: Curves.bounceInOut,
        end: 0);
  }
}
