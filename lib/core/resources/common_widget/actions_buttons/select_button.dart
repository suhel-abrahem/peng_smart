import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/enums/assets_type_enum.dart';
import '../../../../core/resources/assets_manager.dart';

class SelectButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const SelectButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      height: 50.h,
      child: ElevatedButton(
          onPressed: onPressed,
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                shape: const WidgetStatePropertyAll(CircleBorder()),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h)),
              ),
          child: SvgPicture.asset(getAssetsPath(
              assetsName: IconsName.select, assetsType: AssetsType.svg))),
    );
  }
}
