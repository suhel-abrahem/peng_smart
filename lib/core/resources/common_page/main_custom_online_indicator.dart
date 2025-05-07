import '../../enums/connection_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainCustomOnlineIndicator extends StatefulWidget {
  final ConnectionStateEnum connectionState;
  const MainCustomOnlineIndicator({super.key, required this.connectionState});

  @override
  State<MainCustomOnlineIndicator> createState() =>
      _MainCustomOnlineIndicatorState();
}

class _MainCustomOnlineIndicatorState extends State<MainCustomOnlineIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).shadowColor,
                offset: Offset(1, 1),
                blurRadius: 2)
          ],
          borderRadius: BorderRadius.circular(30.r),
          color: Theme.of(context).textTheme.headlineLarge?.color),
      child: Row(
        children: [
          SizedBox(
            width: 55.w,
            child: FittedBox(
              child: Text(
                widget.connectionState.name.toString().replaceFirst(
                    widget.connectionState.name.toString()[0],
                    widget.connectionState.name.toString()[0].toUpperCase()),
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: widget.connectionState == ConnectionStateEnum.online
                        ? Theme.of(context).focusColor
                        : Theme.of(context).colorScheme.error),
              ),
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          AnimatedContainer(
            height: 17.h,
            width: 17.w,
            duration: Duration(milliseconds: 300),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.connectionState == ConnectionStateEnum.online
                    ? Theme.of(context).focusColor
                    : Theme.of(context).colorScheme.error),
          )
        ],
      ),
    );
  }
}
