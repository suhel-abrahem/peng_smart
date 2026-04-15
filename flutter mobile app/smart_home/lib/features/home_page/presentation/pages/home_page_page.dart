import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/constants/font_constants.dart';
import 'package:smart_home/core/dependencies_injection.dart';
import 'package:smart_home/core/enums/psition_enum.dart';
import 'package:smart_home/core/resource/custom_widget/dropdown/drop_down_with_label.dart';
import 'package:smart_home/core/resource/main_page/main_page.dart';

import '../../../../config/route/routes_manager.dart';
import '../../../../core/data_state/data_state.dart';
import '../bloc/dashboard_bloc.dart';

class HomePagePage extends StatelessWidget {
  const HomePagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getItInstance<DashboardBloc>()..add(const DashboardEvent.load()),
      child: MainPage(
        title: "Dashboard",
        floatingActionButton: Builder(
          builder: (context) {
            return PopupMenuButton<String>(
              icon: const Icon(Icons.add),
              onSelected: (value) async {
                if (value == 'room') {
                  final state = context.read<DashboardBloc>().state;
                  if (state is DashboardLoaded) {
                    final created = await context.push<bool>(
                      RoutesPath.addRoomPage,
                      extra: state.selectedHome,
                    );

                    if (created == true && context.mounted) {
                      context.read<DashboardBloc>().add(
                        DashboardEvent.selectHome(home: state.selectedHome),
                      );
                    }
                  }
                } else if (value == 'device') {
                  final state = context.read<DashboardBloc>().state;
                  if (state is DashboardLoaded) {
                    final created = await context.push<bool>(
                      RoutesPath.addDevicePage,
                      extra: {
                        'home': state.selectedHome,
                        'rooms': state.rooms.data ?? [],
                      },
                    );

                    if (created == true && context.mounted) {
                      context.read<DashboardBloc>().add(
                        DashboardEvent.selectHome(home: state.selectedHome),
                      );
                    }
                  }
                }
              },
              itemBuilder: (_) => const [
                PopupMenuItem(value: 'room', child: Text('Add Room')),
                PopupMenuItem(value: 'device', child: Text('Add Device')),
              ],
            );
          },
        ),
        body: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            print('DashboardState: $state');
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              loaded: (homes, selectedHome, rooms, devices, selectedRoom) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<DashboardBloc>().add(
                      const DashboardEvent.load(),
                    );
                  },
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: DropDownWithLabel(
                          items: homes.data,
                          onChange: (value) {
                            print(
                              'Selected home ID: $value',
                            ); // Debug print to check the selected value
                            final selected = homes.data?.firstWhere(
                              (e) => e.id == value,
                            );
                            context.read<DashboardBloc>().add(
                              DashboardEvent.selectHome(
                                home: selected ?? selectedHome,
                              ),
                            );
                          },
                          stringConverter: (home) => home.name,
                          dropDownWidth: 200.w,
                          dropDownHeight: 50.h,
                          isLoading: false,
                          label: "Homes",
                          labelPosition: Position.beside,
                          labelPadding: EdgeInsetsDirectional.only(
                            start: 0,
                            end: 8.w,
                          ),
                          value: selectedHome,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Rooms',
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              fontFamily: FontConstants.fontFamily(
                                context.locale,
                              ),
                            ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 50,
                        child: rooms.data?.isEmpty ?? true
                            ? Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'No rooms yet',
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                              )
                            : ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: rooms.data?.length ?? 0,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(width: 8),
                                itemBuilder: (context, index) {
                                  final room = rooms.data?[index];
                                  final isSelected = room?.id == selectedRoom;

                                  return GestureDetector(
                                    onTap: () {
                                      context.read<DashboardBloc>().add(
                                        DashboardEvent.selectRoom(
                                          roomId: room?.id,
                                        ),
                                      );
                                    },
                                    child: Chip(
                                      label: Text(room?.name ?? 'Unknown'),
                                      backgroundColor: isSelected
                                          ? Colors.blue
                                          : Colors.grey[300],
                                    ),
                                  );
                                },
                              ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Devices',
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              fontFamily: FontConstants.fontFamily(
                                context.locale,
                              ),
                            ),
                      ),
                      const SizedBox(height: 12),
                      if (devices is DataFailed)
                        Text(
                          devices.error?.toString() ?? 'Failed to load devices',
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        )
                      else if (devices.data?.isEmpty ?? true)
                        Text(
                          'No devices yet',
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        )
                      else
                        ...devices.data!.map((device) {
                          final temp = device.telemetry?.temperature;
                          final relay1 = device.telemetry?.relay1 ?? false;
                          final relay2 = device.telemetry?.relay2 ?? false;

                          return Card(
                            child: ListTile(
                              title: Text(
                                device.name,
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                              subtitle: Text(
                                '${device.type} • ${device.status.name}'
                                '${temp != null ? ' • ${temp.toStringAsFixed(1)}°C' : ''}'
                                ' • R1:${relay1 ? 'ON' : 'OFF'}'
                                ' • R2:${relay2 ? 'ON' : 'OFF'}',
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () {},
                            ),
                          );
                        }),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
