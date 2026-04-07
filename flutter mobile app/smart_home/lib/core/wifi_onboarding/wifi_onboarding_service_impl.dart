import 'package:flutter/services.dart';

import 'wifi_onboarding_service.dart';

class WifiOnboardingServiceImpl implements WifiOnboardingService {
  static const MethodChannel _channel =
      MethodChannel('smart_home/wifi_onboarding');

  @override
  Future<void> connectToEspNetwork({
    required String ssid,
    String? password,
    bool isOpen = false,
  }) async {
    try {
      await _channel.invokeMethod('connectToEspNetwork', {
        'ssid': ssid,
        'password': password,
        'isOpen': isOpen,
      });
    } on PlatformException catch (e) {
      throw Exception(e.message ?? 'Failed to connect to ESP network');
    }
  }
}