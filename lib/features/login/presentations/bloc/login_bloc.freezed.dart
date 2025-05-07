// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginEntity loginEntity) login,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginEntity loginEntity)? login,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginEntity loginEntity)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventStarted value) started,
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventLogOut value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventStarted value)? started,
    TResult? Function(LoginEventLogin value)? login,
    TResult? Function(LoginEventLogOut value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventStarted value)? started,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventLogOut value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginEventStartedImplCopyWith<$Res> {
  factory _$$LoginEventStartedImplCopyWith(_$LoginEventStartedImpl value,
          $Res Function(_$LoginEventStartedImpl) then) =
      __$$LoginEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventStartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventStartedImpl>
    implements _$$LoginEventStartedImplCopyWith<$Res> {
  __$$LoginEventStartedImplCopyWithImpl(_$LoginEventStartedImpl _value,
      $Res Function(_$LoginEventStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginEventStartedImpl implements LoginEventStarted {
  const _$LoginEventStartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginEntity loginEntity) login,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginEntity loginEntity)? login,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginEntity loginEntity)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventStarted value) started,
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventLogOut value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventStarted value)? started,
    TResult? Function(LoginEventLogin value)? login,
    TResult? Function(LoginEventLogOut value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventStarted value)? started,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventLogOut value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class LoginEventStarted implements LoginEvent {
  const factory LoginEventStarted() = _$LoginEventStartedImpl;
}

/// @nodoc
abstract class _$$LoginEventLoginImplCopyWith<$Res> {
  factory _$$LoginEventLoginImplCopyWith(_$LoginEventLoginImpl value,
          $Res Function(_$LoginEventLoginImpl) then) =
      __$$LoginEventLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginEntity loginEntity});

  $LoginEntityCopyWith<$Res> get loginEntity;
}

/// @nodoc
class __$$LoginEventLoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventLoginImpl>
    implements _$$LoginEventLoginImplCopyWith<$Res> {
  __$$LoginEventLoginImplCopyWithImpl(
      _$LoginEventLoginImpl _value, $Res Function(_$LoginEventLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginEntity = null,
  }) {
    return _then(_$LoginEventLoginImpl(
      loginEntity: null == loginEntity
          ? _value.loginEntity
          : loginEntity // ignore: cast_nullable_to_non_nullable
              as LoginEntity,
    ));
  }

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginEntityCopyWith<$Res> get loginEntity {
    return $LoginEntityCopyWith<$Res>(_value.loginEntity, (value) {
      return _then(_value.copyWith(loginEntity: value));
    });
  }
}

/// @nodoc

class _$LoginEventLoginImpl implements LoginEventLogin {
  const _$LoginEventLoginImpl({required this.loginEntity});

  @override
  final LoginEntity loginEntity;

