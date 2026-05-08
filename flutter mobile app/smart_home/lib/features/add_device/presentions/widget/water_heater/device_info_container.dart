import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:smart_home/config/theme/app_theme.dart';

import '../../../../../core/constants/font_constants.dart';
import '../../../domain/entities/device_telemetry_entity.dart';

class DeviceInfoContainer extends StatelessWidget {
  final DeviceTelemetryEntity? telemetry;
  const DeviceInfoContainer({super.key, this.telemetry});

  @override
  Widget build(BuildContext context) {
    final temp = telemetry?.temperature ?? "--";
    final pressure = telemetry?.pressureBar ?? "--";
    final current = telemetry?.current ?? "--";
    final voltage = telemetry?.voltage ?? "--";
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12.w,
          crossAxisSpacing: 12.h,
          mainAxisExtent: 100.h,
        ),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Temperature",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${double.tryParse(temp.toString()) ?? "--"} °C",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontWeight: FontWeight.bold,
                    color:
                        double.tryParse(temp.toString()) != null &&
                            double.tryParse(temp.toString())! > 50
                        ? Colors.red
                        : double.tryParse(temp.toString()) != null &&
                              double.tryParse(temp.toString())! > 40
                        ? Colors.orange
                        : double.tryParse(temp.toString()) != null &&
                              double.tryParse(temp.toString())! > 30
                        ? Colors.yellow
                        : Colors.green,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ).asGlass(
            border: Theme.of(context).defaultBorderSide,
            clipBorderRadius: BorderRadiusGeometry.circular(20.r),
            frosted: true,
            blurX: 10,
            blurY: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Pressure",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${double.tryParse(pressure.toString())?.toStringAsFixed(1) ?? '--'} bar",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontWeight: FontWeight.bold,
                    color:
                        double.tryParse(pressure.toString()) != null &&
                            double.tryParse(pressure.toString())! > 6
                        ? Colors.orange
                        : double.tryParse(pressure.toString()) != null &&
                              double.tryParse(pressure.toString())! >= 7
                        ? Colors.red
                        : Colors.green,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ).asGlass(
            border: Theme.of(context).defaultBorderSide,
            clipBorderRadius: BorderRadiusGeometry.circular(20.r),
            frosted: true,
            blurX: 10,
            blurY: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Ampere",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${double.tryParse(current.toString())?.toStringAsFixed(1) ?? '--'} A",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontWeight: FontWeight.bold,
                    color:
                        double.tryParse(current.toString()) != null &&
                            double.tryParse(current.toString())! > 16
                        ? Colors.red
                        : Colors.green,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ).asGlass(
            border: Theme.of(context).defaultBorderSide,
            clipBorderRadius: BorderRadiusGeometry.circular(20.r),
            frosted: true,
            blurX: 10,
            blurY: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Voltage",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${double.tryParse(voltage.toString())?.toStringAsFixed(1) ?? '--'} V",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontWeight: FontWeight.bold,
                    color:
                        double.tryParse(voltage.toString()) != null &&
                            (double.tryParse(voltage.toString())! < 210 ||
                                double.tryParse(voltage.toString())! > 245)
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
              ],
            ),
          ).asGlass(
            border: Theme.of(context).defaultBorderSide,
            clipBorderRadius: BorderRadiusGeometry.circular(20.r),
            frosted: true,
            blurX: 10,
            blurY: 10,
          ),
        ],
      ),
    ).asGlass(
      border: Theme.of(context).defaultBorderSide,
      clipBorderRadius: BorderRadiusGeometry.circular(30.r),
      frosted: true,
      blurX: 10,
      blurY: 10,
    );
  }
}
