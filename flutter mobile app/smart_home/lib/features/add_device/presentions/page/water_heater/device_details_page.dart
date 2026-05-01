import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/constants/font_constants.dart';
import 'package:smart_home/core/resource/assets_manager.dart';
import 'package:smart_home/core/resource/main_page/main_page.dart';

import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/presentions/widget/water_heater/device_info_container.dart';

import '../../../../../config/route/routes_manager.dart';
import '../../../../../core/enums/assets_type_enum.dart';
import '../../widget/water_heater/heater_painter.dart';

class DeviceDetailsPage extends StatelessWidget {
  final DeviceEntity device;

  const DeviceDetailsPage({super.key, required this.device});

  @override
  Widget build(BuildContext context) {
    final telemetry = device.telemetry;

    return MainPage(
      title: device.name,

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: SizedBox(
              height: 300.h,
              width: 400.w,
              child: CustomPaint(
                painter: HeaterPainter(
                  temp: telemetry?.temperature ?? 0,
                  pressure: telemetry?.pressureBar ?? 0,
                  upperOn: telemetry?.relay1 ?? false,
                  lowerOn: telemetry?.relay2 ?? false,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Row(
              children: [
                Image.asset(
                  getAssetsPath(
                    assetsName: IconsName.tower,
                    assetsType: AssetsType.icon,
                  ),
                  width: 24.w,
                  height: 24.h,
                  color: Colors.white,
                ),
                Expanded(child: LinearProgressIndicator()),
                Image.asset(
                  getAssetsPath(
                    assetsName: IconsName.bolt,
                    assetsType: AssetsType.icon,
                  ),
                  width: 24.w,
                  height: 24.h,
                  color: Colors.white,
                ),
                Expanded(child: LinearProgressIndicator()),
                Icon(Icons.home_outlined),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: SizedBox(
              width: 300.w,
              height: 240.h,
              child: DeviceInfoContainer(telemetry: telemetry),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              context.push(RoutesPath.waterHeaterSchedulePage, extra: device);
            },
            icon: const Icon(Icons.schedule),
            label: Text(
              'Edit Heater Schedule',
              style: TextStyle(
                fontFamily: FontConstants.fontFamily(context.locale),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
