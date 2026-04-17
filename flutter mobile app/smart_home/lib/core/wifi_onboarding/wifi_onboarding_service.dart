abstract class WifiOnboardingService {
  Future<void> connectToEspNetwork({
    required String ssid,
    String? password,
    bool isOpen = false,
  });

  Future<void> connectToHomeNetwork({
    required String ssid,
    String? password,
    bool isOpen = false,
  });

  Future<void> disconnectFromEspNetwork();
}