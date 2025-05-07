// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rules_groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RulesGroupsEvent {
  UserRuleDataType get userRuleDataType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRuleDataType userRuleDataType) started,
    required TResult Function(UserRuleDataType userRuleDataType) get,
    required TResult Function(UserRuleDataType userRuleDataType) set,
    required TResult Function(UserRuleDataType userRuleDataType) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRuleDataType userRuleDataType)? started,
    TResult? Function(UserRuleDataType userRuleDataType)? get,
    TResult? Function(UserRuleDataType userRuleDataType)? set,
    TResult? Function(UserRuleDataType userRuleDataType)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRuleDataType userRuleDataType)? started,
    TResult Function(UserRuleDataType userRuleDataType)? get,
    TResult Function(UserRuleDataType userRuleDataType)? set,
    TResult Function(UserRuleDataType userRuleDataType)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Get value) get,
    required TResult Function(Set value) set,
    required TResult Function(Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Get value)? get,
    TResult? Function(Set value)? set,
    TResult? Function(Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Get value)? get,
    TResult Function(Set value)? set,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RulesGroupsEventCopyWith<RulesGroupsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RulesGroupsEventCopyWith<$Res> {
  factory $RulesGroupsEventCopyWith(
          RulesGroupsEvent value, $Res Function(RulesGroupsEvent) then) =
      _$RulesGroupsEventCopyWithImpl<$Res, RulesGroupsEvent>;
  @useResult
  $Res call({UserRuleDataType userRuleDataType});
}

/// @nodoc
class _$RulesGroupsEventCopyWithImpl<$Res, $Val extends RulesGroupsEvent>
    implements $RulesGroupsEventCopyWith<$Res> {
  _$RulesGroupsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRuleDataType = null,
  }) {
    return _then(_value.copyWith(
      userRuleDataType: null == userRuleDataType
          ? _value.userRuleDataType
          : userRuleDataType // ignore: cast_nullable_to_non_nullable
              as UserRuleDataType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $RulesGroupsEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRuleDataType userRuleDataType});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$RulesGroupsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRuleDataType = null,
  }) {
    return _then(_$StartedImpl(
      null == userRuleDataType
          ? _value.userRuleDataType
          : userRuleDataType // ignore: cast_nullable_to_non_nullable
              as UserRuleDataType,
    ));
  }
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements Started {
  const _$StartedImpl(this.userRuleDataType);

  @override
  final UserRuleDataType userRuleDataType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsEvent.started(userRuleDataType: $userRuleDataType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RulesGroupsEvent.started'))
      ..add(DiagnosticsProperty('userRuleDataType', userRuleDataType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.userRuleDataType, userRuleDataType) ||
                other.userRuleDataType == userRuleDataType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRuleDataType);

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRuleDataType userRuleDataType) started,
    required TResult Function(UserRuleDataType userRuleDataType) get,
    required TResult Function(UserRuleDataType userRuleDataType) set,
    required TResult Function(UserRuleDataType userRuleDataType) update,
  }) {
    return started(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRuleDataType userRuleDataType)? started,
    TResult? Function(UserRuleDataType userRuleDataType)? get,
    TResult? Function(UserRuleDataType userRuleDataType)? set,
    TResult? Function(UserRuleDataType userRuleDataType)? update,
  }) {
    return started?.call(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRuleDataType userRuleDataType)? started,
    TResult Function(UserRuleDataType userRuleDataType)? get,
    TResult Function(UserRuleDataType userRuleDataType)? set,
    TResult Function(UserRuleDataType userRuleDataType)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(userRuleDataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Get value) get,
    required TResult Function(Set value) set,
    required TResult Function(Update value) update,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Get value)? get,
    TResult? Function(Set value)? set,
    TResult? Function(Update value)? update,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Get value)? get,
    TResult Function(Set value)? set,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements RulesGroupsEvent {
  const factory Started(final UserRuleDataType userRuleDataType) =
      _$StartedImpl;

  @override
  UserRuleDataType get userRuleDataType;

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res>
    implements $RulesGroupsEventCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRuleDataType userRuleDataType});
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$RulesGroupsEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRuleDataType = null,
  }) {
    return _then(_$GetImpl(
      null == userRuleDataType
          ? _value.userRuleDataType
          : userRuleDataType // ignore: cast_nullable_to_non_nullable
              as UserRuleDataType,
    ));
  }
}

