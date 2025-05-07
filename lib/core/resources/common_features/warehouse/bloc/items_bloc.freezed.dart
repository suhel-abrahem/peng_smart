// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ItemsDataType itemsDataType) upload,
    required TResult Function(ItemsDataType itemsDataType) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ItemsDataType itemsDataType)? upload,
    TResult? Function(ItemsDataType itemsDataType)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ItemsDataType itemsDataType)? upload,
    TResult Function(ItemsDataType itemsDataType)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Upload value) upload,
    required TResult Function(Get value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Upload value)? upload,
    TResult? Function(Get value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Upload value)? upload,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsEventCopyWith<$Res> {
  factory $ItemsEventCopyWith(
          ItemsEvent value, $Res Function(ItemsEvent) then) =
      _$ItemsEventCopyWithImpl<$Res, ItemsEvent>;
}

/// @nodoc
class _$ItemsEventCopyWithImpl<$Res, $Val extends ItemsEvent>
    implements $ItemsEventCopyWith<$Res> {
  _$ItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsEvent
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
    extends _$ItemsEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ItemsEvent.initial'));
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
    required TResult Function(ItemsDataType itemsDataType) upload,
    required TResult Function(ItemsDataType itemsDataType) get,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ItemsDataType itemsDataType)? upload,
    TResult? Function(ItemsDataType itemsDataType)? get,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ItemsDataType itemsDataType)? upload,
    TResult Function(ItemsDataType itemsDataType)? get,
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
    required TResult Function(Upload value) upload,
    required TResult Function(Get value) get,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Upload value)? upload,
    TResult? Function(Get value)? get,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Upload value)? upload,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ItemsEvent {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UploadImplCopyWith<$Res> {
  factory _$$UploadImplCopyWith(
          _$UploadImpl value, $Res Function(_$UploadImpl) then) =
      __$$UploadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemsDataType itemsDataType});

  $ItemsDataTypeCopyWith<$Res> get itemsDataType;
}

/// @nodoc
class __$$UploadImplCopyWithImpl<$Res>
    extends _$ItemsEventCopyWithImpl<$Res, _$UploadImpl>
    implements _$$UploadImplCopyWith<$Res> {
  __$$UploadImplCopyWithImpl(
      _$UploadImpl _value, $Res Function(_$UploadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsDataType = null,
  }) {
    return _then(_$UploadImpl(
      null == itemsDataType
          ? _value.itemsDataType
          : itemsDataType // ignore: cast_nullable_to_non_nullable
              as ItemsDataType,
    ));
  }

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemsDataTypeCopyWith<$Res> get itemsDataType {
    return $ItemsDataTypeCopyWith<$Res>(_value.itemsDataType, (value) {
      return _then(_value.copyWith(itemsDataType: value));
    });
  }
}

/// @nodoc

class _$UploadImpl with DiagnosticableTreeMixin implements Upload {
  const _$UploadImpl(this.itemsDataType);

  @override
  final ItemsDataType itemsDataType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsEvent.upload(itemsDataType: $itemsDataType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemsEvent.upload'))
      ..add(DiagnosticsProperty('itemsDataType', itemsDataType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImpl &&
            (identical(other.itemsDataType, itemsDataType) ||
                other.itemsDataType == itemsDataType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsDataType);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImplCopyWith<_$UploadImpl> get copyWith =>
      __$$UploadImplCopyWithImpl<_$UploadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ItemsDataType itemsDataType) upload,
    required TResult Function(ItemsDataType itemsDataType) get,
  }) {
    return upload(itemsDataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ItemsDataType itemsDataType)? upload,
    TResult? Function(ItemsDataType itemsDataType)? get,
  }) {
    return upload?.call(itemsDataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ItemsDataType itemsDataType)? upload,
    TResult Function(ItemsDataType itemsDataType)? get,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(itemsDataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Upload value) upload,
    required TResult Function(Get value) get,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Upload value)? upload,
    TResult? Function(Get value)? get,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Upload value)? upload,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class Upload implements ItemsEvent {
  const factory Upload(final ItemsDataType itemsDataType) = _$UploadImpl;

  ItemsDataType get itemsDataType;

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadImplCopyWith<_$UploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemsDataType itemsDataType});

  $ItemsDataTypeCopyWith<$Res> get itemsDataType;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$ItemsEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsDataType = null,
  }) {
    return _then(_$GetImpl(
      null == itemsDataType
          ? _value.itemsDataType
          : itemsDataType // ignore: cast_nullable_to_non_nullable
              as ItemsDataType,
    ));
  }

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemsDataTypeCopyWith<$Res> get itemsDataType {
    return $ItemsDataTypeCopyWith<$Res>(_value.itemsDataType, (value) {
      return _then(_value.copyWith(itemsDataType: value));
    });
  }
}

