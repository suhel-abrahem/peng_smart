// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_device_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterDeviceParams {

 AddDeviceInputModel get input; DeviceEntity get device;
/// Create a copy of RegisterDeviceParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterDeviceParamsCopyWith<RegisterDeviceParams> get copyWith => _$RegisterDeviceParamsCopyWithImpl<RegisterDeviceParams>(this as RegisterDeviceParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDeviceParams&&(identical(other.input, input) || other.input == input)&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,input,device);

@override
String toString() {
  return 'RegisterDeviceParams(input: $input, device: $device)';
}


}

/// @nodoc
abstract mixin class $RegisterDeviceParamsCopyWith<$Res>  {
  factory $RegisterDeviceParamsCopyWith(RegisterDeviceParams value, $Res Function(RegisterDeviceParams) _then) = _$RegisterDeviceParamsCopyWithImpl;
@useResult
$Res call({
 AddDeviceInputModel input, DeviceEntity device
});


$AddDeviceInputModelCopyWith<$Res> get input;$DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class _$RegisterDeviceParamsCopyWithImpl<$Res>
    implements $RegisterDeviceParamsCopyWith<$Res> {
  _$RegisterDeviceParamsCopyWithImpl(this._self, this._then);

  final RegisterDeviceParams _self;
  final $Res Function(RegisterDeviceParams) _then;

/// Create a copy of RegisterDeviceParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? device = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as AddDeviceInputModel,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}
/// Create a copy of RegisterDeviceParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddDeviceInputModelCopyWith<$Res> get input {
  
  return $AddDeviceInputModelCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}/// Create a copy of RegisterDeviceParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceEntityCopyWith<$Res> get device {
  
  return $DeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterDeviceParams].
extension RegisterDeviceParamsPatterns on RegisterDeviceParams {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterDeviceParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterDeviceParams() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterDeviceParams value)  $default,){
final _that = this;
switch (_that) {
case _RegisterDeviceParams():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterDeviceParams value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterDeviceParams() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddDeviceInputModel input,  DeviceEntity device)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterDeviceParams() when $default != null:
return $default(_that.input,_that.device);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddDeviceInputModel input,  DeviceEntity device)  $default,) {final _that = this;
switch (_that) {
case _RegisterDeviceParams():
return $default(_that.input,_that.device);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddDeviceInputModel input,  DeviceEntity device)?  $default,) {final _that = this;
switch (_that) {
case _RegisterDeviceParams() when $default != null:
return $default(_that.input,_that.device);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterDeviceParams implements RegisterDeviceParams {
  const _RegisterDeviceParams({required this.input, required this.device});
  

@override final  AddDeviceInputModel input;
@override final  DeviceEntity device;

/// Create a copy of RegisterDeviceParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterDeviceParamsCopyWith<_RegisterDeviceParams> get copyWith => __$RegisterDeviceParamsCopyWithImpl<_RegisterDeviceParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterDeviceParams&&(identical(other.input, input) || other.input == input)&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,input,device);

@override
String toString() {
  return 'RegisterDeviceParams(input: $input, device: $device)';
}


}

/// @nodoc
abstract mixin class _$RegisterDeviceParamsCopyWith<$Res> implements $RegisterDeviceParamsCopyWith<$Res> {
  factory _$RegisterDeviceParamsCopyWith(_RegisterDeviceParams value, $Res Function(_RegisterDeviceParams) _then) = __$RegisterDeviceParamsCopyWithImpl;
@override @useResult
$Res call({
 AddDeviceInputModel input, DeviceEntity device
});


@override $AddDeviceInputModelCopyWith<$Res> get input;@override $DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class __$RegisterDeviceParamsCopyWithImpl<$Res>
    implements _$RegisterDeviceParamsCopyWith<$Res> {
  __$RegisterDeviceParamsCopyWithImpl(this._self, this._then);

  final _RegisterDeviceParams _self;
  final $Res Function(_RegisterDeviceParams) _then;

/// Create a copy of RegisterDeviceParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? device = null,}) {
  return _then(_RegisterDeviceParams(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as AddDeviceInputModel,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}

/// Create a copy of RegisterDeviceParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddDeviceInputModelCopyWith<$Res> get input {
  
  return $AddDeviceInputModelCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}/// Create a copy of RegisterDeviceParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceEntityCopyWith<$Res> get device {
  
  return $DeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

// dart format on