  @override
  String toString() {
    return 'LoginEvent.login(loginEntity: $loginEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventLoginImpl &&
            (identical(other.loginEntity, loginEntity) ||
                other.loginEntity == loginEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginEntity);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventLoginImplCopyWith<_$LoginEventLoginImpl> get copyWith =>
      __$$LoginEventLoginImplCopyWithImpl<_$LoginEventLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginEntity loginEntity) login,
    required TResult Function() logout,
  }) {
    return login(loginEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginEntity loginEntity)? login,
    TResult? Function()? logout,
  }) {
    return login?.call(loginEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginEntity loginEntity)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventStarted value) started,
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventLogOut value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventStarted value)? started,
    TResult? Function(LoginEventLogin value)? login,
    TResult? Function(LoginEventLogOut value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventStarted value)? started,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventLogOut value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEventLogin implements LoginEvent {
  const factory LoginEventLogin({required final LoginEntity loginEntity}) =
      _$LoginEventLoginImpl;

  LoginEntity get loginEntity;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventLoginImplCopyWith<_$LoginEventLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventLogOutImplCopyWith<$Res> {
  factory _$$LoginEventLogOutImplCopyWith(_$LoginEventLogOutImpl value,
          $Res Function(_$LoginEventLogOutImpl) then) =
      __$$LoginEventLogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventLogOutImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventLogOutImpl>
    implements _$$LoginEventLogOutImplCopyWith<$Res> {
  __$$LoginEventLogOutImplCopyWithImpl(_$LoginEventLogOutImpl _value,
      $Res Function(_$LoginEventLogOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginEventLogOutImpl implements LoginEventLogOut {
  const _$LoginEventLogOutImpl();

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventLogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginEntity loginEntity) login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginEntity loginEntity)? login,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginEntity loginEntity)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventStarted value) started,
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventLogOut value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventStarted value)? started,
    TResult? Function(LoginEventLogin value)? login,
    TResult? Function(LoginEventLogOut value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventStarted value)? started,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventLogOut value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LoginEventLogOut implements LoginEvent {
  const factory LoginEventLogOut() = _$LoginEventLogOutImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logingIn,
    required TResult Function(UserCredential? userCredential) logined,
    required TResult Function() loginedOut,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logingIn,
    TResult? Function(UserCredential? userCredential)? logined,
    TResult? Function()? loginedOut,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logingIn,
    TResult Function(UserCredential? userCredential)? logined,
    TResult Function()? loginedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoginIn value) logingIn,
    required TResult Function(Logined value) logined,
    required TResult Function(LoginedOut value) loginedOut,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoginIn value)? logingIn,
    TResult? Function(Logined value)? logined,
    TResult? Function(LoginedOut value)? loginedOut,
    TResult? Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoginIn value)? logingIn,
    TResult Function(Logined value)? logined,
    TResult Function(LoginedOut value)? loginedOut,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginInitialImplCopyWith<$Res> {
  factory _$$LoginInitialImplCopyWith(
          _$LoginInitialImpl value, $Res Function(_$LoginInitialImpl) then) =
      __$$LoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialImpl>
    implements _$$LoginInitialImplCopyWith<$Res> {
  __$$LoginInitialImplCopyWithImpl(
      _$LoginInitialImpl _value, $Res Function(_$LoginInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginInitialImpl implements LoginInitial {
  const _$LoginInitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logingIn,
    required TResult Function(UserCredential? userCredential) logined,
    required TResult Function() loginedOut,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logingIn,
    TResult? Function(UserCredential? userCredential)? logined,
    TResult? Function()? loginedOut,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logingIn,
    TResult Function(UserCredential? userCredential)? logined,
    TResult Function()? loginedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoginIn value) logingIn,
    required TResult Function(Logined value) logined,
    required TResult Function(LoginedOut value) loginedOut,
    required TResult Function(LoginError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoginIn value)? logingIn,
    TResult? Function(Logined value)? logined,
    TResult? Function(LoginedOut value)? loginedOut,
    TResult? Function(LoginError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoginIn value)? logingIn,
    TResult Function(Logined value)? logined,
    TResult Function(LoginedOut value)? loginedOut,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitialImpl;
}

/// @nodoc
abstract class _$$LoginLoginInImplCopyWith<$Res> {
  factory _$$LoginLoginInImplCopyWith(
          _$LoginLoginInImpl value, $Res Function(_$LoginLoginInImpl) then) =
      __$$LoginLoginInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoginInImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoginInImpl>
    implements _$$LoginLoginInImplCopyWith<$Res> {
  __$$LoginLoginInImplCopyWithImpl(
      _$LoginLoginInImpl _value, $Res Function(_$LoginLoginInImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoginInImpl implements LoginLoginIn {
  const _$LoginLoginInImpl();

  @override
  String toString() {
    return 'LoginState.logingIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoginInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logingIn,
    required TResult Function(UserCredential? userCredential) logined,
    required TResult Function() loginedOut,
    required TResult Function(String error) error,
  }) {
    return logingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logingIn,
    TResult? Function(UserCredential? userCredential)? logined,
    TResult? Function()? loginedOut,
    TResult? Function(String error)? error,
  }) {
    return logingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logingIn,
    TResult Function(UserCredential? userCredential)? logined,
    TResult Function()? loginedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (logingIn != null) {
      return logingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoginIn value) logingIn,
    required TResult Function(Logined value) logined,
    required TResult Function(LoginedOut value) loginedOut,
    required TResult Function(LoginError value) error,
  }) {
    return logingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoginIn value)? logingIn,
    TResult? Function(Logined value)? logined,
    TResult? Function(LoginedOut value)? loginedOut,
    TResult? Function(LoginError value)? error,
  }) {
    return logingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoginIn value)? logingIn,
    TResult Function(Logined value)? logined,
    TResult Function(LoginedOut value)? loginedOut,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (logingIn != null) {
      return logingIn(this);
    }
    return orElse();
  }
}

abstract class LoginLoginIn implements LoginState {
  const factory LoginLoginIn() = _$LoginLoginInImpl;
}

/// @nodoc
abstract class _$$LoginedImplCopyWith<$Res> {
  factory _$$LoginedImplCopyWith(
          _$LoginedImpl value, $Res Function(_$LoginedImpl) then) =
      __$$LoginedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredential? userCredential});
}

/// @nodoc
class __$$LoginedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginedImpl>
    implements _$$LoginedImplCopyWith<$Res> {
  __$$LoginedImplCopyWithImpl(
      _$LoginedImpl _value, $Res Function(_$LoginedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCredential = freezed,
  }) {
    return _then(_$LoginedImpl(
      userCredential: freezed == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
    ));
  }
}

