import 'package:get_it/get_it.dart';
import 'package:peng_smart/features/home_page/domain/repositories/rooms_repository.dart';
import 'package:peng_smart/features/home_page/domain/usecases/add_room_usecase.dart';
import 'package:peng_smart/features/home_page/domain/usecases/get_rooms_usecase.dart';
import 'package:peng_smart/features/home_page/presentation/bloc/rooms_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/app/app_preferences.dart';
import '../features/home_page/data/repositories/rooms_repository_implemeant.dart';
import '../features/login/data/data_sources/remote/service.dart';
import '../features/login/data/repositories/login_repository_implement.dart';
import '../features/login/domain/entities/login_entity.dart';
import '../features/login/domain/repositories/login_repository.dart';
import '../features/login/domain/usecase/login.dart';
import '../features/login/presentations/bloc/login_bloc.dart';
import 'resources/common_service/common_service.dart';
import 'resources/connectivity/check_connectivity.dart';
import 'usecase/usecase.dart';

final getItInstance = GetIt.instance;
Future<void> initializeDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  getItInstance
      .registerFactory<AppPreferences>(() => AppPreferences(sharedPreferences));
  getItInstance.registerSingleton<LoginServices>(LoginServices());
  getItInstance.registerSingleton<LoginEntity>(const LoginEntity());
  getItInstance.registerSingleton<LogInRepository>(
      LogInRepositoryImplements(getItInstance()));
  getItInstance.registerSingleton<LogInUseCase>(LogInUseCase(
      logInRepository: getItInstance<LogInRepository>(),
      params: getItInstance<LoginEntity>()));
  getItInstance.registerFactory<LoginBloc>(() => LoginBloc(getItInstance()));
  getItInstance.registerSingleton<CommonService>(CommonService());
  getItInstance.registerSingleton<CheckConnectivity>(CheckConnectivity());
  getItInstance.registerSingleton<RoomsRepository>(RoomsRepositoryImplement());
  getItInstance.registerSingleton<AddRoomUsecase>(
      AddRoomUsecase(getItInstance<RoomsRepository>()));
  getItInstance.registerSingleton<GetRoomsUsecase>(
      GetRoomsUsecase(getItInstance<RoomsRepository>()));
  getItInstance.registerSingleton<RoomsBloc>(RoomsBloc(
      getItInstance<AddRoomUsecase>(), getItInstance<GetRoomsUsecase>()));
}
