import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_home/core/network/auth_interceptor.dart';
import 'package:smart_home/core/network/common_service.dart';

import '../config/app/app_preferences.dart';

import '../features/add_device/data/data_sources/esp_provision_remote_data_source.dart';
import 'constants/api_constant.dart';
import 'network/token_manager.dart';

import 'resource/connectivity/check_connectivity.dart';

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
      baseUrl: 'http://192.168.4.1',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ),
  );

  getItInstance.registerLazySingleton<CommonService>(
    () => CommonService(espDio),
    instanceName: 'esp',
  );

  getItInstance.registerLazySingleton<EspProvisionRemoteDataSource>(
    () => EspProvisionRemoteDataSourceImpl(
      getItInstance<CommonService>(instanceName: 'esp'),
    ),
  );
  getItInstance.registerSingleton<CheckConnectivity>(CheckConnectivity());

  // home page
  //entities and models

  // end of home page
}
