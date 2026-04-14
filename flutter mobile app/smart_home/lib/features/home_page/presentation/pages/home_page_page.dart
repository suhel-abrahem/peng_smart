import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/dependencies_injection.dart';

import '../../../../config/route/routes_manager.dart';
import '../bloc/dashboard_bloc.dart';

class HomePagePage extends StatelessWidget {
  const HomePagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getItInstance<DashboardBloc>()..add(const DashboardEvent.load()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Smart Home')),
        body: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              loaded: (homes, selectedHome, rooms, devices) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<DashboardBloc>().add(
                      const DashboardEvent.load(),
                    );
                  },
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      DropdownButtonFormField<String>(
                        value: selectedHome.id,
                        decoration: const InputDecoration(labelText: 'Home'),
                        items: homes
                            .map(
                              (home) => DropdownMenuItem(
                                value: home.id,
                                child: Text(home.name),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          final selected = homes.firstWhere(
                            (e) => e.id == value,
                          );
                          context.read<DashboardBloc>().add(
                            DashboardEvent.selectHome(home: selected),
                          );
                        },
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Rooms',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 50,
                        child: rooms.isEmpty
                            ? const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('No rooms yet'),
                              )
                            : ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: rooms.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(width: 8),
                                itemBuilder: (context, index) {
                                  final room = rooms[index];
                                  return Chip(label: Text(room.name));
                                },
                              ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Devices',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      if (devices.isEmpty)
                        const Text('No devices yet')
                      else
                        ...devices.map((device) {
                          final temp = device.telemetry?.temperature;
                          final relay1 = device.telemetry?.relay1 ?? false;
                          final relay2 = device.telemetry?.relay2 ?? false;

                          return Card(
                            child: ListTile(
                              title: Text(device.name),
                              subtitle: Text(
                                '${device.type} • ${device.status.name}'
                                '${temp != null ? ' • ${temp.toStringAsFixed(1)}°C' : ''}'
                                ' • R1:${relay1 ? 'ON' : 'OFF'}'
                                ' • R2:${relay2 ? 'ON' : 'OFF'}',
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
        floatingActionButton: Builder(
          builder: (context) {
            return PopupMenuButton<String>(
              icon: const Icon(Icons.add),
              onSelected: (value) async {
                if (value == 'room') {
                  final state = context.read<DashboardBloc>().state;
                  if (state is DashboardLoaded) {
                    final created = await context.push<bool>(
                      '/addRoom',
                      extra: state.selectedHome,
                    );

                    if (created == true && context.mounted) {
                      context.read<DashboardBloc>().add(
                        DashboardEvent.selectHome(home: state.selectedHome),
                      );
                    }
                  }
                } else if (value == 'device') {
                  context.push(RoutesPath.addDevicePage);
                }
              },
              itemBuilder: (_) => const [
                PopupMenuItem(value: 'room', child: Text('Add Room')),
                PopupMenuItem(value: 'device', child: Text('Add Device')),
              ],
            );
          },
        ),
      ),
    );
  }
}
