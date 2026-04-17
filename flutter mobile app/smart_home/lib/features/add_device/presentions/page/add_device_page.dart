import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/dependencies_injection.dart';

import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:wifi_scan/wifi_scan.dart';

import '../../../../core/network/common_service.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/wifi_scan/wifi_scan_service.dart';
import '../../../homes/domain/entities/home_entity.dart';
import '../../../room/domain/entities/room_entity.dart';
import '../../domain/usecase/connect_to_home_wifi_usecase.dart';
import '../../domain/usecase/disconnect_from_esp_wifi_usecase.dart';
import '../../domain/usecase/register_device_usecase.dart';
import '../bloc/add_device_bloc.dart';
import '../bloc/add_device_event.dart';
import '../bloc/add_device_state.dart';

class AddDevicePage extends StatefulWidget {
  final HomeEntity home;
  final List<RoomEntity> rooms;

  const AddDevicePage({super.key, required this.home, required this.rooms});

  @override
  State<AddDevicePage> createState() => _AddDevicePageState();
}

class _AddDevicePageState extends State<AddDevicePage> {
  final TextEditingController _deviceNameController = TextEditingController();

  final TextEditingController _ssidController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  RoomEntity? _selectedRoom;
  bool _espWifiConnected = false;
  bool _espChecked = false;
  DeviceEntity? _checkedDevice;
  List<WiFiAccessPoint> _wifiNetworks = [];
  WiFiAccessPoint? _selectedWifi;
  bool _isScanningWifi = false;
  @override
  void initState() {
    super.initState();
    _scanWifiNetworks();
  }