/// @nodoc

class _$LoginedImpl implements Logined {
  const _$LoginedImpl({required this.userCredential});

  @override
  final UserCredential? userCredential;

  @override
  String toString() {
    return 'LoginState.logined(userCredential: $userCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginedImpl &&
            (identical(other.userCredential, userCredential) ||
                other.userCredential == userCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userCredential);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginedImplCopyWith<_$LoginedImpl> get copyWith =>
      __$$LoginedImplCopyWithImpl<_$LoginedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logingIn,
    required TResult Function(UserCredential? userCredential) logined,
    required TResult Function() loginedOut,
    required TResult Function(String error) error,
  }) {
    return logined(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logingIn,
    TResult? Function(UserCredential? userCredential)? logined,
    TResult? Function()? loginedOut,
    TResult? Function(String error)? error,
  }) {
    return logined?.call(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logingIn,
    TResult Function(UserCredential? userCredential)? logined,
    TResult Function()? loginedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (logined != null) {
      return logined(userCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoginIn value) logingIn,
    required TResult Function(Logined value) logined,
    required TResult Function(LoginedOut value) loginedOut,
    required TResult Function(LoginError value) error,
  }) {
    return logined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoginIn value)? logingIn,
    TResult? Function(Logined value)? logined,
    TResult? Function(LoginedOut value)? loginedOut,
    TResult? Function(LoginError value)? error,
  }) {
    return logined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoginIn value)? logingIn,
    TResult Function(Logined value)? logined,
    TResult Function(LoginedOut value)? loginedOut,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (logined != null) {
      return logined(this);
    }
    return orElse();
  }
}

abstract class Logined implements LoginState {
  const factory Logined({required final UserCredential? userCredential}) =
      _$LoginedImpl;

  UserCredential? get userCredential;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginedImplCopyWith<_$LoginedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginedOutImplCopyWith<$Res> {
  factory _$$LoginedOutImplCopyWith(
          _$LoginedOutImpl value, $Res Function(_$LoginedOutImpl) then) =
      __$$LoginedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginedOutImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginedOutImpl>
    implements _$$LoginedOutImplCopyWith<$Res> {
  __$$LoginedOutImplCopyWithImpl(
      _$LoginedOutImpl _value, $Res Function(_$LoginedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginedOutImpl implements LoginedOut {
  const _$LoginedOutImpl();

  @override
  String toString() {
    return 'LoginState.loginedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logingIn,
    required TResult Function(UserCredential? userCredential) logined,
    required TResult Function() loginedOut,
    required TResult Function(String error) error,
  }) {
    return loginedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logingIn,
    TResult? Function(UserCredential? userCredential)? logined,
    TResult? Function()? loginedOut,
    TResult? Function(String error)? error,
  }) {
    return loginedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logingIn,
    TResult Function(UserCredential? userCredential)? logined,
    TResult Function()? loginedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loginedOut != null) {
      return loginedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoginIn value) logingIn,
    required TResult Function(Logined value) logined,
    required TResult Function(LoginedOut value) loginedOut,
    required TResult Function(LoginError value) error,
  }) {
    return loginedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoginIn value)? logingIn,
    TResult? Function(Logined value)? logined,
    TResult? Function(LoginedOut value)? loginedOut,
    TResult? Function(LoginError value)? error,
  }) {
    return loginedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoginIn value)? logingIn,
    TResult Function(Logined value)? logined,
    TResult Function(LoginedOut value)? loginedOut,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (loginedOut != null) {
      return loginedOut(this);
    }
    return orElse();
  }
}

abstract class LoginedOut implements LoginState {
  const factory LoginedOut() = _$LoginedOutImpl;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements LoginError {
  const _$LoginErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logingIn,
    required TResult Function(UserCredential? userCredential) logined,
    required TResult Function() loginedOut,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logingIn,
    TResult? Function(UserCredential? userCredential)? logined,
    TResult? Function()? loginedOut,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logingIn,
    TResult Function(UserCredential? userCredential)? logined,
    TResult Function()? loginedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoginIn value) logingIn,
    required TResult Function(Logined value) logined,
    required TResult Function(LoginedOut value) loginedOut,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoginIn value)? logingIn,
    TResult? Function(Logined value)? logined,
    TResult? Function(LoginedOut value)? loginedOut,
    TResult? Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoginIn value)? logingIn,
    TResult Function(Logined value)? logined,
    TResult Function(LoginedOut value)? loginedOut,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements LoginState {
  const factory LoginError({required final String error}) = _$LoginErrorImpl;

  String get error;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
