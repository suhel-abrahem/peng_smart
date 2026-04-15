// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_device_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddDeviceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDeviceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDeviceEvent()';
}


}

/// @nodoc
class $AddDeviceEventCopyWith<$Res>  {
$AddDeviceEventCopyWith(AddDeviceEvent _, $Res Function(AddDeviceEvent) __);
}


/// Adds pattern-matching-related methods to [AddDeviceEvent].
extension AddDeviceEventPatterns on AddDeviceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckEspDevice value)?  checkEspDevice,TResult Function( ProvisionDeviceWifi value)?  provisionDeviceWifi,TResult Function( RegisterDevice value)?  registerDevice,TResult Function( SaveDeviceLocally value)?  saveDeviceLocally,TResult Function( CompleteAddDevice value)?  completeAddDevice,TResult Function( Reset value)?  reset,TResult Function( ConnectToEspWifi value)?  connectToEspWifi,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckEspDevice() when checkEspDevice != null:
return checkEspDevice(_that);case ProvisionDeviceWifi() when provisionDeviceWifi != null:
return provisionDeviceWifi(_that);case RegisterDevice() when registerDevice != null:
return registerDevice(_that);case SaveDeviceLocally() when saveDeviceLocally != null:
return saveDeviceLocally(_that);case CompleteAddDevice() when completeAddDevice != null:
return completeAddDevice(_that);case Reset() when reset != null:
return reset(_that);case ConnectToEspWifi() when connectToEspWifi != null:
return connectToEspWifi(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckEspDevice value)  checkEspDevice,required TResult Function( ProvisionDeviceWifi value)  provisionDeviceWifi,required TResult Function( RegisterDevice value)  registerDevice,required TResult Function( SaveDeviceLocally value)  saveDeviceLocally,required TResult Function( CompleteAddDevice value)  completeAddDevice,required TResult Function( Reset value)  reset,required TResult Function( ConnectToEspWifi value)  connectToEspWifi,}){
final _that = this;
switch (_that) {
case CheckEspDevice():
return checkEspDevice(_that);case ProvisionDeviceWifi():
return provisionDeviceWifi(_that);case RegisterDevice():
return registerDevice(_that);case SaveDeviceLocally():
return saveDeviceLocally(_that);case CompleteAddDevice():
return completeAddDevice(_that);case Reset():
return reset(_that);case ConnectToEspWifi():
return connectToEspWifi(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckEspDevice value)?  checkEspDevice,TResult? Function( ProvisionDeviceWifi value)?  provisionDeviceWifi,TResult? Function( RegisterDevice value)?  registerDevice,TResult? Function( SaveDeviceLocally value)?  saveDeviceLocally,TResult? Function( CompleteAddDevice value)?  completeAddDevice,TResult? Function( Reset value)?  reset,TResult? Function( ConnectToEspWifi value)?  connectToEspWifi,}){
final _that = this;
switch (_that) {
case CheckEspDevice() when checkEspDevice != null:
return checkEspDevice(_that);case ProvisionDeviceWifi() when provisionDeviceWifi != null:
return provisionDeviceWifi(_that);case RegisterDevice() when registerDevice != null:
return registerDevice(_that);case SaveDeviceLocally() when saveDeviceLocally != null:
return saveDeviceLocally(_that);case CompleteAddDevice() when completeAddDevice != null:
return completeAddDevice(_that);case Reset() when reset != null:
return reset(_that);case ConnectToEspWifi() when connectToEspWifi != null:
return connectToEspWifi(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkEspDevice,TResult Function( AddDeviceInputModel input)?  provisionDeviceWifi,TResult Function( RegisterDeviceParams params)?  registerDevice,TResult Function( DeviceEntity device)?  saveDeviceLocally,TResult Function( AddDeviceInputModel input,  DeviceEntity device)?  completeAddDevice,TResult Function()?  reset,TResult Function()?  connectToEspWifi,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckEspDevice() when checkEspDevice != null:
return checkEspDevice();case ProvisionDeviceWifi() when provisionDeviceWifi != null:
return provisionDeviceWifi(_that.input);case RegisterDevice() when registerDevice != null:
return registerDevice(_that.params);case SaveDeviceLocally() when saveDeviceLocally != null:
return saveDeviceLocally(_that.device);case CompleteAddDevice() when completeAddDevice != null:
return completeAddDevice(_that.input,_that.device);case Reset() when reset != null:
return reset();case ConnectToEspWifi() when connectToEspWifi != null:
return connectToEspWifi();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkEspDevice,required TResult Function( AddDeviceInputModel input)  provisionDeviceWifi,required TResult Function( RegisterDeviceParams params)  registerDevice,required TResult Function( DeviceEntity device)  saveDeviceLocally,required TResult Function( AddDeviceInputModel input,  DeviceEntity device)  completeAddDevice,required TResult Function()  reset,required TResult Function()  connectToEspWifi,}) {final _that = this;
switch (_that) {
case CheckEspDevice():
return checkEspDevice();case ProvisionDeviceWifi():
return provisionDeviceWifi(_that.input);case RegisterDevice():
return registerDevice(_that.params);case SaveDeviceLocally():
return saveDeviceLocally(_that.device);case CompleteAddDevice():
return completeAddDevice(_that.input,_that.device);case Reset():
return reset();case ConnectToEspWifi():
return connectToEspWifi();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkEspDevice,TResult? Function( AddDeviceInputModel input)?  provisionDeviceWifi,TResult? Function( RegisterDeviceParams params)?  registerDevice,TResult? Function( DeviceEntity device)?  saveDeviceLocally,TResult? Function( AddDeviceInputModel input,  DeviceEntity device)?  completeAddDevice,TResult? Function()?  reset,TResult? Function()?  connectToEspWifi,}) {final _that = this;
switch (_that) {
case CheckEspDevice() when checkEspDevice != null:
return checkEspDevice();case ProvisionDeviceWifi() when provisionDeviceWifi != null:
return provisionDeviceWifi(_that.input);case RegisterDevice() when registerDevice != null:
return registerDevice(_that.params);case SaveDeviceLocally() when saveDeviceLocally != null:
return saveDeviceLocally(_that.device);case CompleteAddDevice() when completeAddDevice != null:
return completeAddDevice(_that.input,_that.device);case Reset() when reset != null:
return reset();case ConnectToEspWifi() when connectToEspWifi != null:
return connectToEspWifi();case _:
  return null;

}
}

}

