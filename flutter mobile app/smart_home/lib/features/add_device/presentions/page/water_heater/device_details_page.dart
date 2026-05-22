import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/constants/font_constants.dart';
import 'package:smart_home/core/dependencies_injection.dart';
import 'package:smart_home/core/enums/action_enum.dart';
import 'package:smart_home/core/resource/assets_manager.dart';
import 'package:smart_home/core/resource/common_state_widget/error_state_widget.dart';
import 'package:smart_home/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import 'package:smart_home/core/resource/main_page/main_page.dart';

import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/device_telemetry_entity.dart';
import 'package:smart_home/features/add_device/presentions/bloc/override_device_action_bloc.dart';
import 'package:smart_home/features/add_device/presentions/widget/water_heater/device_info_container.dart';

import '../../../../../config/route/routes_manager.dart';
import '../../../../../core/enums/assets_type_enum.dart';
import '../../../domain/entities/action_link_entity.dart';
import '../../bloc/get_device_details_bloc.dart';
import '../../widget/water_heater/heater_painter.dart';

class DeviceDetailsPage extends StatefulWidget {
  final DeviceEntity device;

  const DeviceDetailsPage({super.key, required this.device});

  @override
  State<DeviceDetailsPage> createState() => _DeviceDetailsPageState();
}

class _DeviceDetailsPageState extends State<DeviceDetailsPage> {
  Timer? timer;
  late final GetDeviceDetailsBloc _getDeviceDetailsBloc;
  @override
  void initState() {
    _getDeviceDetailsBloc = getItInstance<GetDeviceDetailsBloc>();
    if ((widget.device.id ?? '').isNotEmpty) {
      _getDeviceDetailsBloc.add(
        GetDeviceDetailsEvent.loadDeviceDetails(deviceId: widget.device.id),
      );
    }
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _getDeviceDetailsBloc.add(
        GetDeviceDetailsEvent.loadDeviceDetails(deviceId: widget.device.id),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _getDeviceDetailsBloc,
      child: MainPage(
        title: widget.device.name,
        onRefresh: () {
          _getDeviceDetailsBloc.add(
            GetDeviceDetailsEvent.loadDeviceDetails(deviceId: widget.device.id),
          );
        },
        body: BlocBuilder<GetDeviceDetailsBloc, GetDeviceDetailsState>(
          builder: (context, state) {
            DeviceEntity? device = widget.device;
            DeviceTelemetryEntity? telemetry;
            state.maybeWhen(
              orElse: () {},
              loaded: (device) {
                device = device;
                telemetry = device.telemetry;
              },
              error: (message) {
                return ErrorStateWidget();
              },
            );
            return ListView(
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
                        upperOn: telemetry?.relay2 ?? false,
                        lowerOn: telemetry?.relay1 ?? false,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BlocProvider(
                      create: (context) =>
                          getItInstance<OverrideDeviceActionBloc>()
                            ..add(const OverrideDeviceActionEvent.started()),
                      child:
                          BlocListener<
                            OverrideDeviceActionBloc,
                            OverrideDeviceActionState
                          >(
                            listener: (context, state) {
                              state.maybeWhen(
                                orElse: () {},
                                overridden: () async {
                                  showMessage(
                                    message: "done",
                                    context: context,
                                  );
                                  await Future.delayed(
                                    const Duration(seconds: 10),
                                    () {},
                                  );
                                  _getDeviceDetailsBloc.add(
                                    GetDeviceDetailsEvent.loadDeviceDetails(
                                      deviceId: device.id,
                                    ),
                                  );
                                },
                                error: (message) {
                                  showMessage(
                                    message: message,
                                    context: context,
                                  );
                                },
                              );
                            },
                            child: Builder(
                              builder: (context) {
                                return ElevatedButton(
                                  onPressed: () {
                                    final isOn =
                                        telemetry?.relay1 == true ||
                                        telemetry?.relay2 == true;

                                    context
                                        .read<OverrideDeviceActionBloc>()
                                        .add(
                                          OverrideDeviceActionEvent.override(
                                            deviceId: device.id,
                                            actions: ActionLinkEntity(
                                              action: isOn
                                                  ? ActionEnum.turnOff
                                                  : ActionEnum.turnOn,
                                              targetComponentId: "manual",
                                              targetType: "manual",
                                            ),
                                          ),
                                        );
                                  },
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                        shape: const WidgetStatePropertyAll(
                                          CircleBorder(),
                                        ),
                                      ),
                                  child: Icon(
                                    CupertinoIcons.power,
                                    size: 32.sp,
                                    color:
                                        (telemetry?.relay1 == true ||
                                            telemetry?.relay2 == true)
                                        ? Colors.red
                                        : Colors.green,
                                  ),
                                );
                              },
                            ),
                          ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        context.push(
                          RoutesPath.waterHeaterSchedulePage,
                          extra: device,
                        );
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
              ],
            );
          },
        ),
      ),
    );
  }
}
