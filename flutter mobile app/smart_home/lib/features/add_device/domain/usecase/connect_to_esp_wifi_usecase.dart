import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/core/wifi_onboarding/wifi_onboarding_service.dart';

class ConnectToEspWifiParams {
  final String ssid;
  final String? password;
  final bool isOpen;

  ConnectToEspWifiParams({
    required this.ssid,
    this.password,
    this.isOpen = false,
  });
}

class ConnectToEspWifiUseCase
    implements UseCase<void, ConnectToEspWifiParams> {
  final WifiOnboardingService _wifiOnboardingService;

  ConnectToEspWifiUseCase(this._wifiOnboardingService);

  @override
  Future<void> call({ConnectToEspWifiParams? params}) {
    return _wifiOnboardingService.connectToEspNetwork(
      ssid: params!.ssid,
      password: params.password,
      isOpen: params.isOpen,
    );
  }
}