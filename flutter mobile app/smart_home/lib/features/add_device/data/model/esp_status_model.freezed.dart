// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'esp_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EspStatusModel {

 bool get ok; String get mode;@JsonKey(name: 'ap_ssid') String get apSsid; String get ip; String get macAddress; String get deviceType; double? get temperature; List<String> get components; bool get relay1; bool get relay2;
/// Create a copy of EspStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EspStatusModelCopyWith<EspStatusModel> get copyWith => _$EspStatusModelCopyWithImpl<EspStatusModel>(this as EspStatusModel, _$identity);

  /// Serializes this EspStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EspStatusModel&&(identical(other.ok, ok) || other.ok == ok)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.apSsid, apSsid) || other.apSsid == apSsid)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&const DeepCollectionEquality().equals(other.components, components)&&(identical(other.relay1, relay1) || other.relay1 == relay1)&&(identical(other.relay2, relay2) || other.relay2 == relay2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ok,mode,apSsid,ip,macAddress,deviceType,temperature,const DeepCollectionEquality().hash(components),relay1,relay2);

@override
String toString() {
  return 'EspStatusModel(ok: $ok, mode: $mode, apSsid: $apSsid, ip: $ip, macAddress: $macAddress, deviceType: $deviceType, temperature: $temperature, components: $components, relay1: $relay1, relay2: $relay2)';
}


}