/// @nodoc


class CheckEspDevice implements AddDeviceEvent {
  const CheckEspDevice();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEspDevice);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDeviceEvent.checkEspDevice()';
}


}




/// @nodoc


class ProvisionDeviceWifi implements AddDeviceEvent {
  const ProvisionDeviceWifi({required this.input});
  

 final  AddDeviceInputModel input;

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvisionDeviceWifiCopyWith<ProvisionDeviceWifi> get copyWith => _$ProvisionDeviceWifiCopyWithImpl<ProvisionDeviceWifi>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvisionDeviceWifi&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'AddDeviceEvent.provisionDeviceWifi(input: $input)';
}


}

/// @nodoc
abstract mixin class $ProvisionDeviceWifiCopyWith<$Res> implements $AddDeviceEventCopyWith<$Res> {
  factory $ProvisionDeviceWifiCopyWith(ProvisionDeviceWifi value, $Res Function(ProvisionDeviceWifi) _then) = _$ProvisionDeviceWifiCopyWithImpl;
@useResult
$Res call({
 AddDeviceInputModel input
});


$AddDeviceInputModelCopyWith<$Res> get input;

}
/// @nodoc
class _$ProvisionDeviceWifiCopyWithImpl<$Res>
    implements $ProvisionDeviceWifiCopyWith<$Res> {
  _$ProvisionDeviceWifiCopyWithImpl(this._self, this._then);

  final ProvisionDeviceWifi _self;
  final $Res Function(ProvisionDeviceWifi) _then;

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(ProvisionDeviceWifi(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as AddDeviceInputModel,
  ));
}

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddDeviceInputModelCopyWith<$Res> get input {
  
  return $AddDeviceInputModelCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}
}

/// @nodoc


class RegisterDevice implements AddDeviceEvent {
  const RegisterDevice({required this.params});
  

 final  RegisterDeviceParams params;

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterDeviceCopyWith<RegisterDevice> get copyWith => _$RegisterDeviceCopyWithImpl<RegisterDevice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDevice&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'AddDeviceEvent.registerDevice(params: $params)';
}


}