/// @nodoc

class _$GetImpl with DiagnosticableTreeMixin implements Get {
  const _$GetImpl(this.userRuleDataType);

  @override
  final UserRuleDataType userRuleDataType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsEvent.get(userRuleDataType: $userRuleDataType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RulesGroupsEvent.get'))
      ..add(DiagnosticsProperty('userRuleDataType', userRuleDataType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImpl &&
            (identical(other.userRuleDataType, userRuleDataType) ||
                other.userRuleDataType == userRuleDataType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRuleDataType);

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      __$$GetImplCopyWithImpl<_$GetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRuleDataType userRuleDataType) started,
    required TResult Function(UserRuleDataType userRuleDataType) get,
    required TResult Function(UserRuleDataType userRuleDataType) set,
    required TResult Function(UserRuleDataType userRuleDataType) update,
  }) {
    return get(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRuleDataType userRuleDataType)? started,
    TResult? Function(UserRuleDataType userRuleDataType)? get,
    TResult? Function(UserRuleDataType userRuleDataType)? set,
    TResult? Function(UserRuleDataType userRuleDataType)? update,
  }) {
    return get?.call(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRuleDataType userRuleDataType)? started,
    TResult Function(UserRuleDataType userRuleDataType)? get,
    TResult Function(UserRuleDataType userRuleDataType)? set,
    TResult Function(UserRuleDataType userRuleDataType)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(userRuleDataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Get value) get,
    required TResult Function(Set value) set,
    required TResult Function(Update value) update,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Get value)? get,
    TResult? Function(Set value)? set,
    TResult? Function(Update value)? update,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Get value)? get,
    TResult Function(Set value)? set,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class Get implements RulesGroupsEvent {
  const factory Get(final UserRuleDataType userRuleDataType) = _$GetImpl;

  @override
  UserRuleDataType get userRuleDataType;

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetImplCopyWith<$Res>
    implements $RulesGroupsEventCopyWith<$Res> {
  factory _$$SetImplCopyWith(_$SetImpl value, $Res Function(_$SetImpl) then) =
      __$$SetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRuleDataType userRuleDataType});
}

/// @nodoc
class __$$SetImplCopyWithImpl<$Res>
    extends _$RulesGroupsEventCopyWithImpl<$Res, _$SetImpl>
    implements _$$SetImplCopyWith<$Res> {
  __$$SetImplCopyWithImpl(_$SetImpl _value, $Res Function(_$SetImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRuleDataType = null,
  }) {
    return _then(_$SetImpl(
      null == userRuleDataType
          ? _value.userRuleDataType
          : userRuleDataType // ignore: cast_nullable_to_non_nullable
              as UserRuleDataType,
    ));
  }
}

/// @nodoc

class _$SetImpl with DiagnosticableTreeMixin implements Set {
  const _$SetImpl(this.userRuleDataType);

  @override
  final UserRuleDataType userRuleDataType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsEvent.set(userRuleDataType: $userRuleDataType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RulesGroupsEvent.set'))
      ..add(DiagnosticsProperty('userRuleDataType', userRuleDataType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImpl &&
            (identical(other.userRuleDataType, userRuleDataType) ||
                other.userRuleDataType == userRuleDataType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRuleDataType);

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      __$$SetImplCopyWithImpl<_$SetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRuleDataType userRuleDataType) started,
    required TResult Function(UserRuleDataType userRuleDataType) get,
    required TResult Function(UserRuleDataType userRuleDataType) set,
    required TResult Function(UserRuleDataType userRuleDataType) update,
  }) {
    return set(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRuleDataType userRuleDataType)? started,
    TResult? Function(UserRuleDataType userRuleDataType)? get,
    TResult? Function(UserRuleDataType userRuleDataType)? set,
    TResult? Function(UserRuleDataType userRuleDataType)? update,
  }) {
    return set?.call(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRuleDataType userRuleDataType)? started,
    TResult Function(UserRuleDataType userRuleDataType)? get,
    TResult Function(UserRuleDataType userRuleDataType)? set,
    TResult Function(UserRuleDataType userRuleDataType)? update,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(userRuleDataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Get value) get,
    required TResult Function(Set value) set,
    required TResult Function(Update value) update,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Get value)? get,
    TResult? Function(Set value)? set,
    TResult? Function(Update value)? update,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Get value)? get,
    TResult Function(Set value)? set,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class Set implements RulesGroupsEvent {
  const factory Set(final UserRuleDataType userRuleDataType) = _$SetImpl;

  @override
  UserRuleDataType get userRuleDataType;

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res>
    implements $RulesGroupsEventCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRuleDataType userRuleDataType});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$RulesGroupsEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRuleDataType = null,
  }) {
    return _then(_$UpdateImpl(
      null == userRuleDataType
          ? _value.userRuleDataType
          : userRuleDataType // ignore: cast_nullable_to_non_nullable
              as UserRuleDataType,
    ));
  }
}

