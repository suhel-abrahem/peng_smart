part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required LoginInputModel input}) = LoginEvent;

  const factory AuthEvent.register({required RegisterInputModel input}) =
      RegisterEvent;

  const factory AuthEvent.reset() = ResetAuthEvent;
}
