import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../enums/assets_type_enum.dart';
import '../assets_manager.dart';

class CategoryContainer extends StatelessWidget {
  final VoidCallback onPressed;
  final String? categoryName;
  final Uint8List? image;
  const CategoryContainer(
      {super.key,
      required this.onPressed,
      required this.categoryName,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: categoryName,
      child: SizedBox(
        width: 150.w,
        height: 250.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r)),
              ),
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 150.w,
                height: 200.h,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30.r)),
                  child: Image.memory(
                    image ?? Uint8List(0),
                    fit: BoxFit.fill,
                    errorBuilder: (context, error, stackTrace) {
                      return LottieBuilder.asset(
                        getAssetsPath(
                            assetsName: LottiesName.error,
                            assetsType: AssetsType.lotties),
                        repeat: false,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
                child: Center(
                  child: Text(
                    categoryName ?? "",
                    style: Theme.of(context).textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