/// @nodoc

class _$UpdateImpl with DiagnosticableTreeMixin implements Update {
  const _$UpdateImpl(this.userRuleDataType);

  @override
  final UserRuleDataType userRuleDataType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsEvent.update(userRuleDataType: $userRuleDataType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RulesGroupsEvent.update'))
      ..add(DiagnosticsProperty('userRuleDataType', userRuleDataType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.userRuleDataType, userRuleDataType) ||
                other.userRuleDataType == userRuleDataType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRuleDataType);

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRuleDataType userRuleDataType) started,
    required TResult Function(UserRuleDataType userRuleDataType) get,
    required TResult Function(UserRuleDataType userRuleDataType) set,
    required TResult Function(UserRuleDataType userRuleDataType) update,
  }) {
    return update(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRuleDataType userRuleDataType)? started,
    TResult? Function(UserRuleDataType userRuleDataType)? get,
    TResult? Function(UserRuleDataType userRuleDataType)? set,
    TResult? Function(UserRuleDataType userRuleDataType)? update,
  }) {
    return update?.call(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRuleDataType userRuleDataType)? started,
    TResult Function(UserRuleDataType userRuleDataType)? get,
    TResult Function(UserRuleDataType userRuleDataType)? set,
    TResult Function(UserRuleDataType userRuleDataType)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(userRuleDataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Get value) get,
    required TResult Function(Set value) set,
    required TResult Function(Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Get value)? get,
    TResult? Function(Set value)? set,
    TResult? Function(Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Get value)? get,
    TResult Function(Set value)? set,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements RulesGroupsEvent {
  const factory Update(final UserRuleDataType userRuleDataType) = _$UpdateImpl;

  @override
  UserRuleDataType get userRuleDataType;

  /// Create a copy of RulesGroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RulesGroupsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RulesGroupsStateCopyWith<$Res> {
  factory $RulesGroupsStateCopyWith(
          RulesGroupsState value, $Res Function(RulesGroupsState) then) =
      _$RulesGroupsStateCopyWithImpl<$Res, RulesGroupsState>;
}

/// @nodoc
class _$RulesGroupsStateCopyWithImpl<$Res, $Val extends RulesGroupsState>
    implements $RulesGroupsStateCopyWith<$Res> {
  _$RulesGroupsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RulesGroupsState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RulesGroupsState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HaveDataImplCopyWith<$Res> {
  factory _$$HaveDataImplCopyWith(
          _$HaveDataImpl value, $Res Function(_$HaveDataImpl) then) =
      __$$HaveDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserRuleDataType?>? userRuleDataType});
}

/// @nodoc
class __$$HaveDataImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$HaveDataImpl>
    implements _$$HaveDataImplCopyWith<$Res> {
  __$$HaveDataImplCopyWithImpl(
      _$HaveDataImpl _value, $Res Function(_$HaveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRuleDataType = freezed,
  }) {
    return _then(_$HaveDataImpl(
      freezed == userRuleDataType
          ? _value._userRuleDataType
          : userRuleDataType // ignore: cast_nullable_to_non_nullable
              as List<UserRuleDataType?>?,
    ));
  }
}

/// @nodoc