/// @nodoc

class _$GetImpl with DiagnosticableTreeMixin implements Get {
  const _$GetImpl(this.itemsDataType);

  @override
  final ItemsDataType itemsDataType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsEvent.get(itemsDataType: $itemsDataType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemsEvent.get'))
      ..add(DiagnosticsProperty('itemsDataType', itemsDataType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImpl &&
            (identical(other.itemsDataType, itemsDataType) ||
                other.itemsDataType == itemsDataType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsDataType);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      __$$GetImplCopyWithImpl<_$GetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ItemsDataType itemsDataType) upload,
    required TResult Function(ItemsDataType itemsDataType) get,
  }) {
    return get(itemsDataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ItemsDataType itemsDataType)? upload,
    TResult? Function(ItemsDataType itemsDataType)? get,
  }) {
    return get?.call(itemsDataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ItemsDataType itemsDataType)? upload,
    TResult Function(ItemsDataType itemsDataType)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(itemsDataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Upload value) upload,
    required TResult Function(Get value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Upload value)? upload,
    TResult? Function(Get value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Upload value)? upload,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class Get implements ItemsEvent {
  const factory Get(final ItemsDataType itemsDataType) = _$GetImpl;

  ItemsDataType get itemsDataType;

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changing,
    required TResult Function(List<ItemsDataType> itemsDataType) haveData,
    required TResult Function() noData,
    required TResult Function() failedToSaveLocally,
    required TResult Function() noInternetConnetion,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changing,
    TResult? Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? failedToSaveLocally,
    TResult? Function()? noInternetConnetion,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changing,
    TResult Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? failedToSaveLocally,
    TResult Function()? noInternetConnetion,
    TResult Function()? uploaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Changing value) changing,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(FailedToSaveLocally value) failedToSaveLocally,
    required TResult Function(NoInternetConnetion value) noInternetConnetion,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Changing value)? changing,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult? Function(NoInternetConnetion value)? noInternetConnetion,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Changing value)? changing,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult Function(NoInternetConnetion value)? noInternetConnetion,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsStateCopyWith<$Res> {
  factory $ItemsStateCopyWith(
          ItemsState value, $Res Function(ItemsState) then) =
      _$ItemsStateCopyWithImpl<$Res, ItemsState>;
}

