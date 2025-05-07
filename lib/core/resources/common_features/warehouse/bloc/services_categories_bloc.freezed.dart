// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServicesCategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryDataType data) upload,
    required TResult Function(int bypass) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryDataType data)? upload,
    TResult? Function(int bypass)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryDataType data)? upload,
    TResult Function(int bypass)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Upload value) upload,
    required TResult Function(Get value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Upload value)? upload,
    TResult? Function(Get value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Upload value)? upload,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesCategoriesEventCopyWith<$Res> {
  factory $ServicesCategoriesEventCopyWith(ServicesCategoriesEvent value,
          $Res Function(ServicesCategoriesEvent) then) =
      _$ServicesCategoriesEventCopyWithImpl<$Res, ServicesCategoriesEvent>;
}

/// @nodoc
class _$ServicesCategoriesEventCopyWithImpl<$Res,
        $Val extends ServicesCategoriesEvent>
    implements $ServicesCategoriesEventCopyWith<$Res> {
  _$ServicesCategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicesCategoriesEvent
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
    extends _$ServicesCategoriesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ServicesCategoriesEvent.started'));
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
    required TResult Function(CategoryDataType data) upload,
    required TResult Function(int bypass) get,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryDataType data)? upload,
    TResult? Function(int bypass)? get,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryDataType data)? upload,
    TResult Function(int bypass)? get,
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
    required TResult Function(Upload value) upload,
    required TResult Function(Get value) get,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Upload value)? upload,
    TResult? Function(Get value)? get,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Upload value)? upload,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements ServicesCategoriesEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$UploadImplCopyWith<$Res> {
  factory _$$UploadImplCopyWith(
          _$UploadImpl value, $Res Function(_$UploadImpl) then) =
      __$$UploadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryDataType data});
}

/// @nodoc
class __$$UploadImplCopyWithImpl<$Res>
    extends _$ServicesCategoriesEventCopyWithImpl<$Res, _$UploadImpl>
    implements _$$UploadImplCopyWith<$Res> {
  __$$UploadImplCopyWithImpl(
      _$UploadImpl _value, $Res Function(_$UploadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UploadImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryDataType,
    ));
  }
}

/// @nodoc

class _$UploadImpl with DiagnosticableTreeMixin implements Upload {
  const _$UploadImpl({required this.data});

  @override
  final CategoryDataType data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesEvent.upload(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServicesCategoriesEvent.upload'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ServicesCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImplCopyWith<_$UploadImpl> get copyWith =>
      __$$UploadImplCopyWithImpl<_$UploadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryDataType data) upload,
    required TResult Function(int bypass) get,
  }) {
    return upload(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryDataType data)? upload,
    TResult? Function(int bypass)? get,
  }) {
    return upload?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryDataType data)? upload,
    TResult Function(int bypass)? get,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Upload value) upload,
    required TResult Function(Get value) get,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Upload value)? upload,
    TResult? Function(Get value)? get,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
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

abstract class Upload implements ServicesCategoriesEvent {
  const factory Upload({required final CategoryDataType data}) = _$UploadImpl;

  CategoryDataType get data;

  /// Create a copy of ServicesCategoriesEvent
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
  $Res call({int bypass});
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$ServicesCategoriesEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bypass = null,
  }) {
    return _then(_$GetImpl(
      bypass: null == bypass
          ? _value.bypass
          : bypass // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetImpl with DiagnosticableTreeMixin implements Get {
  const _$GetImpl({required this.bypass});

  @override
  final int bypass;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesEvent.get(bypass: $bypass)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServicesCategoriesEvent.get'))
      ..add(DiagnosticsProperty('bypass', bypass));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImpl &&
            (identical(other.bypass, bypass) || other.bypass == bypass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bypass);

  /// Create a copy of ServicesCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      __$$GetImplCopyWithImpl<_$GetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryDataType data) upload,
    required TResult Function(int bypass) get,
  }) {
    return get(bypass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryDataType data)? upload,
    TResult? Function(int bypass)? get,
  }) {
    return get?.call(bypass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryDataType data)? upload,
    TResult Function(int bypass)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(bypass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Upload value) upload,
    required TResult Function(Get value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Upload value)? upload,
    TResult? Function(Get value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
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

abstract class Get implements ServicesCategoriesEvent {
  const factory Get({required final int bypass}) = _$GetImpl;

  int get bypass;

  /// Create a copy of ServicesCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServicesCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() changing,
    required TResult Function() noData,
    required TResult Function(List<CategoryDataType> data) haveData,
    required TResult Function() noInternet,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changing,
    TResult? Function()? noData,
    TResult? Function(List<CategoryDataType> data)? haveData,
    TResult? Function()? noInternet,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changing,
    TResult Function()? noData,
    TResult Function(List<CategoryDataType> data)? haveData,
    TResult Function()? noInternet,
    TResult Function()? uploaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Changing value) changing,
    required TResult Function(NoData value) noData,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Changing value)? changing,
    TResult? Function(NoData value)? noData,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Changing value)? changing,
    TResult Function(NoData value)? noData,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesCategoriesStateCopyWith<$Res> {
  factory $ServicesCategoriesStateCopyWith(ServicesCategoriesState value,
          $Res Function(ServicesCategoriesState) then) =
      _$ServicesCategoriesStateCopyWithImpl<$Res, ServicesCategoriesState>;
}

