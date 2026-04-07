// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_device_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddDeviceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDeviceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDeviceState()';
}


}

/// @nodoc
class $AddDeviceStateCopyWith<$Res>  {
$AddDeviceStateCopyWith(AddDeviceState _, $Res Function(AddDeviceState) __);
}


/// Adds pattern-matching-related methods to [AddDeviceState].
extension AddDeviceStatePatterns on AddDeviceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( EspChecked value)?  espChecked,TResult Function( WifiProvisioned value)?  wifiProvisioned,TResult Function( DeviceRegistered value)?  deviceRegistered,TResult Function( DeviceSavedLocally value)?  deviceSavedLocally,TResult Function( Success value)?  success,TResult Function( Error value)?  error,TResult Function( _EspWifiConnected value)?  espWifiConnected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case EspChecked() when espChecked != null:
return espChecked(_that);case WifiProvisioned() when wifiProvisioned != null:
return wifiProvisioned(_that);case DeviceRegistered() when deviceRegistered != null:
return deviceRegistered(_that);case DeviceSavedLocally() when deviceSavedLocally != null:
return deviceSavedLocally(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case _EspWifiConnected() when espWifiConnected != null:
return espWifiConnected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( EspChecked value)  espChecked,required TResult Function( WifiProvisioned value)  wifiProvisioned,required TResult Function( DeviceRegistered value)  deviceRegistered,required TResult Function( DeviceSavedLocally value)  deviceSavedLocally,required TResult Function( Success value)  success,required TResult Function( Error value)  error,required TResult Function( _EspWifiConnected value)  espWifiConnected,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case EspChecked():
return espChecked(_that);case WifiProvisioned():
return wifiProvisioned(_that);case DeviceRegistered():
return deviceRegistered(_that);case DeviceSavedLocally():
return deviceSavedLocally(_that);case Success():
return success(_that);case Error():
return error(_that);case _EspWifiConnected():
return espWifiConnected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( EspChecked value)?  espChecked,TResult? Function( WifiProvisioned value)?  wifiProvisioned,TResult? Function( DeviceRegistered value)?  deviceRegistered,TResult? Function( DeviceSavedLocally value)?  deviceSavedLocally,TResult? Function( Success value)?  success,TResult? Function( Error value)?  error,TResult? Function( _EspWifiConnected value)?  espWifiConnected,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case EspChecked() when espChecked != null:
return espChecked(_that);case WifiProvisioned() when wifiProvisioned != null:
return wifiProvisioned(_that);case DeviceRegistered() when deviceRegistered != null:
return deviceRegistered(_that);case DeviceSavedLocally() when deviceSavedLocally != null:
return deviceSavedLocally(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case _EspWifiConnected() when espWifiConnected != null:
return espWifiConnected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DeviceEntity device)?  espChecked,TResult Function( DeviceEntity device)?  wifiProvisioned,TResult Function( DeviceEntity device)?  deviceRegistered,TResult Function( DeviceEntity device)?  deviceSavedLocally,TResult Function( DeviceEntity device)?  success,TResult Function( String message)?  error,TResult Function()?  espWifiConnected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case EspChecked() when espChecked != null:
return espChecked(_that.device);case WifiProvisioned() when wifiProvisioned != null:
return wifiProvisioned(_that.device);case DeviceRegistered() when deviceRegistered != null:
return deviceRegistered(_that.device);case DeviceSavedLocally() when deviceSavedLocally != null:
return deviceSavedLocally(_that.device);case Success() when success != null:
return success(_that.device);case Error() when error != null:
return error(_that.message);case _EspWifiConnected() when espWifiConnected != null:
return espWifiConnected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DeviceEntity device)  espChecked,required TResult Function( DeviceEntity device)  wifiProvisioned,required TResult Function( DeviceEntity device)  deviceRegistered,required TResult Function( DeviceEntity device)  deviceSavedLocally,required TResult Function( DeviceEntity device)  success,required TResult Function( String message)  error,required TResult Function()  espWifiConnected,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case EspChecked():
return espChecked(_that.device);case WifiProvisioned():
return wifiProvisioned(_that.device);case DeviceRegistered():
return deviceRegistered(_that.device);case DeviceSavedLocally():
return deviceSavedLocally(_that.device);case Success():
return success(_that.device);case Error():
return error(_that.message);case _EspWifiConnected():
return espWifiConnected();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DeviceEntity device)?  espChecked,TResult? Function( DeviceEntity device)?  wifiProvisioned,TResult? Function( DeviceEntity device)?  deviceRegistered,TResult? Function( DeviceEntity device)?  deviceSavedLocally,TResult? Function( DeviceEntity device)?  success,TResult? Function( String message)?  error,TResult? Function()?  espWifiConnected,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case EspChecked() when espChecked != null:
return espChecked(_that.device);case WifiProvisioned() when wifiProvisioned != null:
return wifiProvisioned(_that.device);case DeviceRegistered() when deviceRegistered != null:
return deviceRegistered(_that.device);case DeviceSavedLocally() when deviceSavedLocally != null:
return deviceSavedLocally(_that.device);case Success() when success != null:
return success(_that.device);case Error() when error != null:
return error(_that.message);case _EspWifiConnected() when espWifiConnected != null:
return espWifiConnected();case _:
  return null;

}
}

}

/// @nodoc


class Initial implements AddDeviceState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDeviceState.initial()';
}


}




/// @nodoc


class Loading implements AddDeviceState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDeviceState.loading()';
}


}




/// @nodoc


