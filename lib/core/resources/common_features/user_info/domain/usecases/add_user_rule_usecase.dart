import '../../../../../usecase/usecase.dart';
import '../../../../data_state.dart';
import '../repositories/user_rule_repository.dart';

class AddUserRuleUsecase implements UseCase<DataState<void>, UserRuleDataType> {
  final UserRuleRepository _userRuleRepository;

  AddUserRuleUsecase({required UserRuleRepository userRuleRepository})
      : _userRuleRepository = userRuleRepository;
  @override
  Future<DataState<void>> call({UserRuleDataType? params}) {
    return _userRuleRepository.addRule(params);
  }
}
