// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceModel {

 String get id; String get name; String get type;@JsonKey(readValue: _readRoomName) String get room; String get homeId; String get homeName;@JsonKey(name: 'macAddress') String get deviceMacAddress;@JsonKey(name: 'rulesJson') RulesEntity? get rules; DeviceStatusEnum get status;@JsonKey(name: 'componentsJson') List<DeviceComponentEntity> get components;@JsonKey(name: 'lastTelemetryJson') DeviceTelemetryEntity? get telemetry;
/// Create a copy of DeviceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceModelCopyWith<DeviceModel> get copyWith => _$DeviceModelCopyWithImpl<DeviceModel>(this as DeviceModel, _$identity);

  /// Serializes this DeviceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.room, room) || other.room == room)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.homeName, homeName) || other.homeName == homeName)&&(identical(other.deviceMacAddress, deviceMacAddress) || other.deviceMacAddress == deviceMacAddress)&&(identical(other.rules, rules) || other.rules == rules)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.components, components)&&(identical(other.telemetry, telemetry) || other.telemetry == telemetry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,room,homeId,homeName,deviceMacAddress,rules,status,const DeepCollectionEquality().hash(components),telemetry);

@override
String toString() {
  return 'DeviceModel(id: $id, name: $name, type: $type, room: $room, homeId: $homeId, homeName: $homeName, deviceMacAddress: $deviceMacAddress, rules: $rules, status: $status, components: $components, telemetry: $telemetry)';
}


}

/// @nodoc
abstract mixin class $DeviceModelCopyWith<$Res>  {
  factory $DeviceModelCopyWith(DeviceModel value, $Res Function(DeviceModel) _then) = _$DeviceModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type,@JsonKey(readValue: _readRoomName) String room, String homeId, String homeName,@JsonKey(name: 'macAddress') String deviceMacAddress,@JsonKey(name: 'rulesJson') RulesEntity? rules, DeviceStatusEnum status,@JsonKey(name: 'componentsJson') List<DeviceComponentEntity> components,@JsonKey(name: 'lastTelemetryJson') DeviceTelemetryEntity? telemetry
});