class EspChecked implements AddDeviceState {
  const EspChecked({required this.device});
  

 final  DeviceEntity device;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EspCheckedCopyWith<EspChecked> get copyWith => _$EspCheckedCopyWithImpl<EspChecked>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EspChecked&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,device);

@override
String toString() {
  return 'AddDeviceState.espChecked(device: $device)';
}


}

/// @nodoc
abstract mixin class $EspCheckedCopyWith<$Res> implements $AddDeviceStateCopyWith<$Res> {
  factory $EspCheckedCopyWith(EspChecked value, $Res Function(EspChecked) _then) = _$EspCheckedCopyWithImpl;
@useResult
$Res call({
 DeviceEntity device
});


$DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class _$EspCheckedCopyWithImpl<$Res>
    implements $EspCheckedCopyWith<$Res> {
  _$EspCheckedCopyWithImpl(this._self, this._then);

  final EspChecked _self;
  final $Res Function(EspChecked) _then;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? device = null,}) {
  return _then(EspChecked(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceEntityCopyWith<$Res> get device {
  
  return $DeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

/// @nodoc


class WifiProvisioned implements AddDeviceState {
  const WifiProvisioned({required this.device});
  

 final  DeviceEntity device;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WifiProvisionedCopyWith<WifiProvisioned> get copyWith => _$WifiProvisionedCopyWithImpl<WifiProvisioned>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WifiProvisioned&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,device);

@override
String toString() {
  return 'AddDeviceState.wifiProvisioned(device: $device)';
}


}

/// @nodoc
abstract mixin class $WifiProvisionedCopyWith<$Res> implements $AddDeviceStateCopyWith<$Res> {
  factory $WifiProvisionedCopyWith(WifiProvisioned value, $Res Function(WifiProvisioned) _then) = _$WifiProvisionedCopyWithImpl;
@useResult
$Res call({
 DeviceEntity device
});


$DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class _$WifiProvisionedCopyWithImpl<$Res>
    implements $WifiProvisionedCopyWith<$Res> {
  _$WifiProvisionedCopyWithImpl(this._self, this._then);

  final WifiProvisioned _self;
  final $Res Function(WifiProvisioned) _then;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? device = null,}) {
  return _then(WifiProvisioned(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceEntityCopyWith<$Res> get device {
  
  return $DeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

/// @nodoc


class DeviceRegistered implements AddDeviceState {
  const DeviceRegistered({required this.device});
  

 final  DeviceEntity device;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceRegisteredCopyWith<DeviceRegistered> get copyWith => _$DeviceRegisteredCopyWithImpl<DeviceRegistered>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceRegistered&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,device);

@override
String toString() {
  return 'AddDeviceState.deviceRegistered(device: $device)';
}


}

/// @nodoc
abstract mixin class $DeviceRegisteredCopyWith<$Res> implements $AddDeviceStateCopyWith<$Res> {
  factory $DeviceRegisteredCopyWith(DeviceRegistered value, $Res Function(DeviceRegistered) _then) = _$DeviceRegisteredCopyWithImpl;
@useResult
$Res call({
 DeviceEntity device
});


$DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class _$DeviceRegisteredCopyWithImpl<$Res>
    implements $DeviceRegisteredCopyWith<$Res> {
  _$DeviceRegisteredCopyWithImpl(this._self, this._then);

  final DeviceRegistered _self;
  final $Res Function(DeviceRegistered) _then;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? device = null,}) {
  return _then(DeviceRegistered(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceEntityCopyWith<$Res> get device {
  
  return $DeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

/// @nodoc


class DeviceSavedLocally implements AddDeviceState {
  const DeviceSavedLocally({required this.device});
  

 final  DeviceEntity device;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceSavedLocallyCopyWith<DeviceSavedLocally> get copyWith => _$DeviceSavedLocallyCopyWithImpl<DeviceSavedLocally>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceSavedLocally&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,device);

@override
String toString() {
  return 'AddDeviceState.deviceSavedLocally(device: $device)';
}


}

/// @nodoc
abstract mixin class $DeviceSavedLocallyCopyWith<$Res> implements $AddDeviceStateCopyWith<$Res> {
  factory $DeviceSavedLocallyCopyWith(DeviceSavedLocally value, $Res Function(DeviceSavedLocally) _then) = _$DeviceSavedLocallyCopyWithImpl;
@useResult
$Res call({
 DeviceEntity device
});


$DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class _$DeviceSavedLocallyCopyWithImpl<$Res>
    implements $DeviceSavedLocallyCopyWith<$Res> {
  _$DeviceSavedLocallyCopyWithImpl(this._self, this._then);

  final DeviceSavedLocally _self;
  final $Res Function(DeviceSavedLocally) _then;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? device = null,}) {
  return _then(DeviceSavedLocally(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceEntityCopyWith<$Res> get device {
  
  return $DeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

/// @nodoc


class Success implements AddDeviceState {
  const Success({required this.device});
  

 final  DeviceEntity device;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,device);

@override
String toString() {
  return 'AddDeviceState.success(device: $device)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $AddDeviceStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 DeviceEntity device
});


$DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? device = null,}) {
  return _then(Success(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceEntityCopyWith<$Res> get device {
  
  return $DeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

/// @nodoc


class Error implements AddDeviceState {
  const Error({required this.message});
  

 final  String message;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddDeviceState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $AddDeviceStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of AddDeviceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EspWifiConnected implements AddDeviceState {
  const _EspWifiConnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EspWifiConnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDeviceState.espWifiConnected()';
}


}




// dart format on
