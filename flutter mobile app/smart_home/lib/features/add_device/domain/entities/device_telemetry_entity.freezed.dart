// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_telemetry_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceTelemetryEntity {

 bool get relay1; bool get relay2; double? get temperature; double? get tempSensor; double? get pressureBar; double? get voltage; double? get current; double? get power; double? get energyKwh; bool get safetyTripped; String? get safetyMessage; String? get updatedAt;
/// Create a copy of DeviceTelemetryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceTelemetryEntityCopyWith<DeviceTelemetryEntity> get copyWith => _$DeviceTelemetryEntityCopyWithImpl<DeviceTelemetryEntity>(this as DeviceTelemetryEntity, _$identity);

  /// Serializes this DeviceTelemetryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceTelemetryEntity&&(identical(other.relay1, relay1) || other.relay1 == relay1)&&(identical(other.relay2, relay2) || other.relay2 == relay2)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.tempSensor, tempSensor) || other.tempSensor == tempSensor)&&(identical(other.pressureBar, pressureBar) || other.pressureBar == pressureBar)&&(identical(other.voltage, voltage) || other.voltage == voltage)&&(identical(other.current, current) || other.current == current)&&(identical(other.power, power) || other.power == power)&&(identical(other.energyKwh, energyKwh) || other.energyKwh == energyKwh)&&(identical(other.safetyTripped, safetyTripped) || other.safetyTripped == safetyTripped)&&(identical(other.safetyMessage, safetyMessage) || other.safetyMessage == safetyMessage)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,relay1,relay2,temperature,tempSensor,pressureBar,voltage,current,power,energyKwh,safetyTripped,safetyMessage,updatedAt);

