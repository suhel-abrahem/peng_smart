import 'package:flutter_animate/flutter_animate.dart';
import '../../../features/home_page/presentation/pages/home_page_page.dart';

import '../../constants/font_constants.dart';
import '../color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//snake bar
void showMessage({
  required String message,
  required BuildContext context,
  bool haveButton = false,
  String? buttonTitle,
  VoidCallback? onPressed,
  int duration = 3000,
}) {
  final snack = SnackBar(
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.only(bottom: 3.h, left: 3.w, right: 3.w),
    backgroundColor: Colors.black,
    padding: EdgeInsets.all(1.w),
    content: SizedBox(
      height: 50.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            child: SingleChildScrollView(
              child: SizedBox(
                  child: Wrap(
                children: [
                  Text(
                    message,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Theme.of(context).colorScheme.error),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
            ),
          ),
          if (haveButton)
            SizedBox(
              width: 50.w,
              height: 30.h,
              child: ElevatedButton(
                onPressed: onPressed,
                child: Text(buttonTitle ?? ''),
              ),
            )
        ],
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    duration: Duration(milliseconds: duration),
  );
  ScaffoldMessenger.of(context).showSnackBar(snack);
}

Widget dividerWithTitle(
    {String title = '',
    double thickness = 2,
    double? width,
    Color? color,
    bool isVisible = true,
    Key? key,
    Duration? duration}) {
  duration ?? const Duration(milliseconds: 0);
  return AnimatedOpacity(
    key: key ?? ValueKey(isVisible),
    duration: Duration(milliseconds: 400),
    opacity: isVisible ? 1 : 0,
    child: SizedBox(
        width: width,
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: color ?? ColorManager.borderColor,
                      width: thickness)),
            )),
            SizedBox(
              width: 5.w,
            ),
            Text(
              title,
              style: TextStyle(
                  fontFamily: FontConstants.notoSans,
                  color: color ?? ColorManager.secondaryTextColor,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: color ?? ColorManager.borderColor,
                      width: thickness)),
            )),
          ],
        )),
  ).animate().scaleX(delay: duration);
}

//pop up
void popUpDialog(
    {required BuildContext context,
    Widget? content,
    List<Widget>? actions,
    MainAxisAlignment? actionAlignment,
    Widget? title}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: title,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.r))),
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          shadowColor: Theme.of(context).shadowColor,
          elevation: 0.01,
          content: content,
          actions: actions,
          actionsAlignment: actionAlignment ?? MainAxisAlignment.spaceEvenly,
        );
      });
}