/// @nodoc
abstract mixin class $RegisterDeviceCopyWith<$Res> implements $AddDeviceEventCopyWith<$Res> {
  factory $RegisterDeviceCopyWith(RegisterDevice value, $Res Function(RegisterDevice) _then) = _$RegisterDeviceCopyWithImpl;
@useResult
$Res call({
 RegisterDeviceParams params
});


$RegisterDeviceParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$RegisterDeviceCopyWithImpl<$Res>
    implements $RegisterDeviceCopyWith<$Res> {
  _$RegisterDeviceCopyWithImpl(this._self, this._then);

  final RegisterDevice _self;
  final $Res Function(RegisterDevice) _then;

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(RegisterDevice(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as RegisterDeviceParams,
  ));
}

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterDeviceParamsCopyWith<$Res> get params {
  
  return $RegisterDeviceParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class SaveDeviceLocally implements AddDeviceEvent {
  const SaveDeviceLocally({required this.device});
  

 final  DeviceEntity device;

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveDeviceLocallyCopyWith<SaveDeviceLocally> get copyWith => _$SaveDeviceLocallyCopyWithImpl<SaveDeviceLocally>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveDeviceLocally&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,device);

@override
String toString() {
  return 'AddDeviceEvent.saveDeviceLocally(device: $device)';
}


}

/// @nodoc
abstract mixin class $SaveDeviceLocallyCopyWith<$Res> implements $AddDeviceEventCopyWith<$Res> {
  factory $SaveDeviceLocallyCopyWith(SaveDeviceLocally value, $Res Function(SaveDeviceLocally) _then) = _$SaveDeviceLocallyCopyWithImpl;
@useResult
$Res call({
 DeviceEntity device
});


$DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class _$SaveDeviceLocallyCopyWithImpl<$Res>
    implements $SaveDeviceLocallyCopyWith<$Res> {
  _$SaveDeviceLocallyCopyWithImpl(this._self, this._then);

  final SaveDeviceLocally _self;
  final $Res Function(SaveDeviceLocally) _then;

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? device = null,}) {
  return _then(SaveDeviceLocally(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}

/// Create a copy of AddDeviceEvent
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


class CompleteAddDevice implements AddDeviceEvent {
  const CompleteAddDevice({required this.input, required this.device});
  

 final  AddDeviceInputModel input;
 final  DeviceEntity device;

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteAddDeviceCopyWith<CompleteAddDevice> get copyWith => _$CompleteAddDeviceCopyWithImpl<CompleteAddDevice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteAddDevice&&(identical(other.input, input) || other.input == input)&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,input,device);

@override
String toString() {
  return 'AddDeviceEvent.completeAddDevice(input: $input, device: $device)';
}


}

/// @nodoc
abstract mixin class $CompleteAddDeviceCopyWith<$Res> implements $AddDeviceEventCopyWith<$Res> {
  factory $CompleteAddDeviceCopyWith(CompleteAddDevice value, $Res Function(CompleteAddDevice) _then) = _$CompleteAddDeviceCopyWithImpl;
@useResult
$Res call({
 AddDeviceInputModel input, DeviceEntity device
});


$AddDeviceInputModelCopyWith<$Res> get input;$DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class _$CompleteAddDeviceCopyWithImpl<$Res>
    implements $CompleteAddDeviceCopyWith<$Res> {
  _$CompleteAddDeviceCopyWithImpl(this._self, this._then);

  final CompleteAddDevice _self;
  final $Res Function(CompleteAddDevice) _then;

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,Object? device = null,}) {
  return _then(CompleteAddDevice(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as AddDeviceInputModel,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}

/// Create a copy of AddDeviceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddDeviceInputModelCopyWith<$Res> get input {
  
  return $AddDeviceInputModelCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}/// Create a copy of AddDeviceEvent
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


class Reset implements AddDeviceEvent {
  const Reset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDeviceEvent.reset()';
}


}




/// @nodoc


class ConnectToEspWifi implements AddDeviceEvent {
  const ConnectToEspWifi();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectToEspWifi);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDeviceEvent.connectToEspWifi()';
}


}




// dart format on
