

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../enums/assets_type_enum.dart';
import '../../assets_manager.dart';

class CustomNetworkImage extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadiusGeometry? radius;
  final Color? background;
  final String? imagePath;
  final EdgeInsetsGeometry? padding;
  final double? imageWidth;
  final double? imageHeight;
  final BorderRadiusGeometry? imageRadius;

  const CustomNetworkImage({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.imagePath,
    this.imageWidth,
    this.imageHeight,
    this.imageRadius,
    this.padding,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            color: background ?? Theme.of(context).colorScheme.surface,
            borderRadius: radius ?? BorderRadius.all(Radius.circular(9.r))),
        child: ClipRRect(
          borderRadius: imageRadius ?? BorderRadius.all(Radius.circular(9.r)),
          child: Image.network(
            imagePath ?? '',
            scale: 1.0,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return Center(
                  child: Image.asset(getAssetsPath(
                      assetsName: ImagesName.defaultUser,
                      assetsType: AssetsType.png)));
            },
            fit: BoxFit.cover,
          ),
        ));
  }
}
