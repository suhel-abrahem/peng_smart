import 'package:easy_localization/easy_localization.dart';

import '../../generated/locale_keys.g.dart';

abstract class DataState<T> {
  final T? data;
  final String? message;

  const DataState({this.data, this.message});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess({super.data});
}

class LogInState<T> extends DataState<T> {
  const LogInState({super.data, super.message});
}

class DataFailed<T> extends DataState<T> {
  const DataFailed({required String message}) : super(message: message);
}

class NoInternet<T> extends DataState<T> {
  NoInternet() : super(message: LocaleKeys.connection_noInternetError.tr());
}

class LocallySaveFailed<T> extends DataState<T> {
  LocallySaveFailed() : super(message: LocaleKeys.locallySaveFailed.tr());
}

class RulesGroupsNameAlreadyExist<T> extends DataState<T> {
  RulesGroupsNameAlreadyExist()
      : super(message: LocaleKeys.thisGroupNameAlreadyFounded.tr());
}

class FailedToGetRuleGroupsName<T> extends DataState<T> {
  FailedToGetRuleGroupsName({super.message});
}

class FailedToSetRulesGroupName<T> extends DataState<T> {
  FailedToSetRulesGroupName({super.message});
}

class NoRoomsFounded<T> extends DataState<T> {
  NoRoomsFounded({super.message});
}