/// @nodoc
class _$ItemsStateCopyWithImpl<$Res, $Val extends ItemsState>
    implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsState.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ItemsState.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changing,
    required TResult Function(List<ItemsDataType> itemsDataType) haveData,
    required TResult Function() noData,
    required TResult Function() failedToSaveLocally,
    required TResult Function() noInternetConnetion,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changing,
    TResult? Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? failedToSaveLocally,
    TResult? Function()? noInternetConnetion,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changing,
    TResult Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? failedToSaveLocally,
    TResult Function()? noInternetConnetion,
    TResult Function()? uploaded,
    TResult Function()? error,
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
    required TResult Function(Started value) started,
    required TResult Function(Changing value) changing,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(FailedToSaveLocally value) failedToSaveLocally,
    required TResult Function(NoInternetConnetion value) noInternetConnetion,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Changing value)? changing,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult? Function(NoInternetConnetion value)? noInternetConnetion,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Changing value)? changing,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult Function(NoInternetConnetion value)? noInternetConnetion,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements ItemsState {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangingImplCopyWith<$Res> {
  factory _$$ChangingImplCopyWith(
          _$ChangingImpl value, $Res Function(_$ChangingImpl) then) =
      __$$ChangingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangingImplCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$ChangingImpl>
    implements _$$ChangingImplCopyWith<$Res> {
  __$$ChangingImplCopyWithImpl(
      _$ChangingImpl _value, $Res Function(_$ChangingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangingImpl with DiagnosticableTreeMixin implements Changing {
  const _$ChangingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsState.changing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ItemsState.changing'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changing,
    required TResult Function(List<ItemsDataType> itemsDataType) haveData,
    required TResult Function() noData,
    required TResult Function() failedToSaveLocally,
    required TResult Function() noInternetConnetion,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return changing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changing,
    TResult? Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? failedToSaveLocally,
    TResult? Function()? noInternetConnetion,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return changing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changing,
    TResult Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? failedToSaveLocally,
    TResult Function()? noInternetConnetion,
    TResult Function()? uploaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (changing != null) {
      return changing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Changing value) changing,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(FailedToSaveLocally value) failedToSaveLocally,
    required TResult Function(NoInternetConnetion value) noInternetConnetion,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return changing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Changing value)? changing,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult? Function(NoInternetConnetion value)? noInternetConnetion,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return changing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Changing value)? changing,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult Function(NoInternetConnetion value)? noInternetConnetion,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (changing != null) {
      return changing(this);
    }
    return orElse();
  }
}

abstract class Changing implements ItemsState {
  const factory Changing() = _$ChangingImpl;
}

/// @nodoc
abstract class _$$HaveDataImplCopyWith<$Res> {
  factory _$$HaveDataImplCopyWith(
          _$HaveDataImpl value, $Res Function(_$HaveDataImpl) then) =
      __$$HaveDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ItemsDataType> itemsDataType});
}

/// @nodoc
class __$$HaveDataImplCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$HaveDataImpl>
    implements _$$HaveDataImplCopyWith<$Res> {
  __$$HaveDataImplCopyWithImpl(
      _$HaveDataImpl _value, $Res Function(_$HaveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsDataType = null,
  }) {
    return _then(_$HaveDataImpl(
      null == itemsDataType
          ? _value._itemsDataType
          : itemsDataType // ignore: cast_nullable_to_non_nullable
              as List<ItemsDataType>,
    ));
  }
}

/// @nodoc

class _$HaveDataImpl with DiagnosticableTreeMixin implements HaveData {
  const _$HaveDataImpl(final List<ItemsDataType> itemsDataType)
      : _itemsDataType = itemsDataType;

