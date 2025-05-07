import '../../../../../usecase/usecase.dart';
import '../../../../data_state.dart';

abstract class UserRuleRepository {
  Future<DataState<void>> addRule(UserRuleDataType? userRuleDataType);
  Future<DataState<List<UserRuleDataType?>?>> getRule(
      UserRuleDataType? userRuleDataType);
}
