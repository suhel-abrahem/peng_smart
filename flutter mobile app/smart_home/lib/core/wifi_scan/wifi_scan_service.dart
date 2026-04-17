import 'package:wifi_scan/wifi_scan.dart';

class WifiScanService {
  Future<List<WiFiAccessPoint>> scan24GHzNetworks() async {
    final can = await WiFiScan.instance.canStartScan();

    if (can != CanStartScan.yes) {
      throw Exception('Wi-Fi scan not available: $can');
    }

    final started = await WiFiScan.instance.startScan();
    if (!started) {
      throw Exception('Failed to start Wi-Fi scan');
    }

    final canGet = await WiFiScan.instance.canGetScannedResults();
    if (canGet != CanGetScannedResults.yes) {
      throw Exception('Cannot get scanned Wi-Fi results: $canGet');
    }

    final results = await WiFiScan.instance.getScannedResults();

    // 2.4 GHz usually between 2400 and 2500 MHz
    final filtered = results.where((e) {
      final freq = e.frequency;
      return freq >= 2400 && freq <= 2500 && e.ssid.trim().isNotEmpty;
    }).toList();

    // Remove duplicates by SSID, keep strongest
    filtered.sort((a, b) => b.level.compareTo(a.level));

    final Map<String, WiFiAccessPoint> unique = {};
    for (final ap in filtered) {
      unique.putIfAbsent(ap.ssid, () => ap);
    }

    return unique.values.toList();
  }
}
