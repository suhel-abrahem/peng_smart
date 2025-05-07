import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/resources/data_type/items_data_type.dart';

import '../../core/resources/common_features/user_info/data/repositories/user_rule_repository_implement.dart';
import '../../core/resources/common_features/user_info/domain/entities/group_name_entity.dart';
import '../../core/resources/common_features/user_info/domain/entities/user_rule_entities.dart';
import '../../core/resources/common_features/user_info/domain/repositories/user_rule_repository.dart';
import '../../core/resources/common_features/user_info/domain/usecases/add_user_rule_usecase.dart';
import '../../core/resources/common_features/user_info/domain/usecases/get_user_rule_usecase.dart';
import '../../core/resources/common_features/user_info/presentation/bloc/rules_groups_bloc.dart';
import '../config/app/app_preferences.dart';
import '../features/login/data/data_sources/remote/service.dart';
import '../features/login/data/repositories/login_repository_implement.dart';
import '../features/login/domain/entities/login_entity.dart';
import '../features/login/domain/repositories/login_repository.dart';
import '../features/login/domain/usecase/login.dart';
import '../features/login/presentations/bloc/login_bloc.dart';
import 'resources/common_features/warehouse/bloc/items_bloc.dart';
import 'resources/common_features/warehouse/bloc/services_categories_bloc.dart';
import 'resources/common_features/warehouse/data/repositories/items_repository_implements.dart';
import 'resources/common_features/warehouse/data/repositories/services_categories_repository_implements.dart';
import 'resources/common_features/warehouse/domain/entities/categories_entities.dart';
import 'resources/common_features/warehouse/domain/entities/items_entities.dart';
import 'resources/common_features/warehouse/domain/repositories/items_repository.dart';
import 'resources/common_features/warehouse/domain/repositories/services_categories_repository.dart';
import 'resources/common_features/warehouse/domain/usecases/items_usecase.dart';
import 'resources/common_features/warehouse/domain/usecases/services_categories_usecase.dart';
import 'resources/common_features/warehouse/domain/usecases/set_items_usecase.dart';
import 'resources/common_features/warehouse/domain/usecases/set_services_category_usecase.dart';
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
  getItInstance
      .registerSingleton<CategoriesEntities>(const CategoriesEntities());
  getItInstance.registerSingleton<ServicesCategoriesRepository>(
      ServicesCategoriesRepositoryImplements(
          getItInstance<CommonService>(), getItInstance<CheckConnectivity>()));

  getItInstance.registerSingleton<ServicesCategoriesUseCase>(
      ServicesCategoriesUseCase(getItInstance<ServicesCategoriesRepository>()));
  getItInstance.registerSingleton<SetServicesCategoriesUseCase>(
      SetServicesCategoriesUseCase(
          getItInstance<ServicesCategoriesRepository>()));

  getItInstance
      .registerFactory<ServicesCategoriesBloc>(() => ServicesCategoriesBloc(
            getItInstance<ServicesCategoriesUseCase>(),
            getItInstance<SetServicesCategoriesUseCase>(),
          ));
  getItInstance.registerSingleton<ItemsEntities>(const ItemsEntities());
  getItInstance.registerSingleton<ItemsDataType>(
      ItemsDataType(itemsEntities: getItInstance<ItemsEntities>()));
  getItInstance.registerSingleton<ItemsRepository>(ItemsRepositoryImplements(
      commonService: getItInstance<CommonService>(),
      checkConnectivity: getItInstance<CheckConnectivity>()));
  getItInstance.registerSingleton(ItemsUseCase(
    itemsRepositories: getItInstance<ItemsRepository>(),
  ));
  getItInstance
      .registerSingleton(SetItemsUsecase(getItInstance<ItemsRepository>()));
  getItInstance.registerFactory<ItemsBloc>(() => ItemsBloc(
      getItInstance<ItemsUseCase>(), getItInstance<SetItemsUsecase>()));
  getItInstance.registerSingleton<UserRuleEntities>(const UserRuleEntities());
  getItInstance
      .registerSingleton<RuleGroupNameEntity>(const RuleGroupNameEntity());
  getItInstance.registerSingleton<UserRuleDataType>(UserRuleDataType());
  getItInstance.registerSingleton<UserRuleRepository>(
      UserRuleRepositoryImplement(
          commonService: getItInstance<CommonService>(),
          checkConnectivity: getItInstance<CheckConnectivity>()));
  getItInstance.registerSingleton<AddUserRuleUsecase>(AddUserRuleUsecase(
      userRuleRepository: getItInstance<UserRuleRepository>()));
  getItInstance.registerSingleton<GetUserRuleUsecase>(GetUserRuleUsecase(
      userRuleRepository: getItInstance<UserRuleRepository>()));
  
}
