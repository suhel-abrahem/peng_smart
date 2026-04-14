part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.success({required AuthResponseEntity response}) =
      AuthSuccess;
  const factory AuthState.error({required String message}) = AuthError;
}
