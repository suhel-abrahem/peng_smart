import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_home/core/network/auth_interceptor.dart';
import 'package:smart_home/core/network/common_service.dart';

import '../config/app/app_preferences.dart';

import '../features/add_device/data/data_sources/add_device_local_data_source.dart';
import '../features/add_device/data/data_sources/add_device_local_data_source_impl.dart';
import '../features/add_device/data/data_sources/add_device_remote_data_source.dart';
import '../features/add_device/data/data_sources/add_device_remote_data_source_impl.dart';
import '../features/add_device/data/data_sources/esp_provision_remote_data_source.dart';
import '../features/add_device/data/repository/add_device_repository_impl.dart';
import '../features/add_device/domain/repository/add_device_repository.dart';
import '../features/add_device/domain/usecase/check_esp_device_usecase.dart';
import '../features/add_device/domain/usecase/connect_to_esp_wifi_usecase.dart';
import '../features/add_device/domain/usecase/provision_device_wifi_usecase.dart';
import '../features/add_device/domain/usecase/register_device_usecase.dart';
import '../features/add_device/domain/usecase/save_device_locally_usecase.dart';
import '../features/add_device/presentions/bloc/add_device_bloc.dart';
import 'constants/api_constant.dart';
import 'network/token_manager.dart';

import 'resource/connectivity/check_connectivity.dart';
import 'wifi_onboarding/wifi_onboarding_service.dart';
import 'wifi_onboarding/wifi_onboarding_service_impl.dart';

GetIt getItInstance = GetIt.instance;
Future<void> initDependencies() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  getItInstance.registerFactory<AppPreferences>(
    () => AppPreferences(sharedPreferences),
  );
  //common services and utilities
  getItInstance.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {"Content-Type": "application/json"},
      ),
    ),
  );
  getItInstance.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {"Content-Type": "application/json"},
      ),
    ),
    instanceName: "refreshDio",
  );

  getItInstance.registerSingleton<TokenManager>(
    TokenManager(getItInstance(instanceName: "refreshDio"), getItInstance()),
  );
  final mainDio = getItInstance<Dio>();
  mainDio.interceptors.add(AuthInterceptor(mainDio, getItInstance()));

  getItInstance.registerLazySingleton(() => CommonService(mainDio));
  final espDio = Dio(
    BaseOptions(
      baseUrl: ApiConstant.espProvisionBaseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  getItInstance.registerSingleton<CheckConnectivity>(CheckConnectivity());
  // add device
  getItInstance.registerLazySingleton<CommonService>(
    () => CommonService(espDio),
    instanceName: 'esp',
  );

  getItInstance.registerLazySingleton<EspProvisionRemoteDataSource>(
    () => EspProvisionRemoteDataSourceImpl(
      getItInstance<CommonService>(instanceName: 'esp'),
    ),
  );
  getItInstance.registerLazySingleton<AddDeviceRemoteDataSource>(
    () => AddDeviceRemoteDataSourceImpl(getItInstance<CommonService>()),
  );

  getItInstance.registerLazySingleton<AddDeviceLocalDataSource>(
    () => AddDeviceLocalDataSourceImpl(sharedPreferences),
  );

  getItInstance.registerLazySingleton<AddDeviceRepository>(
    () => AddDeviceRepositoryImpl(
      getItInstance<EspProvisionRemoteDataSource>(),
      getItInstance<AddDeviceRemoteDataSource>(),
      getItInstance<AddDeviceLocalDataSource>(),
    ),
  );

  getItInstance.registerLazySingleton(
    () => CheckEspDeviceUseCase(getItInstance<AddDeviceRepository>()),
  );

  getItInstance.registerLazySingleton(
    () => ProvisionDeviceWifiUseCase(getItInstance<AddDeviceRepository>()),
  );

  getItInstance.registerLazySingleton(
    () => RegisterDeviceUseCase(getItInstance<AddDeviceRepository>()),
  );

  getItInstance.registerLazySingleton(
    () => SaveDeviceLocallyUseCase(getItInstance<AddDeviceRepository>()),
  );
  getItInstance.registerLazySingleton<WifiOnboardingService>(
    () => WifiOnboardingServiceImpl(),
  );

  getItInstance.registerLazySingleton(
    () => ConnectToEspWifiUseCase(getItInstance<WifiOnboardingService>()),
  );
  getItInstance.registerFactory(
    () => AddDeviceBloc(
      getItInstance<CheckEspDeviceUseCase>(),
      getItInstance<ProvisionDeviceWifiUseCase>(),
      getItInstance<RegisterDeviceUseCase>(),
      getItInstance<SaveDeviceLocallyUseCase>(),
      getItInstance<ConnectToEspWifiUseCase>(),
    ),
  );
  // home page
  //entities and models

  // end of home page
}