/// @nodoc
class _$ServicesCategoriesStateCopyWithImpl<$Res,
        $Val extends ServicesCategoriesState>
    implements $ServicesCategoriesStateCopyWith<$Res> {
  _$ServicesCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicesCategoriesState
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
    extends _$ServicesCategoriesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ServicesCategoriesState.initial'));
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
    required TResult Function() changing,
    required TResult Function() noData,
    required TResult Function(List<CategoryDataType> data) haveData,
    required TResult Function() noInternet,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changing,
    TResult? Function()? noData,
    TResult? Function(List<CategoryDataType> data)? haveData,
    TResult? Function()? noInternet,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changing,
    TResult Function()? noData,
    TResult Function(List<CategoryDataType> data)? haveData,
    TResult Function()? noInternet,
    TResult Function()? uploaded,
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
    required TResult Function(Changing value) changing,
    required TResult Function(NoData value) noData,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Changing value)? changing,
    TResult? Function(NoData value)? noData,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Changing value)? changing,
    TResult Function(NoData value)? noData,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ServicesCategoriesState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangingImplCopyWith<$Res> {
  factory _$$ChangingImplCopyWith(
          _$ChangingImpl value, $Res Function(_$ChangingImpl) then) =
      __$$ChangingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangingImplCopyWithImpl<$Res>
    extends _$ServicesCategoriesStateCopyWithImpl<$Res, _$ChangingImpl>
    implements _$$ChangingImplCopyWith<$Res> {
  __$$ChangingImplCopyWithImpl(
      _$ChangingImpl _value, $Res Function(_$ChangingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangingImpl with DiagnosticableTreeMixin implements Changing {
  const _$ChangingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesState.changing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ServicesCategoriesState.changing'));
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
    required TResult Function() initial,
    required TResult Function() changing,
    required TResult Function() noData,
    required TResult Function(List<CategoryDataType> data) haveData,
    required TResult Function() noInternet,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return changing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changing,
    TResult? Function()? noData,
    TResult? Function(List<CategoryDataType> data)? haveData,
    TResult? Function()? noInternet,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return changing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changing,
    TResult Function()? noData,
    TResult Function(List<CategoryDataType> data)? haveData,
    TResult Function()? noInternet,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Changing value) changing,
    required TResult Function(NoData value) noData,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return changing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Changing value)? changing,
    TResult? Function(NoData value)? noData,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return changing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Changing value)? changing,
    TResult Function(NoData value)? noData,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoInternet value)? noInternet,
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

abstract class Changing implements ServicesCategoriesState {
  const factory Changing() = _$ChangingImpl;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<$Res> {
  factory _$$NoDataImplCopyWith(
          _$NoDataImpl value, $Res Function(_$NoDataImpl) then) =
      __$$NoDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<$Res>
    extends _$ServicesCategoriesStateCopyWithImpl<$Res, _$NoDataImpl>
    implements _$$NoDataImplCopyWith<$Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl _value, $Res Function(_$NoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoDataImpl with DiagnosticableTreeMixin implements NoData {
  const _$NoDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesState.noData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ServicesCategoriesState.noData'));
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
    required TResult Function() changing,
    required TResult Function() noData,
    required TResult Function(List<CategoryDataType> data) haveData,
    required TResult Function() noInternet,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changing,
    TResult? Function()? noData,
    TResult? Function(List<CategoryDataType> data)? haveData,
    TResult? Function()? noInternet,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changing,
    TResult Function()? noData,
    TResult Function(List<CategoryDataType> data)? haveData,
    TResult Function()? noInternet,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Changing value) changing,
    required TResult Function(NoData value) noData,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Changing value)? changing,
    TResult? Function(NoData value)? noData,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Changing value)? changing,
    TResult Function(NoData value)? noData,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoInternet value)? noInternet,
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

abstract class NoData implements ServicesCategoriesState {
  const factory NoData() = _$NoDataImpl;
}

/// @nodoc
abstract class _$$HaveDataImplCopyWith<$Res> {
  factory _$$HaveDataImplCopyWith(
          _$HaveDataImpl value, $Res Function(_$HaveDataImpl) then) =
      __$$HaveDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryDataType> data});
}

/// @nodoc
class __$$HaveDataImplCopyWithImpl<$Res>
    extends _$ServicesCategoriesStateCopyWithImpl<$Res, _$HaveDataImpl>
    implements _$$HaveDataImplCopyWith<$Res> {
  __$$HaveDataImplCopyWithImpl(
      _$HaveDataImpl _value, $Res Function(_$HaveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HaveDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDataType>,
    ));
  }
}

/// @nodoc

