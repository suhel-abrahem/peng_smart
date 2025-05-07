import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddFeatureButton extends StatelessWidget {
  final VoidCallback onPressed;
  const AddFeatureButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.zero,
        child: Container(
          constraints: const BoxConstraints(minWidth: 200),
          width: 240.w,
          height: 250.h,
          child: Center(
            child: Container(
              constraints: const BoxConstraints(minWidth: 160),
              width: 200.w,
              height: 250.h,
              child: ElevatedButton(
                onPressed: onPressed,
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(30.r)))),
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).scaffoldBackgroundColor),
                    shadowColor: WidgetStateProperty.resolveWith((callback) {
                      if (callback.contains(WidgetState.hovered)) {
                        return Theme.of(context).shadowColor;
                      }
                      return Colors.transparent;
                    })
                    // overlayColor: WidgetStatePropertyAll(
                    //     Colors.transparent),
                    ),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 120),
                  width: 160.w,
                  height: 210.h,
                  child: const FittedBox(
                      fit: BoxFit.cover,
                      child: Icon(CupertinoIcons.add_circled)),
                ),
              ),
            ),
          ),
        ));
  }
}
