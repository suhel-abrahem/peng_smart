// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_device_rules_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateDeviceRulesParams {

 String get deviceId; RulesEntity get rules;
/// Create a copy of UpdateDeviceRulesParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDeviceRulesParamsCopyWith<UpdateDeviceRulesParams> get copyWith => _$UpdateDeviceRulesParamsCopyWithImpl<UpdateDeviceRulesParams>(this as UpdateDeviceRulesParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDeviceRulesParams&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.rules, rules) || other.rules == rules));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId,rules);

@override
String toString() {
  return 'UpdateDeviceRulesParams(deviceId: $deviceId, rules: $rules)';
}


}

/// @nodoc
abstract mixin class $UpdateDeviceRulesParamsCopyWith<$Res>  {
  factory $UpdateDeviceRulesParamsCopyWith(UpdateDeviceRulesParams value, $Res Function(UpdateDeviceRulesParams) _then) = _$UpdateDeviceRulesParamsCopyWithImpl;
@useResult
$Res call({
 String deviceId, RulesEntity rules
});


$RulesEntityCopyWith<$Res> get rules;

}
/// @nodoc
class _$UpdateDeviceRulesParamsCopyWithImpl<$Res>
    implements $UpdateDeviceRulesParamsCopyWith<$Res> {
  _$UpdateDeviceRulesParamsCopyWithImpl(this._self, this._then);

  final UpdateDeviceRulesParams _self;
  final $Res Function(UpdateDeviceRulesParams) _then;

/// Create a copy of UpdateDeviceRulesParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? rules = null,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,rules: null == rules ? _self.rules : rules // ignore: cast_nullable_to_non_nullable
as RulesEntity,
  ));
}
/// Create a copy of UpdateDeviceRulesParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RulesEntityCopyWith<$Res> get rules {
  
  return $RulesEntityCopyWith<$Res>(_self.rules, (value) {
    return _then(_self.copyWith(rules: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateDeviceRulesParams].
extension UpdateDeviceRulesParamsPatterns on UpdateDeviceRulesParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDeviceRulesParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDeviceRulesParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDeviceRulesParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDeviceRulesParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDeviceRulesParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDeviceRulesParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String deviceId,  RulesEntity rules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDeviceRulesParams() when $default != null:
return $default(_that.deviceId,_that.rules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String deviceId,  RulesEntity rules)  $default,) {final _that = this;
switch (_that) {
case _UpdateDeviceRulesParams():
return $default(_that.deviceId,_that.rules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String deviceId,  RulesEntity rules)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDeviceRulesParams() when $default != null:
return $default(_that.deviceId,_that.rules);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateDeviceRulesParams implements UpdateDeviceRulesParams {
  const _UpdateDeviceRulesParams({required this.deviceId, required this.rules});
  

@override final  String deviceId;
@override final  RulesEntity rules;

/// Create a copy of UpdateDeviceRulesParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDeviceRulesParamsCopyWith<_UpdateDeviceRulesParams> get copyWith => __$UpdateDeviceRulesParamsCopyWithImpl<_UpdateDeviceRulesParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDeviceRulesParams&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.rules, rules) || other.rules == rules));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId,rules);

@override
String toString() {
  return 'UpdateDeviceRulesParams(deviceId: $deviceId, rules: $rules)';
}


}

/// @nodoc
abstract mixin class _$UpdateDeviceRulesParamsCopyWith<$Res> implements $UpdateDeviceRulesParamsCopyWith<$Res> {
  factory _$UpdateDeviceRulesParamsCopyWith(_UpdateDeviceRulesParams value, $Res Function(_UpdateDeviceRulesParams) _then) = __$UpdateDeviceRulesParamsCopyWithImpl;
@override @useResult
$Res call({
 String deviceId, RulesEntity rules
});


@override $RulesEntityCopyWith<$Res> get rules;

}
/// @nodoc
class __$UpdateDeviceRulesParamsCopyWithImpl<$Res>
    implements _$UpdateDeviceRulesParamsCopyWith<$Res> {
  __$UpdateDeviceRulesParamsCopyWithImpl(this._self, this._then);

  final _UpdateDeviceRulesParams _self;
  final $Res Function(_UpdateDeviceRulesParams) _then;

/// Create a copy of UpdateDeviceRulesParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? rules = null,}) {
  return _then(_UpdateDeviceRulesParams(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,rules: null == rules ? _self.rules : rules // ignore: cast_nullable_to_non_nullable
as RulesEntity,
  ));
}

/// Create a copy of UpdateDeviceRulesParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RulesEntityCopyWith<$Res> get rules {
  
  return $RulesEntityCopyWith<$Res>(_self.rules, (value) {
    return _then(_self.copyWith(rules: value));
  });
}
}

// dart format on
