import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../config/theme/app_themes.dart';
import '../../enums/assets_type_enum.dart';
import '../../enums/delivery_status_enum.dart';
import '../assets_manager.dart';

class DeliveryManContainer extends StatefulWidget {
  final VoidCallback onPressed;
  final bool isExpanded;
  final Uint8List image;
  final String name;
  final DeliveryStatusEnum deliveryStatus;
  const DeliveryManContainer(
      {super.key,
      required this.onPressed,
      required this.isExpanded,
      required this.image,
      required this.name,
      required this.deliveryStatus});

  @override
  State<DeliveryManContainer> createState() => _DeliveryManContainerState();
}

class _DeliveryManContainerState extends State<DeliveryManContainer> {
  Color statusColor() {
    Color output = Theme.of(context).focusColor;
    if (widget.deliveryStatus == DeliveryStatusEnum.available) {
      output = Theme.of(context).focusColor;
    } else if (widget.deliveryStatus == DeliveryStatusEnum.busy) {
      output = Color.fromARGB(255, 208, 167, 70);
    } else {
      output = Theme.of(context).colorScheme.error;
    }
    return output;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      key: ValueKey(widget.isExpanded),
      duration: Duration(milliseconds: 280),
      child: SizedBox(
        width: widget.isExpanded ? 276.w : 60.w,
        height: 80.h,
        child: Stack(
          children: [
            PositionedDirectional(
              start: 0,
              top: 0,
              child: SizedBox(
                width: widget.isExpanded ? 276.w : 60.w,
                height: widget.isExpanded ? 75.h : 70.h,
                child: ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      padding: WidgetStatePropertyAll(widget.isExpanded
                          ? EdgeInsets.symmetric(vertical: 2.h, horizontal: 8.w)
                          : EdgeInsets.zero),
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).colorScheme.primaryContainer),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          side: Theme.of(context).defaultBorderSide))),
                  onPressed: widget.onPressed,
                  child: AnimatedContainer(
                    width: widget.isExpanded ? 276.w : 56.w,
                    duration: Duration(milliseconds: 300),
                    child: widget.isExpanded
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 60.w,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.r),
                                  child: Image.memory(
                                    widget.image,
                                    errorBuilder: (context, error, stackTrace) {
                                      return LottieBuilder.asset(getAssetsPath(
                                          assetsName: LottiesName.error,
                                          assetsType: AssetsType.lotties));
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    widget.name,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                    textAlign: TextAlign.center,
                                  )),
                            ].reversed.toList(),
                          )
                        : Container(
                            height: 80.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer),
                            child: SizedBox(
                              width: 51.w,
                              height: 80.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Image.memory(
                                  widget.image,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return LottieBuilder.asset(
                                      getAssetsPath(
                                          assetsName: LottiesName.error,
                                          assetsType: AssetsType.lotties),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
            PositionedDirectional(
                end: 0,
                top: 0,
                child: deliveryStatus(width: 15.w, height: 15.h))
          ],
        ),
      ),
    );
  }

  Container deliveryStatus({double? width, double? height}) {
    return Container(
      height: height,
      width: width ?? 20.w,
      decoration: BoxDecoration(shape: BoxShape.circle, color: statusColor()),
    );
  }
}
