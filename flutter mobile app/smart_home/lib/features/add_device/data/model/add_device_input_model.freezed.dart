// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_device_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddDeviceInputModel {

 String get deviceName; String get room; String get homeWifiSsid; String get homeWifiPassword; String get homeId;
/// Create a copy of AddDeviceInputModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddDeviceInputModelCopyWith<AddDeviceInputModel> get copyWith => _$AddDeviceInputModelCopyWithImpl<AddDeviceInputModel>(this as AddDeviceInputModel, _$identity);

  /// Serializes this AddDeviceInputModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDeviceInputModel&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.room, room) || other.room == room)&&(identical(other.homeWifiSsid, homeWifiSsid) || other.homeWifiSsid == homeWifiSsid)&&(identical(other.homeWifiPassword, homeWifiPassword) || other.homeWifiPassword == homeWifiPassword)&&(identical(other.homeId, homeId) || other.homeId == homeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceName,room,homeWifiSsid,homeWifiPassword,homeId);

@override
String toString() {
  return 'AddDeviceInputModel(deviceName: $deviceName, room: $room, homeWifiSsid: $homeWifiSsid, homeWifiPassword: $homeWifiPassword, homeId: $homeId)';
}


}

/// @nodoc
abstract mixin class $AddDeviceInputModelCopyWith<$Res>  {
  factory $AddDeviceInputModelCopyWith(AddDeviceInputModel value, $Res Function(AddDeviceInputModel) _then) = _$AddDeviceInputModelCopyWithImpl;
@useResult
$Res call({
 String deviceName, String room, String homeWifiSsid, String homeWifiPassword, String homeId
});




}
/// @nodoc
class _$AddDeviceInputModelCopyWithImpl<$Res>
    implements $AddDeviceInputModelCopyWith<$Res> {
  _$AddDeviceInputModelCopyWithImpl(this._self, this._then);

  final AddDeviceInputModel _self;
  final $Res Function(AddDeviceInputModel) _then;

/// Create a copy of AddDeviceInputModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceName = null,Object? room = null,Object? homeWifiSsid = null,Object? homeWifiPassword = null,Object? homeId = null,}) {
  return _then(_self.copyWith(
deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String,homeWifiSsid: null == homeWifiSsid ? _self.homeWifiSsid : homeWifiSsid // ignore: cast_nullable_to_non_nullable
as String,homeWifiPassword: null == homeWifiPassword ? _self.homeWifiPassword : homeWifiPassword // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddDeviceInputModel].
extension AddDeviceInputModelPatterns on AddDeviceInputModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddDeviceInputModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddDeviceInputModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddDeviceInputModel value)  $default,){
final _that = this;
switch (_that) {
case _AddDeviceInputModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddDeviceInputModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddDeviceInputModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String deviceName,  String room,  String homeWifiSsid,  String homeWifiPassword,  String homeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddDeviceInputModel() when $default != null:
return $default(_that.deviceName,_that.room,_that.homeWifiSsid,_that.homeWifiPassword,_that.homeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String deviceName,  String room,  String homeWifiSsid,  String homeWifiPassword,  String homeId)  $default,) {final _that = this;
switch (_that) {
case _AddDeviceInputModel():
return $default(_that.deviceName,_that.room,_that.homeWifiSsid,_that.homeWifiPassword,_that.homeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String deviceName,  String room,  String homeWifiSsid,  String homeWifiPassword,  String homeId)?  $default,) {final _that = this;
switch (_that) {
case _AddDeviceInputModel() when $default != null:
return $default(_that.deviceName,_that.room,_that.homeWifiSsid,_that.homeWifiPassword,_that.homeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddDeviceInputModel implements AddDeviceInputModel {
  const _AddDeviceInputModel({this.deviceName = '', this.room = '', this.homeWifiSsid = '', this.homeWifiPassword = '', this.homeId = ''});
  factory _AddDeviceInputModel.fromJson(Map<String, dynamic> json) => _$AddDeviceInputModelFromJson(json);

@override@JsonKey() final  String deviceName;
@override@JsonKey() final  String room;
@override@JsonKey() final  String homeWifiSsid;
@override@JsonKey() final  String homeWifiPassword;
@override@JsonKey() final  String homeId;

/// Create a copy of AddDeviceInputModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddDeviceInputModelCopyWith<_AddDeviceInputModel> get copyWith => __$AddDeviceInputModelCopyWithImpl<_AddDeviceInputModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddDeviceInputModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddDeviceInputModel&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.room, room) || other.room == room)&&(identical(other.homeWifiSsid, homeWifiSsid) || other.homeWifiSsid == homeWifiSsid)&&(identical(other.homeWifiPassword, homeWifiPassword) || other.homeWifiPassword == homeWifiPassword)&&(identical(other.homeId, homeId) || other.homeId == homeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceName,room,homeWifiSsid,homeWifiPassword,homeId);

@override
String toString() {
  return 'AddDeviceInputModel(deviceName: $deviceName, room: $room, homeWifiSsid: $homeWifiSsid, homeWifiPassword: $homeWifiPassword, homeId: $homeId)';
}


}

/// @nodoc
abstract mixin class _$AddDeviceInputModelCopyWith<$Res> implements $AddDeviceInputModelCopyWith<$Res> {
  factory _$AddDeviceInputModelCopyWith(_AddDeviceInputModel value, $Res Function(_AddDeviceInputModel) _then) = __$AddDeviceInputModelCopyWithImpl;
@override @useResult
$Res call({
 String deviceName, String room, String homeWifiSsid, String homeWifiPassword, String homeId
});




}
/// @nodoc
class __$AddDeviceInputModelCopyWithImpl<$Res>
    implements _$AddDeviceInputModelCopyWith<$Res> {
  __$AddDeviceInputModelCopyWithImpl(this._self, this._then);

  final _AddDeviceInputModel _self;
  final $Res Function(_AddDeviceInputModel) _then;

/// Create a copy of AddDeviceInputModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceName = null,Object? room = null,Object? homeWifiSsid = null,Object? homeWifiPassword = null,Object? homeId = null,}) {
  return _then(_AddDeviceInputModel(
deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String,homeWifiSsid: null == homeWifiSsid ? _self.homeWifiSsid : homeWifiSsid // ignore: cast_nullable_to_non_nullable
as String,homeWifiPassword: null == homeWifiPassword ? _self.homeWifiPassword : homeWifiPassword // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
