import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/constants/font_constants.dart';
import 'package:smart_home/core/dependencies_injection.dart';
import 'package:smart_home/core/resource/main_page/main_page.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

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

                            return Card(
                              margin: const EdgeInsets.all(12),
                              child: ListTile(
                                title: Text(
                                  "${s.startTime} → ${s.endTime}",
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                                subtitle: Text(
                                  "Relay1: ${s.relay1Minutes}m | Relay2: ${s.relay2Minutes}m",
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: isSaving
                                      ? null
                                      : () {
                                          setState(() {
                                            sessions.removeAt(index);
                                          });

                                          _heaterScheduleBloc.add(
                                            HeaterScheduleEvent.setSessions(
                                              sessions: List.from(sessions),
                                            ),
                                          );
                                        },
                                ),
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