  final List<ItemsDataType> _itemsDataType;
  @override
  List<ItemsDataType> get itemsDataType {
    if (_itemsDataType is EqualUnmodifiableListView) return _itemsDataType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemsDataType);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsState.haveData(itemsDataType: $itemsDataType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemsState.haveData'))
      ..add(DiagnosticsProperty('itemsDataType', itemsDataType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HaveDataImpl &&
            const DeepCollectionEquality()
                .equals(other._itemsDataType, _itemsDataType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_itemsDataType));

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HaveDataImplCopyWith<_$HaveDataImpl> get copyWith =>
      __$$HaveDataImplCopyWithImpl<_$HaveDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changing,
    required TResult Function(List<ItemsDataType> itemsDataType) haveData,
    required TResult Function() noData,
    required TResult Function() failedToSaveLocally,
    required TResult Function() noInternetConnetion,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return haveData(itemsDataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changing,
    TResult? Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? failedToSaveLocally,
    TResult? Function()? noInternetConnetion,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return haveData?.call(itemsDataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changing,
    TResult Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? failedToSaveLocally,
    TResult Function()? noInternetConnetion,
    TResult Function()? uploaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (haveData != null) {
      return haveData(itemsDataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Changing value) changing,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(FailedToSaveLocally value) failedToSaveLocally,
    required TResult Function(NoInternetConnetion value) noInternetConnetion,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return haveData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Changing value)? changing,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult? Function(NoInternetConnetion value)? noInternetConnetion,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return haveData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Changing value)? changing,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult Function(NoInternetConnetion value)? noInternetConnetion,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (haveData != null) {
      return haveData(this);
    }
    return orElse();
  }
}

abstract class HaveData implements ItemsState {
  const factory HaveData(final List<ItemsDataType> itemsDataType) =
      _$HaveDataImpl;

  List<ItemsDataType> get itemsDataType;

  /// Create a copy of ItemsState
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
    extends _$ItemsStateCopyWithImpl<$Res, _$NoDataImpl>
    implements _$$NoDataImplCopyWith<$Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl _value, $Res Function(_$NoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoDataImpl with DiagnosticableTreeMixin implements NoData {
  const _$NoDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsState.noData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ItemsState.noData'));
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
    required TResult Function() started,
    required TResult Function() changing,
    required TResult Function(List<ItemsDataType> itemsDataType) haveData,
    required TResult Function() noData,
    required TResult Function() failedToSaveLocally,
    required TResult Function() noInternetConnetion,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changing,
    TResult? Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? failedToSaveLocally,
    TResult? Function()? noInternetConnetion,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changing,
    TResult Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? failedToSaveLocally,
    TResult Function()? noInternetConnetion,
    TResult Function()? uploaded,
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
    required TResult Function(Started value) started,
    required TResult Function(Changing value) changing,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(FailedToSaveLocally value) failedToSaveLocally,
    required TResult Function(NoInternetConnetion value) noInternetConnetion,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Changing value)? changing,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult? Function(NoInternetConnetion value)? noInternetConnetion,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Changing value)? changing,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult Function(NoInternetConnetion value)? noInternetConnetion,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData implements ItemsState {
  const factory NoData() = _$NoDataImpl;
}

/// @nodoc
abstract class _$$FailedToSaveLocallyImplCopyWith<$Res> {
  factory _$$FailedToSaveLocallyImplCopyWith(_$FailedToSaveLocallyImpl value,
          $Res Function(_$FailedToSaveLocallyImpl) then) =
      __$$FailedToSaveLocallyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToSaveLocallyImplCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$FailedToSaveLocallyImpl>
    implements _$$FailedToSaveLocallyImplCopyWith<$Res> {
  __$$FailedToSaveLocallyImplCopyWithImpl(_$FailedToSaveLocallyImpl _value,
      $Res Function(_$FailedToSaveLocallyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedToSaveLocallyImpl
    with DiagnosticableTreeMixin
    implements FailedToSaveLocally {
  const _$FailedToSaveLocallyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsState.failedToSaveLocally()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ItemsState.failedToSaveLocally'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToSaveLocallyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changing,
    required TResult Function(List<ItemsDataType> itemsDataType) haveData,
    required TResult Function() noData,
    required TResult Function() failedToSaveLocally,
    required TResult Function() noInternetConnetion,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return failedToSaveLocally();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changing,
    TResult? Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? failedToSaveLocally,
    TResult? Function()? noInternetConnetion,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return failedToSaveLocally?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changing,
    TResult Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? failedToSaveLocally,
    TResult Function()? noInternetConnetion,
    TResult Function()? uploaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (failedToSaveLocally != null) {
      return failedToSaveLocally();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Changing value) changing,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(FailedToSaveLocally value) failedToSaveLocally,
    required TResult Function(NoInternetConnetion value) noInternetConnetion,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return failedToSaveLocally(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Changing value)? changing,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult? Function(NoInternetConnetion value)? noInternetConnetion,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return failedToSaveLocally?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Changing value)? changing,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult Function(NoInternetConnetion value)? noInternetConnetion,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (failedToSaveLocally != null) {
      return failedToSaveLocally(this);
    }
    return orElse();
  }
}

abstract class FailedToSaveLocally implements ItemsState {
  const factory FailedToSaveLocally() = _$FailedToSaveLocallyImpl;
}

/// @nodoc
abstract class _$$NoInternetConnetionImplCopyWith<$Res> {
  factory _$$NoInternetConnetionImplCopyWith(_$NoInternetConnetionImpl value,
          $Res Function(_$NoInternetConnetionImpl) then) =
      __$$NoInternetConnetionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnetionImplCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$NoInternetConnetionImpl>
    implements _$$NoInternetConnetionImplCopyWith<$Res> {
  __$$NoInternetConnetionImplCopyWithImpl(_$NoInternetConnetionImpl _value,
      $Res Function(_$NoInternetConnetionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoInternetConnetionImpl
    with DiagnosticableTreeMixin
    implements NoInternetConnetion {
  const _$NoInternetConnetionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsState.noInternetConnetion()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ItemsState.noInternetConnetion'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnetionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changing,
    required TResult Function(List<ItemsDataType> itemsDataType) haveData,
    required TResult Function() noData,
    required TResult Function() failedToSaveLocally,
    required TResult Function() noInternetConnetion,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return noInternetConnetion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changing,
    TResult? Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? failedToSaveLocally,
    TResult? Function()? noInternetConnetion,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return noInternetConnetion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changing,
    TResult Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? failedToSaveLocally,
    TResult Function()? noInternetConnetion,
    TResult Function()? uploaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (noInternetConnetion != null) {
      return noInternetConnetion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Changing value) changing,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(FailedToSaveLocally value) failedToSaveLocally,
    required TResult Function(NoInternetConnetion value) noInternetConnetion,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return noInternetConnetion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Changing value)? changing,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult? Function(NoInternetConnetion value)? noInternetConnetion,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return noInternetConnetion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Changing value)? changing,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult Function(NoInternetConnetion value)? noInternetConnetion,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (noInternetConnetion != null) {
      return noInternetConnetion(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnetion implements ItemsState {
  const factory NoInternetConnetion() = _$NoInternetConnetionImpl;
}

/// @nodoc
abstract class _$$UploadedImplCopyWith<$Res> {
  factory _$$UploadedImplCopyWith(
          _$UploadedImpl value, $Res Function(_$UploadedImpl) then) =
      __$$UploadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadedImplCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$UploadedImpl>
    implements _$$UploadedImplCopyWith<$Res> {
  __$$UploadedImplCopyWithImpl(
      _$UploadedImpl _value, $Res Function(_$UploadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadedImpl with DiagnosticableTreeMixin implements Uploaded {
  const _$UploadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsState.uploaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ItemsState.uploaded'));
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
    required TResult Function() started,
    required TResult Function() changing,
    required TResult Function(List<ItemsDataType> itemsDataType) haveData,
    required TResult Function() noData,
    required TResult Function() failedToSaveLocally,
    required TResult Function() noInternetConnetion,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return uploaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changing,
    TResult? Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? failedToSaveLocally,
    TResult? Function()? noInternetConnetion,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return uploaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changing,
    TResult Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? failedToSaveLocally,
    TResult Function()? noInternetConnetion,
    TResult Function()? uploaded,
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
    required TResult Function(Started value) started,
    required TResult Function(Changing value) changing,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(FailedToSaveLocally value) failedToSaveLocally,
    required TResult Function(NoInternetConnetion value) noInternetConnetion,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Changing value)? changing,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult? Function(NoInternetConnetion value)? noInternetConnetion,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Changing value)? changing,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult Function(NoInternetConnetion value)? noInternetConnetion,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class Uploaded implements ItemsState {
  const factory Uploaded() = _$UploadedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements Error {
  const _$ErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ItemsState.error'));
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
    required TResult Function() started,
    required TResult Function() changing,
    required TResult Function(List<ItemsDataType> itemsDataType) haveData,
    required TResult Function() noData,
    required TResult Function() failedToSaveLocally,
    required TResult Function() noInternetConnetion,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changing,
    TResult? Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult? Function()? noData,
    TResult? Function()? failedToSaveLocally,
    TResult? Function()? noInternetConnetion,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changing,
    TResult Function(List<ItemsDataType> itemsDataType)? haveData,
    TResult Function()? noData,
    TResult Function()? failedToSaveLocally,
    TResult Function()? noInternetConnetion,
    TResult Function()? uploaded,
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
    required TResult Function(Started value) started,
    required TResult Function(Changing value) changing,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoData value) noData,
    required TResult Function(FailedToSaveLocally value) failedToSaveLocally,
    required TResult Function(NoInternetConnetion value) noInternetConnetion,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Changing value)? changing,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoData value)? noData,
    TResult? Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult? Function(NoInternetConnetion value)? noInternetConnetion,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Changing value)? changing,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoData value)? noData,
    TResult Function(FailedToSaveLocally value)? failedToSaveLocally,
    TResult Function(NoInternetConnetion value)? noInternetConnetion,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ItemsState {
  const factory Error() = _$ErrorImpl;
}
