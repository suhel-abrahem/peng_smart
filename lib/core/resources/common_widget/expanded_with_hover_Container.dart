import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedWithHoverContainer extends StatefulWidget {
  final ValueChanged<bool>? onHover;
  final String? title;
  final String? descriptions;
  const ExpandedWithHoverContainer(
      {super.key, this.onHover, this.title, this.descriptions});

  @override
  State<ExpandedWithHoverContainer> createState() =>
      _ExpandedWithHoverContainerState();
}

class _ExpandedWithHoverContainerState
    extends State<ExpandedWithHoverContainer> {
  bool isHovered = false;
  double containerWidth({bool isConstraints = false}) {
    return isConstraints
        ? (isHovered ? 300 : 200)
        : (isHovered ? 400.w : 200.w);
  }

  double containerHeight({bool isConstraints = false}) {
    return isConstraints
        ? isHovered
            ? 250
            : 150
        : (isHovered ? 250.h : 150.h);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
          print('width:${widget.descriptions?.length}');
        });
        if (widget.onHover != null) {
          widget.onHover!(isHovered);
        }
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: containerWidth(),
        height: containerHeight(),
        constraints: BoxConstraints(
          minWidth: containerWidth(isConstraints: true),
          minHeight: containerHeight(isConstraints: true),
        ),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(30.r)),
        child: isHovered
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.title ?? '',
                    style: Theme.of(context).textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: SizedBox(
                      height: containerHeight() * 0.65,
                      width: double.maxFinite - 40.w,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Text(
                              widget.descriptions ?? '',
                              style: Theme.of(context).textTheme.bodyLarge,
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ).animate().scaleXY(
                duration: Duration(
                  milliseconds: 300,
                ),
                delay: Duration(milliseconds: 80))
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                child: Center(
                  child: Text(
                    widget.title ?? '',
                    style: Theme.of(context).textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ).animate().scaleXY(duration: Duration(milliseconds: 300)),
              ),
      ),
    );
  }
}
