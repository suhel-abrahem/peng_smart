import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:smart_home/config/theme/app_theme.dart';
import 'package:smart_home/core/constants/font_constants.dart';
import 'package:smart_home/core/dependencies_injection.dart';
import 'package:smart_home/core/resource/main_page/main_page.dart';
import 'package:smart_home/features/add_device/data/model/delete_rules_groups_model.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/presentions/widget/water_heater/days_widget.dart';

import '../../../domain/entities/water_heater/heater_session_entity.dart';
import '../../../domain/entities/water_heater/rules_to_heater_sessions_mapper.dart';
import '../../bloc/heater_schedule_bloc.dart';
import '../../widget/water_heater/add_session_dialog.dart';

class WaterHeaterSchedulePage extends StatefulWidget {
  final DeviceEntity? device;

  const WaterHeaterSchedulePage({super.key, required this.device});

  @override
  State<WaterHeaterSchedulePage> createState() =>
      _WaterHeaterSchedulePageState();
}

class _WaterHeaterSchedulePageState extends State<WaterHeaterSchedulePage> {
  late final HeaterScheduleBloc _heaterScheduleBloc;
  final List<HeaterSessionEntity> sessions = [];

  @override
  void initState() {
    super.initState();

    _heaterScheduleBloc = getItInstance<HeaterScheduleBloc>();

    if ((widget.device?.id ?? '').isNotEmpty) {
      _heaterScheduleBloc.add(
        HeaterScheduleEvent.loadDeviceRules(deviceId: widget.device!.id),
      );
    }
  }

  @override
  void dispose() {
    _heaterScheduleBloc.close();
    super.dispose();
  }

  Future<void> _addSession() async {
    final result = await showDialog<HeaterSessionEntity>(
      context: context,
      builder: (_) => const AddSessionDialog(),
    );

    if (result != null) {
      setState(() {
        sessions.add(result);
      });

      _heaterScheduleBloc.add(
        HeaterScheduleEvent.setSessions(sessions: List.from(sessions)),
      );
    }
  }

  void _save() {
    print("Saving sessions from page: $sessions");
    _heaterScheduleBloc.add(
      HeaterScheduleEvent.saveSessions(
        deviceId: widget.device?.id ?? "",
        sessions: List.from(sessions),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _heaterScheduleBloc,
      child: MainPage(
        onRefresh: () {
          if ((widget.device?.id ?? '').isNotEmpty) {
            _heaterScheduleBloc.add(
              HeaterScheduleEvent.loadDeviceRules(deviceId: widget.device!.id),
            );
          }
        },
        title: "Water Heater Schedule",
        floatingActionButton: FloatingActionButton(
          onPressed: _addSession,
          child: const Icon(Icons.add),
        ),
        body: BlocConsumer<HeaterScheduleBloc, HeaterScheduleState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (loadedSessions) {
                setState(() {
                  sessions
                    ..clear()
                    ..addAll(loadedSessions);
                });
              },
              saved: (_, __) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Saved successfully")),
                );
              },
              error: (_, message) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
              },
            );
          },
          builder: (context, state) {
            final isSaving = state.maybeWhen(
              saving: (_) => true,
              orElse: () => false,
            );

            return Column(
              children: [
                Expanded(
                  child: sessions.isEmpty
                      ? const Center(child: Text("No sessions yet"))
                      : ListView.builder(
                          itemCount: sessions.length,
                          itemBuilder: (_, index) {
                            final s = sessions[index];
                            final activeToInMinutes =
                                s.relay1Minutes + s.relay2Minutes;
                            final DateTime? startDateTime = DateTime(
                              0,
                              0,
                              0,
                              int.parse(s.startTime.split(":")[0]),
                              int.parse(s.startTime.split(":")[1]),
                            );
                            print(
                              "Start time: ${s.startTime}, relay1: ${s.relay1Minutes}m, relay2: ${s.relay2Minutes}m,startDateTime: $startDateTime, activeToInMinutes: $activeToInMinutes",
                            );
                            DateTime? activeTo = startDateTime?.add(
                              Duration(minutes: activeToInMinutes),
                            );
                            final activeToString = activeTo != null
                                ? DateFormat("HH:mm").format(activeTo)
                                : "--:--";
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 12.h,
                              ),
                              child:
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.w,
                                      vertical: 12.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Center(
                                                child: Text(
                                                  "${s.startTime} → ${activeToString}",

                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium
                                                      ?.copyWith(
                                                        fontFamily:
                                                            FontConstants.fontFamily(
                                                              context.locale,
                                                            ),
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                "Relay1: ${s.relay1Minutes}m | Relay2: ${s.relay2Minutes}m",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium
                                                    ?.copyWith(
                                                      fontFamily:
                                                          FontConstants.fontFamily(
                                                            context.locale,
                                                          ),
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 8.h,
                                                ),
                                                child: SizedBox(
                                                  height: 30.h,
                                                  child: DaysWidget(
                                                    days: s.days,
                                                    readOnly: true,
                                                    onChanged: (_) {},
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.delete),
                                          onPressed: isSaving
                                              ? null
                                              : () {
                                                  _heaterScheduleBloc.add(
                                                    HeaterScheduleEvent.deleteRulesGroup(
                                                      model:
                                                          DeleteRulesGroupsModel(
                                                            deviceId:
                                                                widget
                                                                    .device
                                                                    ?.id ??
                                                                '',
                                                            groupId: s.id,
                                                          ),
                                                    ),
                                                  );
                                                },
                                        ),
                                      ],
                                    ),
                                  ).asGlass(
                                    frosted: true,
                                    border: Theme.of(context).defaultBorderSide,
                                    clipBorderRadius:
                                        BorderRadiusGeometry.circular(12.r),
                                    blurX: 10,
                                    blurY: 10,
                                  ),
                            );
                          },
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: (sessions.isEmpty || isSaving) ? null : _save,
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text(isSaving ? "Saving..." : "Save Schedule"),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
