import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/dependencies_injection.dart';

import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

import '../bloc/add_device_bloc.dart';
import '../bloc/add_device_event.dart';
import '../bloc/add_device_state.dart';

class AddDevicePage extends StatefulWidget {
  const AddDevicePage({super.key});

  @override
  State<AddDevicePage> createState() => _AddDevicePageState();
}

class _AddDevicePageState extends State<AddDevicePage> {
  final TextEditingController _deviceNameController = TextEditingController();
  final TextEditingController _roomController = TextEditingController();
  final TextEditingController _ssidController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _espWifiConnected = false;
  bool _espChecked = false;
  DeviceEntity? _checkedDevice;

  @override
  void dispose() {
    _deviceNameController.dispose();
    _roomController.dispose();
    _ssidController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  AddDeviceInputModel _buildInputModel() {
    return AddDeviceInputModel(
      deviceName: _deviceNameController.text.trim(),
      roomName: _roomController.text.trim(),
      homeWifiSsid: _ssidController.text.trim(),
      homeWifiPassword: _passwordController.text.trim(),
    );
  }

  bool _validateForm() {
    if (_deviceNameController.text.trim().isEmpty) {
      _showMessage('Please enter device name');
      return false;
    }
    if (_ssidController.text.trim().isEmpty) {
      _showMessage('Please enter home Wi-Fi name');
      return false;
    }
    return true;
  }

  void _showMessage(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getItInstance<AddDeviceBloc>(),
      child: BlocConsumer<AddDeviceBloc, AddDeviceState>(
        listener: (context, state) {
          state.whenOrNull(
            espWifiConnected: () {
              _espWifiConnected = true;
              _showMessage('Connected to ESP network');
              context.read<AddDeviceBloc>().add(
                const AddDeviceEvent.checkEspDevice(),
              );
            },
            espChecked: (device) {
              setState(() {
                _espChecked = true;
                _checkedDevice = device;
              });
              _showMessage(
                'ESP found: ${device.type ?? ''} (${device.deviceMacAddress ?? ''})',
              );
            },
            wifiProvisioned: (device) {
              _showMessage('Wi-Fi sent to device');
            },
            deviceRegistered: (device) {
              _showMessage('Device registered');
            },
            deviceSavedLocally: (device) {
              _showMessage('Device saved locally');
            },
            success: (device) {
              _showMessage('Device added successfully');
              Navigator.pop(context, device);
            },
            error: (message) {
              _showMessage(message);
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
                      decoration: const InputDecoration(
                        labelText: 'Device Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _roomController,
                      decoration: const InputDecoration(
                        labelText: 'Room',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _ssidController,
                      decoration: const InputDecoration(
                        labelText: 'Home Wi-Fi SSID',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Home Wi-Fi Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: isLoading
                            ? null
                            : () {
                                if (!_espWifiConnected) {
                                  _showMessage('Please connect to ESP first');
                                  return;
                                }
                                if (!_espChecked) {
                                  _showMessage('Please check ESP device first');
                                  return;
                                }
                                if (!_validateForm()) {
                                  return;
                                }

                                context.read<AddDeviceBloc>().add(
                                  AddDeviceEvent.completeAddDevice(
                                    input: _buildInputModel(),
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
