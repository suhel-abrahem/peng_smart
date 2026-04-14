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

 bool get relay1; bool get relay2; double? get temperature; double? get tempSensor; String? get updatedAt;
/// Create a copy of DeviceTelemetryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceTelemetryEntityCopyWith<DeviceTelemetryEntity> get copyWith => _$DeviceTelemetryEntityCopyWithImpl<DeviceTelemetryEntity>(this as DeviceTelemetryEntity, _$identity);

  /// Serializes this DeviceTelemetryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceTelemetryEntity&&(identical(other.relay1, relay1) || other.relay1 == relay1)&&(identical(other.relay2, relay2) || other.relay2 == relay2)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.tempSensor, tempSensor) || other.tempSensor == tempSensor)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,relay1,relay2,temperature,tempSensor,updatedAt);

@override
String toString() {
  return 'DeviceTelemetryEntity(relay1: $relay1, relay2: $relay2, temperature: $temperature, tempSensor: $tempSensor, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DeviceTelemetryEntityCopyWith<$Res>  {
  factory $DeviceTelemetryEntityCopyWith(DeviceTelemetryEntity value, $Res Function(DeviceTelemetryEntity) _then) = _$DeviceTelemetryEntityCopyWithImpl;
@useResult
$Res call({
 bool relay1, bool relay2, double? temperature, double? tempSensor, String? updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? relay1 = null,Object? relay2 = null,Object? temperature = freezed,Object? tempSensor = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
relay1: null == relay1 ? _self.relay1 : relay1 // ignore: cast_nullable_to_non_nullable
as bool,relay2: null == relay2 ? _self.relay2 : relay2 // ignore: cast_nullable_to_non_nullable
as bool,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,tempSensor: freezed == tempSensor ? _self.tempSensor : tempSensor // ignore: cast_nullable_to_non_nullable
as double?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool relay1,  bool relay2,  double? temperature,  double? tempSensor,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceTelemetryEntity() when $default != null:
return $default(_that.relay1,_that.relay2,_that.temperature,_that.tempSensor,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool relay1,  bool relay2,  double? temperature,  double? tempSensor,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DeviceTelemetryEntity():
return $default(_that.relay1,_that.relay2,_that.temperature,_that.tempSensor,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool relay1,  bool relay2,  double? temperature,  double? tempSensor,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DeviceTelemetryEntity() when $default != null:
return $default(_that.relay1,_that.relay2,_that.temperature,_that.tempSensor,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceTelemetryEntity implements DeviceTelemetryEntity {
  const _DeviceTelemetryEntity({this.relay1 = false, this.relay2 = false, this.temperature, this.tempSensor, this.updatedAt});
  factory _DeviceTelemetryEntity.fromJson(Map<String, dynamic> json) => _$DeviceTelemetryEntityFromJson(json);

@override@JsonKey() final  bool relay1;
@override@JsonKey() final  bool relay2;
@override final  double? temperature;
@override final  double? tempSensor;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceTelemetryEntity&&(identical(other.relay1, relay1) || other.relay1 == relay1)&&(identical(other.relay2, relay2) || other.relay2 == relay2)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.tempSensor, tempSensor) || other.tempSensor == tempSensor)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,relay1,relay2,temperature,tempSensor,updatedAt);

@override
String toString() {
  return 'DeviceTelemetryEntity(relay1: $relay1, relay2: $relay2, temperature: $temperature, tempSensor: $tempSensor, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DeviceTelemetryEntityCopyWith<$Res> implements $DeviceTelemetryEntityCopyWith<$Res> {
  factory _$DeviceTelemetryEntityCopyWith(_DeviceTelemetryEntity value, $Res Function(_DeviceTelemetryEntity) _then) = __$DeviceTelemetryEntityCopyWithImpl;
@override @useResult
$Res call({
 bool relay1, bool relay2, double? temperature, double? tempSensor, String? updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? relay1 = null,Object? relay2 = null,Object? temperature = freezed,Object? tempSensor = freezed,Object? updatedAt = freezed,}) {
  return _then(_DeviceTelemetryEntity(
relay1: null == relay1 ? _self.relay1 : relay1 // ignore: cast_nullable_to_non_nullable
as bool,relay2: null == relay2 ? _self.relay2 : relay2 // ignore: cast_nullable_to_non_nullable
as bool,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,tempSensor: freezed == tempSensor ? _self.tempSensor : tempSensor // ignore: cast_nullable_to_non_nullable
as double?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
