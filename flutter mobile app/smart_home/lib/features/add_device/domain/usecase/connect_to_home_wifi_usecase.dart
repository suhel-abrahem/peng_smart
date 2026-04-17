import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/core/wifi_onboarding/wifi_onboarding_service.dart';

part 'connect_to_home_wifi_usecase.freezed.dart';

@freezed
abstract class ConnectToHomeWifiParams with _$ConnectToHomeWifiParams {
  const factory ConnectToHomeWifiParams({
    required String ssid,
    String? password,
    @Default(false) bool isOpen,
  }) = _ConnectToHomeWifiParams;
}

class ConnectToHomeWifiUseCase
    implements UseCase<void, ConnectToHomeWifiParams> {
  final WifiOnboardingService _wifiOnboardingService;

  ConnectToHomeWifiUseCase(this._wifiOnboardingService);

  @override
  Future<void> call({ConnectToHomeWifiParams? params}) {
    return _wifiOnboardingService.connectToHomeNetwork(
      ssid: params!.ssid,
      password: params.password,
      isOpen: params.isOpen,
    );
  }
}