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
import '../features/add_device/domain/usecase/disconnect_from_esp_wifi_usecase.dart';
import '../features/add_device/domain/usecase/get_devices_by_home_id_usecase.dart';
import '../features/add_device/domain/usecase/get_devices_by_room_id_usecase.dart';
import '../features/add_device/domain/usecase/provision_device_wifi_usecase.dart';
import '../features/add_device/domain/usecase/register_device_usecase.dart';
import '../features/add_device/domain/usecase/save_device_locally_usecase.dart';
import '../features/add_device/presentions/bloc/add_device_bloc.dart';
import '../features/auth/data/datasources/auth_remote_data_source.dart';
import '../features/auth/data/datasources/auth_remote_data_source_impl.dart';
import '../features/auth/data/repositories/auth_repository_impl.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/auth/domain/usecases/login_usecase.dart';
import '../features/auth/domain/usecases/register_usecase.dart';
import '../features/auth/presentation/bloc/auth_bloc.dart';
import '../features/home_page/presentation/bloc/dashboard_bloc.dart';
import '../features/homes/data/datasources/home_remote_data_source.dart'
    show HomeRemoteDataSource;
import '../features/homes/data/datasources/home_remote_data_source_impl.dart';
import '../features/homes/data/repositories/home_repository_impl.dart';
import '../features/homes/domain/repositories/home_repository.dart';
import '../features/homes/domain/usecases/create_home_usecase.dart';
import '../features/homes/domain/usecases/get_my_homes_usecase.dart';
import '../features/homes/presentation/bloc/home_bloc.dart';
import '../features/room/data/datasources/room_remote_data_source.dart';
import '../features/room/data/datasources/room_remote_data_source_impl.dart';
import '../features/room/data/repositories/room_repository_impl.dart';
import '../features/room/domain/repositories/room_repository.dart';
import '../features/room/domain/usecases/create_room_usecase.dart';
import '../features/room/domain/usecases/get_rooms_by_home_id_usecase.dart';
import '../features/room/presentation/bloc/add_room_bloc.dart';
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
    () => DisconnectFromEspWifiUseCase(getItInstance<WifiOnboardingService>()),
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
  // end of add device
  // auth
  // data sources
  getItInstance.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(getItInstance<CommonService>()),
  );
  // repositories
  getItInstance.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getItInstance<AuthRemoteDataSource>()),
  );

  // usecases
  getItInstance.registerLazySingleton(
    () => LoginUseCase(getItInstance<AuthRepository>()),
  );

  getItInstance.registerLazySingleton(
    () => RegisterUseCase(getItInstance<AuthRepository>()),
  );
  // presentation bloc
  getItInstance.registerFactory(
    () => AuthBloc(
      getItInstance<LoginUseCase>(),
      getItInstance<RegisterUseCase>(),
    ),
  );
  // end of auth
  // home page
  getItInstance.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(getItInstance<CommonService>()),
  );

  getItInstance.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(getItInstance<HomeRemoteDataSource>()),
  );

  getItInstance.registerLazySingleton(
    () => GetMyHomesUseCase(getItInstance<HomeRepository>()),
  );

  getItInstance.registerLazySingleton(
    () => CreateHomeUseCase(getItInstance<HomeRepository>()),
  );

  getItInstance.registerFactory(
    () => HomeBloc(
      getItInstance<GetMyHomesUseCase>(),
      getItInstance<CreateHomeUseCase>(),
    ),
  );
  getItInstance.registerLazySingleton(
    () => GetDevicesByHomeIdUseCase(getItInstance<AddDeviceRepository>()),
  );

  getItInstance.registerLazySingleton(
    () => GetDevicesByRoomIdUseCase(getItInstance<AddDeviceRepository>()),
  );

  getItInstance.registerFactory(
    () => DashboardBloc(
      getItInstance<GetMyHomesUseCase>(),
      getItInstance<GetRoomsByHomeIdUseCase>(),
      getItInstance<GetDevicesByHomeIdUseCase>(),
      getItInstance<GetDevicesByRoomIdUseCase>(),
    ),
  );
  // end of home page
  //room
  getItInstance.registerLazySingleton<RoomRemoteDataSource>(
    () => RoomRemoteDataSourceImpl(getItInstance<CommonService>()),
  );
  getItInstance.registerLazySingleton<RoomRepository>(
    () => RoomRepositoryImpl(getItInstance<RoomRemoteDataSource>()),
  );

  getItInstance.registerLazySingleton(
    () => GetRoomsByHomeIdUseCase(getItInstance<RoomRepository>()),
  );
  getItInstance.registerLazySingleton(
    () => CreateRoomUseCase(getItInstance<RoomRepository>()),
  );

  getItInstance.registerFactory(
    () => AddRoomBloc(getItInstance<CreateRoomUseCase>()),
  );
}
