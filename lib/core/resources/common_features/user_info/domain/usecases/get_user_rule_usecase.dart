import '../../../../../usecase/usecase.dart';
import '../../../../data_state.dart';
import '../repositories/user_rule_repository.dart';

class GetUserRuleUsecase
    implements UseCase<DataState<List<UserRuleDataType?>?>, UserRuleDataType> {
  final UserRuleRepository _userRuleRepository;

  GetUserRuleUsecase({required UserRuleRepository userRuleRepository})
      : _userRuleRepository = userRuleRepository;
  @override
  Future<DataState<List<UserRuleDataType?>?>> call({UserRuleDataType? params}) {
    return _userRuleRepository.getRule(params);
  }
}
