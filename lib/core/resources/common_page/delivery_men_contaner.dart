import "dart:typed_data";

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../enums/delivery_status_enum.dart";
import "../../extensions/screen_size.dart";
import "delivery_man_container.dart";

class DeliveryMenContainer extends StatefulWidget {
  final double height;
  const DeliveryMenContainer({super.key, required this.height});

  @override
  State<DeliveryMenContainer> createState() => _DeliveryMenContainerState();
}

class _DeliveryMenContainerState extends State<DeliveryMenContainer> {
  bool isExpanded = false;
  bool holdExpanded = false;
  final MediaQueryData mediaQuery = const MediaQueryData();
  late double padding;
  bool canExpanded = true;
  double getDrawerWidth() {
    return (canExpanded && (isExpanded || holdExpanded)) ? 300.w : 80.w;
  }

  @override
  Widget build(BuildContext context) {
    padding = mediaQuery.h >= 1000 ? 24.h : 15.5.h;
    double drawerDividerWidth = getDrawerWidth() - 20.w;
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isExpanded = true;
        });
      },
      onExit: (event) {
        setState(() {
          isExpanded = false;
        });
      },
      child: AnimatedContainer(
        key: ValueKey(isExpanded),
        duration: const Duration(milliseconds: 300),
        width: getDrawerWidth(),
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Theme.of(context).shadowColor, blurRadius: 10.r)
            ],
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20.r)),
        child: SizedBox(
          height: widget.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DeliveryManContainer(
                      onPressed: () {},
                      isExpanded: isExpanded,
                      image: Uint8List.fromList([]),
                      name: "Someone Someone",
                      deliveryStatus: DeliveryStatusEnum.available),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