$RulesEntityCopyWith<$Res>? get rules;$DeviceTelemetryEntityCopyWith<$Res>? get telemetry;

}
/// @nodoc
class _$DeviceModelCopyWithImpl<$Res>
    implements $DeviceModelCopyWith<$Res> {
  _$DeviceModelCopyWithImpl(this._self, this._then);

  final DeviceModel _self;
  final $Res Function(DeviceModel) _then;

/// Create a copy of DeviceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? room = null,Object? homeId = null,Object? homeName = null,Object? deviceMacAddress = null,Object? rules = freezed,Object? status = null,Object? components = null,Object? telemetry = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,homeName: null == homeName ? _self.homeName : homeName // ignore: cast_nullable_to_non_nullable
as String,deviceMacAddress: null == deviceMacAddress ? _self.deviceMacAddress : deviceMacAddress // ignore: cast_nullable_to_non_nullable
as String,rules: freezed == rules ? _self.rules : rules // ignore: cast_nullable_to_non_nullable
as RulesEntity?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatusEnum,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as List<DeviceComponentEntity>,telemetry: freezed == telemetry ? _self.telemetry : telemetry // ignore: cast_nullable_to_non_nullable
as DeviceTelemetryEntity?,
  ));
}
/// Create a copy of DeviceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RulesEntityCopyWith<$Res>? get rules {
    if (_self.rules == null) {
    return null;
  }

  return $RulesEntityCopyWith<$Res>(_self.rules!, (value) {
    return _then(_self.copyWith(rules: value));
  });
}/// Create a copy of DeviceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceTelemetryEntityCopyWith<$Res>? get telemetry {
    if (_self.telemetry == null) {
    return null;
  }

  return $DeviceTelemetryEntityCopyWith<$Res>(_self.telemetry!, (value) {
    return _then(_self.copyWith(telemetry: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeviceModel].
extension DeviceModelPatterns on DeviceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceModel value)  $default,){
final _that = this;
switch (_that) {
case _DeviceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type, @JsonKey(readValue: _readRoomName)  String room,  String homeId,  String homeName, @JsonKey(name: 'macAddress')  String deviceMacAddress, @JsonKey(name: 'rulesJson')  RulesEntity? rules,  DeviceStatusEnum status, @JsonKey(name: 'componentsJson')  List<DeviceComponentEntity> components, @JsonKey(name: 'lastTelemetryJson')  DeviceTelemetryEntity? telemetry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.room,_that.homeId,_that.homeName,_that.deviceMacAddress,_that.rules,_that.status,_that.components,_that.telemetry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type, @JsonKey(readValue: _readRoomName)  String room,  String homeId,  String homeName, @JsonKey(name: 'macAddress')  String deviceMacAddress, @JsonKey(name: 'rulesJson')  RulesEntity? rules,  DeviceStatusEnum status, @JsonKey(name: 'componentsJson')  List<DeviceComponentEntity> components, @JsonKey(name: 'lastTelemetryJson')  DeviceTelemetryEntity? telemetry)  $default,) {final _that = this;
switch (_that) {
case _DeviceModel():
return $default(_that.id,_that.name,_that.type,_that.room,_that.homeId,_that.homeName,_that.deviceMacAddress,_that.rules,_that.status,_that.components,_that.telemetry);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type, @JsonKey(readValue: _readRoomName)  String room,  String homeId,  String homeName, @JsonKey(name: 'macAddress')  String deviceMacAddress, @JsonKey(name: 'rulesJson')  RulesEntity? rules,  DeviceStatusEnum status, @JsonKey(name: 'componentsJson')  List<DeviceComponentEntity> components, @JsonKey(name: 'lastTelemetryJson')  DeviceTelemetryEntity? telemetry)?  $default,) {final _that = this;
switch (_that) {
case _DeviceModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.room,_that.homeId,_that.homeName,_that.deviceMacAddress,_that.rules,_that.status,_that.components,_that.telemetry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceModel implements DeviceModel {
  const _DeviceModel({this.id = '', this.name = '', this.type = '', @JsonKey(readValue: _readRoomName) this.room = '', this.homeId = '', this.homeName = '', @JsonKey(name: 'macAddress') this.deviceMacAddress = '', @JsonKey(name: 'rulesJson') this.rules, this.status = DeviceStatusEnum.offline, @JsonKey(name: 'componentsJson') final  List<DeviceComponentEntity> components = const [], @JsonKey(name: 'lastTelemetryJson') this.telemetry}): _components = components;
  factory _DeviceModel.fromJson(Map<String, dynamic> json) => _$DeviceModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String type;
@override@JsonKey(readValue: _readRoomName) final  String room;
@override@JsonKey() final  String homeId;
@override@JsonKey() final  String homeName;
@override@JsonKey(name: 'macAddress') final  String deviceMacAddress;
@override@JsonKey(name: 'rulesJson') final  RulesEntity? rules;
@override@JsonKey() final  DeviceStatusEnum status;
 final  List<DeviceComponentEntity> _components;
@override@JsonKey(name: 'componentsJson') List<DeviceComponentEntity> get components {
  if (_components is EqualUnmodifiableListView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_components);
}

@override@JsonKey(name: 'lastTelemetryJson') final  DeviceTelemetryEntity? telemetry;

/// Create a copy of DeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceModelCopyWith<_DeviceModel> get copyWith => __$DeviceModelCopyWithImpl<_DeviceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.room, room) || other.room == room)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.homeName, homeName) || other.homeName == homeName)&&(identical(other.deviceMacAddress, deviceMacAddress) || other.deviceMacAddress == deviceMacAddress)&&(identical(other.rules, rules) || other.rules == rules)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._components, _components)&&(identical(other.telemetry, telemetry) || other.telemetry == telemetry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,room,homeId,homeName,deviceMacAddress,rules,status,const DeepCollectionEquality().hash(_components),telemetry);

@override
String toString() {
  return 'DeviceModel(id: $id, name: $name, type: $type, room: $room, homeId: $homeId, homeName: $homeName, deviceMacAddress: $deviceMacAddress, rules: $rules, status: $status, components: $components, telemetry: $telemetry)';
}


}

/// @nodoc
abstract mixin class _$DeviceModelCopyWith<$Res> implements $DeviceModelCopyWith<$Res> {
  factory _$DeviceModelCopyWith(_DeviceModel value, $Res Function(_DeviceModel) _then) = __$DeviceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type,@JsonKey(readValue: _readRoomName) String room, String homeId, String homeName,@JsonKey(name: 'macAddress') String deviceMacAddress,@JsonKey(name: 'rulesJson') RulesEntity? rules, DeviceStatusEnum status,@JsonKey(name: 'componentsJson') List<DeviceComponentEntity> components,@JsonKey(name: 'lastTelemetryJson') DeviceTelemetryEntity? telemetry
});


@override $RulesEntityCopyWith<$Res>? get rules;@override $DeviceTelemetryEntityCopyWith<$Res>? get telemetry;

}
/// @nodoc
class __$DeviceModelCopyWithImpl<$Res>
    implements _$DeviceModelCopyWith<$Res> {
  __$DeviceModelCopyWithImpl(this._self, this._then);

  final _DeviceModel _self;
  final $Res Function(_DeviceModel) _then;

/// Create a copy of DeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? room = null,Object? homeId = null,Object? homeName = null,Object? deviceMacAddress = null,Object? rules = freezed,Object? status = null,Object? components = null,Object? telemetry = freezed,}) {
  return _then(_DeviceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,homeName: null == homeName ? _self.homeName : homeName // ignore: cast_nullable_to_non_nullable
as String,deviceMacAddress: null == deviceMacAddress ? _self.deviceMacAddress : deviceMacAddress // ignore: cast_nullable_to_non_nullable
as String,rules: freezed == rules ? _self.rules : rules // ignore: cast_nullable_to_non_nullable
as RulesEntity?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatusEnum,components: null == components ? _self._components : components // ignore: cast_nullable_to_non_nullable
as List<DeviceComponentEntity>,telemetry: freezed == telemetry ? _self.telemetry : telemetry // ignore: cast_nullable_to_non_nullable
as DeviceTelemetryEntity?,
  ));
}

/// Create a copy of DeviceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RulesEntityCopyWith<$Res>? get rules {
    if (_self.rules == null) {
    return null;
  }

  return $RulesEntityCopyWith<$Res>(_self.rules!, (value) {
    return _then(_self.copyWith(rules: value));
  });
}/// Create a copy of DeviceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceTelemetryEntityCopyWith<$Res>? get telemetry {
    if (_self.telemetry == null) {
    return null;
  }

  return $DeviceTelemetryEntityCopyWith<$Res>(_self.telemetry!, (value) {
    return _then(_self.copyWith(telemetry: value));
  });
}
}

// dart format on
