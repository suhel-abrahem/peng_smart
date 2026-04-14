import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../data/models/login_input_model.dart';
import '../../data/models/register_input_model.dart';
import '../../domain/entities/auth_response_entity.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/register_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;

  AuthBloc(
    this._loginUseCase,
    this._registerUseCase,
  ) : super(const AuthState.initial()) {
    on<LoginEvent>(_onLogin);
    on<RegisterEvent>(_onRegister);
    on<ResetAuthEvent>(_onReset);
  }

  Future<void> _onLogin(
    LoginEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final result = await _loginUseCase.call(params: event.input);

    if (result is DataSuccess<AuthResponseEntity>) {
      emit(AuthState.success(response: result.data!));
    } else {
      emit(
        AuthState.error(
          message: result.error?.toString() ?? 'Login failed',
        ),
      );
    }
  }

  Future<void> _onRegister(
    RegisterEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final result = await _registerUseCase.call(params: event.input);

    if (result is DataSuccess<AuthResponseEntity>) {
      emit(AuthState.success(response: result.data!));
    } else {
      emit(
        AuthState.error(
          message: result.error?.toString() ?? 'Register failed',
        ),
      );
    }
  }

  void _onReset(
    ResetAuthEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthState.initial());
  }
}