@override
String toString() {
  return 'DeviceTelemetryEntity(relay1: $relay1, relay2: $relay2, temperature: $temperature, tempSensor: $tempSensor, pressureBar: $pressureBar, voltage: $voltage, current: $current, power: $power, energyKwh: $energyKwh, safetyTripped: $safetyTripped, safetyMessage: $safetyMessage, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DeviceTelemetryEntityCopyWith<$Res>  {
  factory $DeviceTelemetryEntityCopyWith(DeviceTelemetryEntity value, $Res Function(DeviceTelemetryEntity) _then) = _$DeviceTelemetryEntityCopyWithImpl;
@useResult
$Res call({
 bool relay1, bool relay2, double? temperature, double? tempSensor, double? pressureBar, double? voltage, double? current, double? power, double? energyKwh, bool safetyTripped, String? safetyMessage, String? updatedAt
});




}
/// @nodoc
class _$DeviceTelemetryEntityCopyWithImpl<$Res>
    implements $DeviceTelemetryEntityCopyWith<$Res> {
  _$DeviceTelemetryEntityCopyWithImpl(this._self, this._then);

  final DeviceTelemetryEntity _self;
  final $Res Function(DeviceTelemetryEntity) _then;

/// Create a copy of DeviceTelemetryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? relay1 = null,Object? relay2 = null,Object? temperature = freezed,Object? tempSensor = freezed,Object? pressureBar = freezed,Object? voltage = freezed,Object? current = freezed,Object? power = freezed,Object? energyKwh = freezed,Object? safetyTripped = null,Object? safetyMessage = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
relay1: null == relay1 ? _self.relay1 : relay1 // ignore: cast_nullable_to_non_nullable
as bool,relay2: null == relay2 ? _self.relay2 : relay2 // ignore: cast_nullable_to_non_nullable
as bool,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,tempSensor: freezed == tempSensor ? _self.tempSensor : tempSensor // ignore: cast_nullable_to_non_nullable
as double?,pressureBar: freezed == pressureBar ? _self.pressureBar : pressureBar // ignore: cast_nullable_to_non_nullable
as double?,voltage: freezed == voltage ? _self.voltage : voltage // ignore: cast_nullable_to_non_nullable
as double?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as double?,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as double?,energyKwh: freezed == energyKwh ? _self.energyKwh : energyKwh // ignore: cast_nullable_to_non_nullable
as double?,safetyTripped: null == safetyTripped ? _self.safetyTripped : safetyTripped // ignore: cast_nullable_to_non_nullable
as bool,safetyMessage: freezed == safetyMessage ? _self.safetyMessage : safetyMessage // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceTelemetryEntity].
extension DeviceTelemetryEntityPatterns on DeviceTelemetryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceTelemetryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceTelemetryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceTelemetryEntity value)  $default,){
final _that = this;
switch (_that) {
case _DeviceTelemetryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceTelemetryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceTelemetryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool relay1,  bool relay2,  double? temperature,  double? tempSensor,  double? pressureBar,  double? voltage,  double? current,  double? power,  double? energyKwh,  bool safetyTripped,  String? safetyMessage,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceTelemetryEntity() when $default != null:
return $default(_that.relay1,_that.relay2,_that.temperature,_that.tempSensor,_that.pressureBar,_that.voltage,_that.current,_that.power,_that.energyKwh,_that.safetyTripped,_that.safetyMessage,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool relay1,  bool relay2,  double? temperature,  double? tempSensor,  double? pressureBar,  double? voltage,  double? current,  double? power,  double? energyKwh,  bool safetyTripped,  String? safetyMessage,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DeviceTelemetryEntity():
return $default(_that.relay1,_that.relay2,_that.temperature,_that.tempSensor,_that.pressureBar,_that.voltage,_that.current,_that.power,_that.energyKwh,_that.safetyTripped,_that.safetyMessage,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool relay1,  bool relay2,  double? temperature,  double? tempSensor,  double? pressureBar,  double? voltage,  double? current,  double? power,  double? energyKwh,  bool safetyTripped,  String? safetyMessage,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DeviceTelemetryEntity() when $default != null:
return $default(_that.relay1,_that.relay2,_that.temperature,_that.tempSensor,_that.pressureBar,_that.voltage,_that.current,_that.power,_that.energyKwh,_that.safetyTripped,_that.safetyMessage,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceTelemetryEntity implements DeviceTelemetryEntity {
  const _DeviceTelemetryEntity({this.relay1 = false, this.relay2 = false, this.temperature, this.tempSensor, this.pressureBar, this.voltage, this.current, this.power, this.energyKwh, this.safetyTripped = false, this.safetyMessage, this.updatedAt});
  factory _DeviceTelemetryEntity.fromJson(Map<String, dynamic> json) => _$DeviceTelemetryEntityFromJson(json);

@override@JsonKey() final  bool relay1;
@override@JsonKey() final  bool relay2;
@override final  double? temperature;
@override final  double? tempSensor;
@override final  double? pressureBar;
@override final  double? voltage;
@override final  double? current;
@override final  double? power;
@override final  double? energyKwh;
@override@JsonKey() final  bool safetyTripped;
@override final  String? safetyMessage;
@override final  String? updatedAt;

/// Create a copy of DeviceTelemetryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceTelemetryEntityCopyWith<_DeviceTelemetryEntity> get copyWith => __$DeviceTelemetryEntityCopyWithImpl<_DeviceTelemetryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceTelemetryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceTelemetryEntity&&(identical(other.relay1, relay1) || other.relay1 == relay1)&&(identical(other.relay2, relay2) || other.relay2 == relay2)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.tempSensor, tempSensor) || other.tempSensor == tempSensor)&&(identical(other.pressureBar, pressureBar) || other.pressureBar == pressureBar)&&(identical(other.voltage, voltage) || other.voltage == voltage)&&(identical(other.current, current) || other.current == current)&&(identical(other.power, power) || other.power == power)&&(identical(other.energyKwh, energyKwh) || other.energyKwh == energyKwh)&&(identical(other.safetyTripped, safetyTripped) || other.safetyTripped == safetyTripped)&&(identical(other.safetyMessage, safetyMessage) || other.safetyMessage == safetyMessage)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,relay1,relay2,temperature,tempSensor,pressureBar,voltage,current,power,energyKwh,safetyTripped,safetyMessage,updatedAt);

@override
String toString() {
  return 'DeviceTelemetryEntity(relay1: $relay1, relay2: $relay2, temperature: $temperature, tempSensor: $tempSensor, pressureBar: $pressureBar, voltage: $voltage, current: $current, power: $power, energyKwh: $energyKwh, safetyTripped: $safetyTripped, safetyMessage: $safetyMessage, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DeviceTelemetryEntityCopyWith<$Res> implements $DeviceTelemetryEntityCopyWith<$Res> {
  factory _$DeviceTelemetryEntityCopyWith(_DeviceTelemetryEntity value, $Res Function(_DeviceTelemetryEntity) _then) = __$DeviceTelemetryEntityCopyWithImpl;
@override @useResult
$Res call({
 bool relay1, bool relay2, double? temperature, double? tempSensor, double? pressureBar, double? voltage, double? current, double? power, double? energyKwh, bool safetyTripped, String? safetyMessage, String? updatedAt
});




}
/// @nodoc
class __$DeviceTelemetryEntityCopyWithImpl<$Res>
    implements _$DeviceTelemetryEntityCopyWith<$Res> {
  __$DeviceTelemetryEntityCopyWithImpl(this._self, this._then);

  final _DeviceTelemetryEntity _self;
  final $Res Function(_DeviceTelemetryEntity) _then;

/// Create a copy of DeviceTelemetryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? relay1 = null,Object? relay2 = null,Object? temperature = freezed,Object? tempSensor = freezed,Object? pressureBar = freezed,Object? voltage = freezed,Object? current = freezed,Object? power = freezed,Object? energyKwh = freezed,Object? safetyTripped = null,Object? safetyMessage = freezed,Object? updatedAt = freezed,}) {
  return _then(_DeviceTelemetryEntity(
relay1: null == relay1 ? _self.relay1 : relay1 // ignore: cast_nullable_to_non_nullable
as bool,relay2: null == relay2 ? _self.relay2 : relay2 // ignore: cast_nullable_to_non_nullable
as bool,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,tempSensor: freezed == tempSensor ? _self.tempSensor : tempSensor // ignore: cast_nullable_to_non_nullable
as double?,pressureBar: freezed == pressureBar ? _self.pressureBar : pressureBar // ignore: cast_nullable_to_non_nullable
as double?,voltage: freezed == voltage ? _self.voltage : voltage // ignore: cast_nullable_to_non_nullable
as double?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as double?,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as double?,energyKwh: freezed == energyKwh ? _self.energyKwh : energyKwh // ignore: cast_nullable_to_non_nullable
as double?,safetyTripped: null == safetyTripped ? _self.safetyTripped : safetyTripped // ignore: cast_nullable_to_non_nullable
as bool,safetyMessage: freezed == safetyMessage ? _self.safetyMessage : safetyMessage // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
