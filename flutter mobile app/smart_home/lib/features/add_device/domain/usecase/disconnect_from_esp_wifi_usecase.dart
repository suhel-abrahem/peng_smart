import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/core/wifi_onboarding/wifi_onboarding_service.dart';

class DisconnectFromEspWifiUseCase implements UseCase<void, NoParams> {
  final WifiOnboardingService _wifiOnboardingService;

  DisconnectFromEspWifiUseCase(this._wifiOnboardingService);

  @override
  Future<void> call({NoParams? params}) {
    return _wifiOnboardingService.disconnectFromEspNetwork();
  }
}