  @override
  void dispose() {
    _deviceNameController.dispose();

    _ssidController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _scanWifiNetworks() async {
    setState(() {
      _isScanningWifi = true;
    });

    try {
      final results = await getItInstance<WifiScanService>()
          .scan24GHzNetworks();

      if (!mounted) return;

      setState(() {
        _wifiNetworks = results;

        if (_selectedWifi != null) {
          final match = results.where((e) => e.ssid == _selectedWifi!.ssid);
          _selectedWifi = match.isNotEmpty ? match.first : null;
        }

        if (_selectedWifi != null) {
          _ssidController.text = _selectedWifi!.ssid;
        }
      });

      if (results.isEmpty) {
        showMessage(
          message: 'No 2.4 GHz Wi-Fi networks found',
          context: context,
        );
      }
    } catch (e) {
      if (!mounted) return;
      showMessage(message: e.toString(), context: context);
    } finally {
      if (mounted) {
        setState(() {
          _isScanningWifi = false;
        });
      }
    }
  }

  AddDeviceInputModel _buildInputModel() {
    return AddDeviceInputModel(
      deviceName: _deviceNameController.text.trim(),
      roomName: _selectedRoom?.name ?? '',
      roomId: _selectedRoom?.id ?? '',
      homeWifiSsid: _selectedWifi?.ssid ?? _ssidController.text.trim(),
      homeWifiPassword: _passwordController.text.trim(),
      homeId: widget.home.id,
      homeName: widget.home.name,
    );
  }

  bool _validateForm() {
    if (_deviceNameController.text.trim().isEmpty) {
      showMessage(message: 'Please enter device name', context: context);
      return false;
    }
    if (_selectedRoom == null) {
      showMessage(message: 'Please select a room', context: context);
      return false;
    }
    if ((_selectedWifi?.ssid ?? _ssidController.text.trim()).isEmpty) {
      showMessage(message: 'Please select home Wi-Fi', context: context);
      return false;
    }
    return true;
  }

  bool get _canAddDevice {
    return !_isScanningWifi &&
        _espWifiConnected &&
        _espChecked &&
        _checkedDevice != null &&
        _deviceNameController.text.trim().isNotEmpty &&
        _selectedRoom != null &&
        ((_selectedWifi?.ssid ?? _ssidController.text.trim()).isNotEmpty) &&
        _passwordController.text.trim().isNotEmpty;
  }

  Future<bool> _waitForBackendReachable({required Duration timeout}) async {
    final end = DateTime.now().add(timeout);

    while (DateTime.now().isBefore(end)) {
      try {
        final response = await getItInstance<CommonService>().get('/');
        if (response != null && response.statusCode == 200) {
          return true;
        }
      } catch (_) {}

      await Future.delayed(const Duration(seconds: 1));
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getItInstance<AddDeviceBloc>(),
      child: BlocConsumer<AddDeviceBloc, AddDeviceState>(
        listener: (context, state) async {
          state.whenOrNull(
            espWifiConnected: () {
              _espWifiConnected = true;
              showMessage(
                message: 'Connected to ESP network',
                context: context,
              );
              context.read<AddDeviceBloc>().add(
                const AddDeviceEvent.checkEspDevice(),
              );
            },
            espChecked: (device) {
              setState(() {
                _espChecked = true;
                _checkedDevice = device;
              });
              showMessage(
                message:
                    'ESP found: ${device.type} (${device.deviceMacAddress})',
                context: context,
              );
            },
            wifiProvisioned: (device) async {
              showMessage(message: 'Wi-Fi sent to device', context: context);

              try {
                await getItInstance<DisconnectFromEspWifiUseCase>().call(
                  params: NoParams(),
                );
              } catch (_) {}

              try {
                await getItInstance<ConnectToHomeWifiUseCase>().call(
                  params: ConnectToHomeWifiParams(
                    ssid: _buildInputModel().homeWifiSsid,
                    password: _buildInputModel().homeWifiPassword,
                    isOpen: false,
                  ),
                );
              } catch (e) {
                showMessage(
                  message: 'Failed to connect to selected home Wi-Fi',
                  context: context,
                );
                return;
              }

              final reachable = await _waitForBackendReachable(
                timeout: const Duration(seconds: 30),
              );

              if (!reachable) {
                showMessage(
                  message: 'Failed to reconnect to backend within 30 seconds',
                  context: context,
                );

                return;
              }

              if (!mounted || _checkedDevice == null) return;

              context.read<AddDeviceBloc>().add(
                AddDeviceEvent.registerDevice(
                  params: RegisterDeviceParams(
                    input: _buildInputModel(),
                    device: _checkedDevice!,
                  ),
                ),
              );
            },
            deviceRegistered: (device) {
              showMessage(message: 'Device registered', context: context);
              context.read<AddDeviceBloc>().add(
                AddDeviceEvent.saveDeviceLocally(device: device),
              );
            },
            deviceSavedLocally: (device) {
              showMessage(message: 'Device saved locally', context: context);
            },
            success: (device) {
              showMessage(
                message: 'Device added successfully',
                context: context,
              );
              Navigator.pop(context, true);
            },
            error: (message) {
              showMessage(message: message, context: context);
            },
          );
        },
        builder: (context, state) {
          final bool isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return Scaffold(
            appBar: AppBar(title: const Text('Add Device')),
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Step 1',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Hold the ESP button for 10 seconds until it enters hotspot mode.',
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: isLoading
                            ? null
                            : () {
                                context.read<AddDeviceBloc>().add(
                                  const AddDeviceEvent.connectToEspWifi(),
                                );
                              },
                        child: Text(
                          isLoading
                              ? 'Please wait...'
                              : _espWifiConnected
                              ? 'Reconnect to ESP'
                              : 'Connect To ESP',
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'ESP Status',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Wi-Fi connected: ${_espWifiConnected ? "Yes" : "No"}',
                          ),
                          Text('Device checked: ${_espChecked ? "Yes" : "No"}'),
                          if (_checkedDevice != null) ...[
                            const SizedBox(height: 8),
                            Text('Type: ${_checkedDevice?.type ?? ''}'),
                            Text(
                              'MAC: ${_checkedDevice?.deviceMacAddress ?? ''}',
                            ),
                          ],
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Step 2',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('Fill device info and home Wi-Fi credentials.'),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _deviceNameController,
                      onChanged: (_) => setState(() {}),
                      decoration: const InputDecoration(
                        labelText: 'Device Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<RoomEntity>(
                      value: _selectedRoom,
                      decoration: const InputDecoration(
                        labelText: 'Room',
                        border: OutlineInputBorder(),
                      ),
                      items: widget.rooms.map((room) {
                        return DropdownMenuItem(
                          value: room,
                          child: Text(room.name),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedRoom = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<WiFiAccessPoint>(
                            value: _selectedWifi,
                            decoration: const InputDecoration(
                              labelText: 'Home Wi-Fi SSID (2.4 GHz)',
                              border: OutlineInputBorder(),
                            ),
                            items: _wifiNetworks.map((wifi) {
                              return DropdownMenuItem(
                                value: wifi,
                                child: Text(
                                  '${wifi.ssid} (${wifi.level} dBm)',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedWifi = value;
                                _ssidController.text = value?.ssid ?? '';
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        SizedBox(
                          height: 56,
                          child: ElevatedButton(
                            onPressed: _isScanningWifi
                                ? null
                                : _scanWifiNetworks,
                            child: Text(_isScanningWifi ? '...' : 'Scan'),
                          ),
                        ),
                      ],
                    ),
                    if (_selectedWifi != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        'Selected: ${_selectedWifi!.ssid} • ${_selectedWifi!.frequency} MHz',
                      ),
                    ],
                    TextField(
                      controller: _ssidController,
                      onChanged: (_) => setState(() {}),
                      decoration: const InputDecoration(
                        labelText: 'Or enter SSID manually',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      onChanged: (_) => setState(() {}),
                      decoration: const InputDecoration(
                        labelText: 'Home Wi-Fi Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (isLoading || !_canAddDevice)
                            ? null
                            : () {
                                if (!_validateForm()) {
                                  return;
                                }

                                context.read<AddDeviceBloc>().add(
                                  AddDeviceEvent.completeAddDevice(
                                    input: _buildInputModel(),
                                    device: _checkedDevice!,
                                  ),
                                );
                              },
                        child: Text(
                          isLoading ? 'Please wait...' : 'Add Device',
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    state.maybeWhen(
                      loading: () => const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      error: (message) => Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          message,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                      orElse: () => const SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