/// @nodoc
abstract mixin class $EspStatusModelCopyWith<$Res>  {
  factory $EspStatusModelCopyWith(EspStatusModel value, $Res Function(EspStatusModel) _then) = _$EspStatusModelCopyWithImpl;
@useResult
$Res call({
 bool ok, String mode,@JsonKey(name: 'ap_ssid') String apSsid, String ip, String macAddress, String deviceType, double? temperature, List<String> components, bool relay1, bool relay2
});




}
/// @nodoc
class _$EspStatusModelCopyWithImpl<$Res>
    implements $EspStatusModelCopyWith<$Res> {
  _$EspStatusModelCopyWithImpl(this._self, this._then);

  final EspStatusModel _self;
  final $Res Function(EspStatusModel) _then;

/// Create a copy of EspStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ok = null,Object? mode = null,Object? apSsid = null,Object? ip = null,Object? macAddress = null,Object? deviceType = null,Object? temperature = freezed,Object? components = null,Object? relay1 = null,Object? relay2 = null,}) {
  return _then(_self.copyWith(
ok: null == ok ? _self.ok : ok // ignore: cast_nullable_to_non_nullable
as bool,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String,apSsid: null == apSsid ? _self.apSsid : apSsid // ignore: cast_nullable_to_non_nullable
as String,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,macAddress: null == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as List<String>,relay1: null == relay1 ? _self.relay1 : relay1 // ignore: cast_nullable_to_non_nullable
as bool,relay2: null == relay2 ? _self.relay2 : relay2 // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EspStatusModel].
extension EspStatusModelPatterns on EspStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EspStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EspStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EspStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _EspStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EspStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _EspStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool ok,  String mode, @JsonKey(name: 'ap_ssid')  String apSsid,  String ip,  String macAddress,  String deviceType,  double? temperature,  List<String> components,  bool relay1,  bool relay2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EspStatusModel() when $default != null:
return $default(_that.ok,_that.mode,_that.apSsid,_that.ip,_that.macAddress,_that.deviceType,_that.temperature,_that.components,_that.relay1,_that.relay2);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool ok,  String mode, @JsonKey(name: 'ap_ssid')  String apSsid,  String ip,  String macAddress,  String deviceType,  double? temperature,  List<String> components,  bool relay1,  bool relay2)  $default,) {final _that = this;
switch (_that) {
case _EspStatusModel():
return $default(_that.ok,_that.mode,_that.apSsid,_that.ip,_that.macAddress,_that.deviceType,_that.temperature,_that.components,_that.relay1,_that.relay2);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool ok,  String mode, @JsonKey(name: 'ap_ssid')  String apSsid,  String ip,  String macAddress,  String deviceType,  double? temperature,  List<String> components,  bool relay1,  bool relay2)?  $default,) {final _that = this;
switch (_that) {
case _EspStatusModel() when $default != null:
return $default(_that.ok,_that.mode,_that.apSsid,_that.ip,_that.macAddress,_that.deviceType,_that.temperature,_that.components,_that.relay1,_that.relay2);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EspStatusModel implements EspStatusModel {
  const _EspStatusModel({this.ok = false, this.mode = '', @JsonKey(name: 'ap_ssid') this.apSsid = '', this.ip = '', this.macAddress = '', this.deviceType = '', this.temperature, final  List<String> components = const [], this.relay1 = false, this.relay2 = false}): _components = components;
  factory _EspStatusModel.fromJson(Map<String, dynamic> json) => _$EspStatusModelFromJson(json);

@override@JsonKey() final  bool ok;
@override@JsonKey() final  String mode;
@override@JsonKey(name: 'ap_ssid') final  String apSsid;
@override@JsonKey() final  String ip;
@override@JsonKey() final  String macAddress;
@override@JsonKey() final  String deviceType;
@override final  double? temperature;
 final  List<String> _components;
@override@JsonKey() List<String> get components {
  if (_components is EqualUnmodifiableListView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_components);
}

@override@JsonKey() final  bool relay1;
@override@JsonKey() final  bool relay2;

/// Create a copy of EspStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EspStatusModelCopyWith<_EspStatusModel> get copyWith => __$EspStatusModelCopyWithImpl<_EspStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EspStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EspStatusModel&&(identical(other.ok, ok) || other.ok == ok)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.apSsid, apSsid) || other.apSsid == apSsid)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&const DeepCollectionEquality().equals(other._components, _components)&&(identical(other.relay1, relay1) || other.relay1 == relay1)&&(identical(other.relay2, relay2) || other.relay2 == relay2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ok,mode,apSsid,ip,macAddress,deviceType,temperature,const DeepCollectionEquality().hash(_components),relay1,relay2);

@override
String toString() {
  return 'EspStatusModel(ok: $ok, mode: $mode, apSsid: $apSsid, ip: $ip, macAddress: $macAddress, deviceType: $deviceType, temperature: $temperature, components: $components, relay1: $relay1, relay2: $relay2)';
}


}

/// @nodoc
abstract mixin class _$EspStatusModelCopyWith<$Res> implements $EspStatusModelCopyWith<$Res> {
  factory _$EspStatusModelCopyWith(_EspStatusModel value, $Res Function(_EspStatusModel) _then) = __$EspStatusModelCopyWithImpl;
@override @useResult
$Res call({
 bool ok, String mode,@JsonKey(name: 'ap_ssid') String apSsid, String ip, String macAddress, String deviceType, double? temperature, List<String> components, bool relay1, bool relay2
});




}
/// @nodoc
class __$EspStatusModelCopyWithImpl<$Res>
    implements _$EspStatusModelCopyWith<$Res> {
  __$EspStatusModelCopyWithImpl(this._self, this._then);

  final _EspStatusModel _self;
  final $Res Function(_EspStatusModel) _then;

/// Create a copy of EspStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ok = null,Object? mode = null,Object? apSsid = null,Object? ip = null,Object? macAddress = null,Object? deviceType = null,Object? temperature = freezed,Object? components = null,Object? relay1 = null,Object? relay2 = null,}) {
  return _then(_EspStatusModel(
ok: null == ok ? _self.ok : ok // ignore: cast_nullable_to_non_nullable
as bool,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String,apSsid: null == apSsid ? _self.apSsid : apSsid // ignore: cast_nullable_to_non_nullable
as String,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,macAddress: null == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,components: null == components ? _self._components : components // ignore: cast_nullable_to_non_nullable
as List<String>,relay1: null == relay1 ? _self.relay1 : relay1 // ignore: cast_nullable_to_non_nullable
as bool,relay2: null == relay2 ? _self.relay2 : relay2 // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