class _$HaveDataImpl with DiagnosticableTreeMixin implements HaveData {
  const _$HaveDataImpl(final List<UserRuleDataType?>? userRuleDataType)
      : _userRuleDataType = userRuleDataType;

  final List<UserRuleDataType?>? _userRuleDataType;
  @override
  List<UserRuleDataType?>? get userRuleDataType {
    final value = _userRuleDataType;
    if (value == null) return null;
    if (_userRuleDataType is EqualUnmodifiableListView)
      return _userRuleDataType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.haveData(userRuleDataType: $userRuleDataType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RulesGroupsState.haveData'))
      ..add(DiagnosticsProperty('userRuleDataType', userRuleDataType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HaveDataImpl &&
            const DeepCollectionEquality()
                .equals(other._userRuleDataType, _userRuleDataType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userRuleDataType));

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HaveDataImplCopyWith<_$HaveDataImpl> get copyWith =>
      __$$HaveDataImplCopyWithImpl<_$HaveDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return haveData(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return haveData?.call(userRuleDataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (haveData != null) {
      return haveData(userRuleDataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return haveData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return haveData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (haveData != null) {
      return haveData(this);
    }
    return orElse();
  }
}

abstract class HaveData implements RulesGroupsState {
  const factory HaveData(final List<UserRuleDataType?>? userRuleDataType) =
      _$HaveDataImpl;

  List<UserRuleDataType?>? get userRuleDataType;

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HaveDataImplCopyWith<_$HaveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<$Res> {
  factory _$$NoDataImplCopyWith(
          _$NoDataImpl value, $Res Function(_$NoDataImpl) then) =
      __$$NoDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$NoDataImpl>
    implements _$$NoDataImplCopyWith<$Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl _value, $Res Function(_$NoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoDataImpl with DiagnosticableTreeMixin implements NoData {
  const _$NoDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.noData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RulesGroupsState.noData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData implements RulesGroupsState {
  const factory NoData() = _$NoDataImpl;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoInternetImpl with DiagnosticableTreeMixin implements NoInternet {
  const _$NoInternetImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.noInternet()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RulesGroupsState.noInternet'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements RulesGroupsState {
  const factory NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$GroupsNameAlreadyExistImplCopyWith<$Res> {
  factory _$$GroupsNameAlreadyExistImplCopyWith(
          _$GroupsNameAlreadyExistImpl value,
          $Res Function(_$GroupsNameAlreadyExistImpl) then) =
      __$$GroupsNameAlreadyExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupsNameAlreadyExistImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$GroupsNameAlreadyExistImpl>
    implements _$$GroupsNameAlreadyExistImplCopyWith<$Res> {
  __$$GroupsNameAlreadyExistImplCopyWithImpl(
      _$GroupsNameAlreadyExistImpl _value,
      $Res Function(_$GroupsNameAlreadyExistImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GroupsNameAlreadyExistImpl
    with DiagnosticableTreeMixin
    implements GroupsNameAlreadyExist {
  const _$GroupsNameAlreadyExistImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.groupsNameAlreadyExist()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RulesGroupsState.groupsNameAlreadyExist'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsNameAlreadyExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return groupsNameAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return groupsNameAlreadyExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (groupsNameAlreadyExist != null) {
      return groupsNameAlreadyExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return groupsNameAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return groupsNameAlreadyExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (groupsNameAlreadyExist != null) {
      return groupsNameAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class GroupsNameAlreadyExist implements RulesGroupsState {
  const factory GroupsNameAlreadyExist() = _$GroupsNameAlreadyExistImpl;
}

/// @nodoc
abstract class _$$FailedToSaveDataLocallyImplCopyWith<$Res> {
  factory _$$FailedToSaveDataLocallyImplCopyWith(
          _$FailedToSaveDataLocallyImpl value,
          $Res Function(_$FailedToSaveDataLocallyImpl) then) =
      __$$FailedToSaveDataLocallyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToSaveDataLocallyImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$FailedToSaveDataLocallyImpl>
    implements _$$FailedToSaveDataLocallyImplCopyWith<$Res> {
  __$$FailedToSaveDataLocallyImplCopyWithImpl(
      _$FailedToSaveDataLocallyImpl _value,
      $Res Function(_$FailedToSaveDataLocallyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedToSaveDataLocallyImpl
    with DiagnosticableTreeMixin
    implements FailedToSaveDataLocally {
  const _$FailedToSaveDataLocallyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.failedToSaveDataLocally()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'RulesGroupsState.failedToSaveDataLocally'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToSaveDataLocallyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return failedToSaveDataLocally();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return failedToSaveDataLocally?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (failedToSaveDataLocally != null) {
      return failedToSaveDataLocally();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return failedToSaveDataLocally(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return failedToSaveDataLocally?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (failedToSaveDataLocally != null) {
      return failedToSaveDataLocally(this);
    }
    return orElse();
  }
}

abstract class FailedToSaveDataLocally implements RulesGroupsState {
  const factory FailedToSaveDataLocally() = _$FailedToSaveDataLocallyImpl;
}

/// @nodoc
abstract class _$$FailedToGetDataLocallyImplCopyWith<$Res> {
  factory _$$FailedToGetDataLocallyImplCopyWith(
          _$FailedToGetDataLocallyImpl value,
          $Res Function(_$FailedToGetDataLocallyImpl) then) =
      __$$FailedToGetDataLocallyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToGetDataLocallyImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$FailedToGetDataLocallyImpl>
    implements _$$FailedToGetDataLocallyImplCopyWith<$Res> {
  __$$FailedToGetDataLocallyImplCopyWithImpl(
      _$FailedToGetDataLocallyImpl _value,
      $Res Function(_$FailedToGetDataLocallyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedToGetDataLocallyImpl
    with DiagnosticableTreeMixin
    implements FailedToGetDataLocally {
  const _$FailedToGetDataLocallyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.failedToGetDataLocally()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RulesGroupsState.failedToGetDataLocally'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetDataLocallyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return failedToGetDataLocally();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return failedToGetDataLocally?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (failedToGetDataLocally != null) {
      return failedToGetDataLocally();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return failedToGetDataLocally(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return failedToGetDataLocally?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (failedToGetDataLocally != null) {
      return failedToGetDataLocally(this);
    }
    return orElse();
  }
}

abstract class FailedToGetDataLocally implements RulesGroupsState {
  const factory FailedToGetDataLocally() = _$FailedToGetDataLocallyImpl;
}

/// @nodoc
abstract class _$$FailedToGetGroupsNameImplCopyWith<$Res> {
  factory _$$FailedToGetGroupsNameImplCopyWith(
          _$FailedToGetGroupsNameImpl value,
          $Res Function(_$FailedToGetGroupsNameImpl) then) =
      __$$FailedToGetGroupsNameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToGetGroupsNameImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$FailedToGetGroupsNameImpl>
    implements _$$FailedToGetGroupsNameImplCopyWith<$Res> {
  __$$FailedToGetGroupsNameImplCopyWithImpl(_$FailedToGetGroupsNameImpl _value,
      $Res Function(_$FailedToGetGroupsNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedToGetGroupsNameImpl
    with DiagnosticableTreeMixin
    implements FailedToGetGroupsName {
  const _$FailedToGetGroupsNameImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.failedToGetGroupsName()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RulesGroupsState.failedToGetGroupsName'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetGroupsNameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return failedToGetGroupsName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return failedToGetGroupsName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (failedToGetGroupsName != null) {
      return failedToGetGroupsName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return failedToGetGroupsName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return failedToGetGroupsName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (failedToGetGroupsName != null) {
      return failedToGetGroupsName(this);
    }
    return orElse();
  }
}

abstract class FailedToGetGroupsName implements RulesGroupsState {
  const factory FailedToGetGroupsName() = _$FailedToGetGroupsNameImpl;
}

/// @nodoc
abstract class _$$FailedToSaveGroupsNameImplCopyWith<$Res> {
  factory _$$FailedToSaveGroupsNameImplCopyWith(
          _$FailedToSaveGroupsNameImpl value,
          $Res Function(_$FailedToSaveGroupsNameImpl) then) =
      __$$FailedToSaveGroupsNameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToSaveGroupsNameImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$FailedToSaveGroupsNameImpl>
    implements _$$FailedToSaveGroupsNameImplCopyWith<$Res> {
  __$$FailedToSaveGroupsNameImplCopyWithImpl(
      _$FailedToSaveGroupsNameImpl _value,
      $Res Function(_$FailedToSaveGroupsNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedToSaveGroupsNameImpl
    with DiagnosticableTreeMixin
    implements FailedToSaveGroupsName {
  const _$FailedToSaveGroupsNameImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.failedToSaveGroupsName()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RulesGroupsState.failedToSaveGroupsName'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToSaveGroupsNameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return failedToSaveGroupsName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return failedToSaveGroupsName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (failedToSaveGroupsName != null) {
      return failedToSaveGroupsName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return failedToSaveGroupsName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return failedToSaveGroupsName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (failedToSaveGroupsName != null) {
      return failedToSaveGroupsName(this);
    }
    return orElse();
  }
}

abstract class FailedToSaveGroupsName implements RulesGroupsState {
  const factory FailedToSaveGroupsName() = _$FailedToSaveGroupsNameImpl;
}

/// @nodoc
abstract class _$$UploadedImplCopyWith<$Res> {
  factory _$$UploadedImplCopyWith(
          _$UploadedImpl value, $Res Function(_$UploadedImpl) then) =
      __$$UploadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadedImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$UploadedImpl>
    implements _$$UploadedImplCopyWith<$Res> {
  __$$UploadedImplCopyWithImpl(
      _$UploadedImpl _value, $Res Function(_$UploadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadedImpl with DiagnosticableTreeMixin implements Uploaded {
  const _$UploadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.uploaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RulesGroupsState.uploaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return uploaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return uploaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class Uploaded implements RulesGroupsState {
  const factory Uploaded() = _$UploadedImpl;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatedImpl with DiagnosticableTreeMixin implements Updated {
  const _$UpdatedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.updated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RulesGroupsState.updated'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class Updated implements RulesGroupsState {
  const factory Updated() = _$UpdatedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RulesGroupsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RulesGroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements Error {
  const _$ErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RulesGroupsState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RulesGroupsState.error'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserRuleDataType?>? userRuleDataType)
        haveData,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function() groupsNameAlreadyExist,
    required TResult Function() failedToSaveDataLocally,
    required TResult Function() failedToGetDataLocally,
    required TResult Function() failedToGetGroupsName,
    required TResult Function() failedToSaveGroupsName,
    required TResult Function() uploaded,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function()? groupsNameAlreadyExist,
    TResult? Function()? failedToSaveDataLocally,
    TResult? Function()? failedToGetDataLocally,
    TResult? Function()? failedToGetGroupsName,
    TResult? Function()? failedToSaveGroupsName,
    TResult? Function()? uploaded,
    TResult? Function()? updated,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserRuleDataType?>? userRuleDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function()? groupsNameAlreadyExist,
    TResult Function()? failedToSaveDataLocally,
    TResult Function()? failedToGetDataLocally,
    TResult Function()? failedToGetGroupsName,
    TResult Function()? failedToSaveGroupsName,
    TResult Function()? uploaded,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(GroupsNameAlreadyExist value)
        groupsNameAlreadyExist,
    required TResult Function(FailedToSaveDataLocally value)
        failedToSaveDataLocally,
    required TResult Function(FailedToGetDataLocally value)
        failedToGetDataLocally,
    required TResult Function(FailedToGetGroupsName value)
        failedToGetGroupsName,
    required TResult Function(FailedToSaveGroupsName value)
        failedToSaveGroupsName,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult? Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult? Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult? Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult? Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(GroupsNameAlreadyExist value)? groupsNameAlreadyExist,
    TResult Function(FailedToSaveDataLocally value)? failedToSaveDataLocally,
    TResult Function(FailedToGetDataLocally value)? failedToGetDataLocally,
    TResult Function(FailedToGetGroupsName value)? failedToGetGroupsName,
    TResult Function(FailedToSaveGroupsName value)? failedToSaveGroupsName,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements RulesGroupsState {
  const factory Error() = _$ErrorImpl;
}