class _$HaveDataImpl with DiagnosticableTreeMixin implements HaveData {
  const _$HaveDataImpl({required final List<CategoryDataType> data})
      : _data = data;

  final List<CategoryDataType> _data;
  @override
  List<CategoryDataType> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesState.haveData(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServicesCategoriesState.haveData'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HaveDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ServicesCategoriesState
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
    required TResult Function() changing,
    required TResult Function() noData,
    required TResult Function(List<CategoryDataType> data) haveData,
    required TResult Function() noInternet,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return haveData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changing,
    TResult? Function()? noData,
    TResult? Function(List<CategoryDataType> data)? haveData,
    TResult? Function()? noInternet,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return haveData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changing,
    TResult Function()? noData,
    TResult Function(List<CategoryDataType> data)? haveData,
    TResult Function()? noInternet,
    TResult Function()? uploaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (haveData != null) {
      return haveData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Changing value) changing,
    required TResult Function(NoData value) noData,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return haveData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Changing value)? changing,
    TResult? Function(NoData value)? noData,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return haveData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Changing value)? changing,
    TResult Function(NoData value)? noData,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoInternet value)? noInternet,
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

abstract class HaveData implements ServicesCategoriesState {
  const factory HaveData({required final List<CategoryDataType> data}) =
      _$HaveDataImpl;

  List<CategoryDataType> get data;

  /// Create a copy of ServicesCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HaveDataImplCopyWith<_$HaveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$ServicesCategoriesStateCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoInternetImpl with DiagnosticableTreeMixin implements NoInternet {
  const _$NoInternetImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesState.noInternet()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ServicesCategoriesState.noInternet'));
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
    required TResult Function() changing,
    required TResult Function() noData,
    required TResult Function(List<CategoryDataType> data) haveData,
    required TResult Function() noInternet,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changing,
    TResult? Function()? noData,
    TResult? Function(List<CategoryDataType> data)? haveData,
    TResult? Function()? noInternet,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changing,
    TResult Function()? noData,
    TResult Function(List<CategoryDataType> data)? haveData,
    TResult Function()? noInternet,
    TResult Function()? uploaded,
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
    required TResult Function(Changing value) changing,
    required TResult Function(NoData value) noData,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Changing value)? changing,
    TResult? Function(NoData value)? noData,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Changing value)? changing,
    TResult Function(NoData value)? noData,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(Uploaded value)? uploaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements ServicesCategoriesState {
  const factory NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$UploadedImplCopyWith<$Res> {
  factory _$$UploadedImplCopyWith(
          _$UploadedImpl value, $Res Function(_$UploadedImpl) then) =
      __$$UploadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadedImplCopyWithImpl<$Res>
    extends _$ServicesCategoriesStateCopyWithImpl<$Res, _$UploadedImpl>
    implements _$$UploadedImplCopyWith<$Res> {
  __$$UploadedImplCopyWithImpl(
      _$UploadedImpl _value, $Res Function(_$UploadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadedImpl with DiagnosticableTreeMixin implements Uploaded {
  const _$UploadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesState.uploaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ServicesCategoriesState.uploaded'));
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
    required TResult Function() changing,
    required TResult Function() noData,
    required TResult Function(List<CategoryDataType> data) haveData,
    required TResult Function() noInternet,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return uploaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changing,
    TResult? Function()? noData,
    TResult? Function(List<CategoryDataType> data)? haveData,
    TResult? Function()? noInternet,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return uploaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changing,
    TResult Function()? noData,
    TResult Function(List<CategoryDataType> data)? haveData,
    TResult Function()? noInternet,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Changing value) changing,
    required TResult Function(NoData value) noData,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Changing value)? changing,
    TResult? Function(NoData value)? noData,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Changing value)? changing,
    TResult Function(NoData value)? noData,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoInternet value)? noInternet,
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

abstract class Uploaded implements ServicesCategoriesState {
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
    extends _$ServicesCategoriesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements Error {
  const _$ErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesCategoriesState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ServicesCategoriesState.error'));
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
    required TResult Function() changing,
    required TResult Function() noData,
    required TResult Function(List<CategoryDataType> data) haveData,
    required TResult Function() noInternet,
    required TResult Function() uploaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changing,
    TResult? Function()? noData,
    TResult? Function(List<CategoryDataType> data)? haveData,
    TResult? Function()? noInternet,
    TResult? Function()? uploaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changing,
    TResult Function()? noData,
    TResult Function(List<CategoryDataType> data)? haveData,
    TResult Function()? noInternet,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Changing value) changing,
    required TResult Function(NoData value) noData,
    required TResult Function(HaveData value) haveData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(Uploaded value) uploaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Changing value)? changing,
    TResult? Function(NoData value)? noData,
    TResult? Function(HaveData value)? haveData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(Uploaded value)? uploaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Changing value)? changing,
    TResult Function(NoData value)? noData,
    TResult Function(HaveData value)? haveData,
    TResult Function(NoInternet value)? noInternet,
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

abstract class Error implements ServicesCategoriesState {
  const factory Error() = _$ErrorImpl;
}
