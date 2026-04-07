// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceEntity {

 String get id; String get name; String get type; String get room; String get homeId; String get homeName; String get deviceMacAddress; RulesEntity? get rules; DeviceStatusEnum get status; List<DeviceComponentEntity> get components;
/// Create a copy of DeviceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceEntityCopyWith<DeviceEntity> get copyWith => _$DeviceEntityCopyWithImpl<DeviceEntity>(this as DeviceEntity, _$identity);

  /// Serializes this DeviceEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.room, room) || other.room == room)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.homeName, homeName) || other.homeName == homeName)&&(identical(other.deviceMacAddress, deviceMacAddress) || other.deviceMacAddress == deviceMacAddress)&&(identical(other.rules, rules) || other.rules == rules)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.components, components));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,room,homeId,homeName,deviceMacAddress,rules,status,const DeepCollectionEquality().hash(components));

@override
String toString() {
  return 'DeviceEntity(id: $id, name: $name, type: $type, room: $room, homeId: $homeId, homeName: $homeName, deviceMacAddress: $deviceMacAddress, rules: $rules, status: $status, components: $components)';
}


}

/// @nodoc
abstract mixin class $DeviceEntityCopyWith<$Res>  {
  factory $DeviceEntityCopyWith(DeviceEntity value, $Res Function(DeviceEntity) _then) = _$DeviceEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, String room, String homeId, String homeName, String deviceMacAddress, RulesEntity? rules, DeviceStatusEnum status, List<DeviceComponentEntity> components
});


$RulesEntityCopyWith<$Res>? get rules;

}
/// @nodoc
class _$DeviceEntityCopyWithImpl<$Res>
    implements $DeviceEntityCopyWith<$Res> {
  _$DeviceEntityCopyWithImpl(this._self, this._then);

  final DeviceEntity _self;
  final $Res Function(DeviceEntity) _then;

/// Create a copy of DeviceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? room = null,Object? homeId = null,Object? homeName = null,Object? deviceMacAddress = null,Object? rules = freezed,Object? status = null,Object? components = null,}) {
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
as List<DeviceComponentEntity>,
  ));
}
/// Create a copy of DeviceEntity
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
}
}


/// Adds pattern-matching-related methods to [DeviceEntity].
extension DeviceEntityPatterns on DeviceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceEntity value)  $default,){
final _that = this;
switch (_that) {
case _DeviceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String room,  String homeId,  String homeName,  String deviceMacAddress,  RulesEntity? rules,  DeviceStatusEnum status,  List<DeviceComponentEntity> components)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceEntity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.room,_that.homeId,_that.homeName,_that.deviceMacAddress,_that.rules,_that.status,_that.components);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String room,  String homeId,  String homeName,  String deviceMacAddress,  RulesEntity? rules,  DeviceStatusEnum status,  List<DeviceComponentEntity> components)  $default,) {final _that = this;
switch (_that) {
case _DeviceEntity():
return $default(_that.id,_that.name,_that.type,_that.room,_that.homeId,_that.homeName,_that.deviceMacAddress,_that.rules,_that.status,_that.components);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  String room,  String homeId,  String homeName,  String deviceMacAddress,  RulesEntity? rules,  DeviceStatusEnum status,  List<DeviceComponentEntity> components)?  $default,) {final _that = this;
switch (_that) {
case _DeviceEntity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.room,_that.homeId,_that.homeName,_that.deviceMacAddress,_that.rules,_that.status,_that.components);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceEntity implements DeviceEntity {
  const _DeviceEntity({this.id = "", this.name = "", this.type = "", this.room = "", this.homeId = "", this.homeName = "", this.deviceMacAddress = "", this.rules, this.status = DeviceStatusEnum.offline, final  List<DeviceComponentEntity> components = const []}): _components = components;
  factory _DeviceEntity.fromJson(Map<String, dynamic> json) => _$DeviceEntityFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String type;
@override@JsonKey() final  String room;
@override@JsonKey() final  String homeId;
@override@JsonKey() final  String homeName;
@override@JsonKey() final  String deviceMacAddress;
@override final  RulesEntity? rules;
@override@JsonKey() final  DeviceStatusEnum status;
 final  List<DeviceComponentEntity> _components;
@override@JsonKey() List<DeviceComponentEntity> get components {
  if (_components is EqualUnmodifiableListView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_components);
}


/// Create a copy of DeviceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceEntityCopyWith<_DeviceEntity> get copyWith => __$DeviceEntityCopyWithImpl<_DeviceEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.room, room) || other.room == room)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.homeName, homeName) || other.homeName == homeName)&&(identical(other.deviceMacAddress, deviceMacAddress) || other.deviceMacAddress == deviceMacAddress)&&(identical(other.rules, rules) || other.rules == rules)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._components, _components));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,room,homeId,homeName,deviceMacAddress,rules,status,const DeepCollectionEquality().hash(_components));

@override
String toString() {
  return 'DeviceEntity(id: $id, name: $name, type: $type, room: $room, homeId: $homeId, homeName: $homeName, deviceMacAddress: $deviceMacAddress, rules: $rules, status: $status, components: $components)';
}


}

/// @nodoc
abstract mixin class _$DeviceEntityCopyWith<$Res> implements $DeviceEntityCopyWith<$Res> {
  factory _$DeviceEntityCopyWith(_DeviceEntity value, $Res Function(_DeviceEntity) _then) = __$DeviceEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, String room, String homeId, String homeName, String deviceMacAddress, RulesEntity? rules, DeviceStatusEnum status, List<DeviceComponentEntity> components
});


@override $RulesEntityCopyWith<$Res>? get rules;

}
/// @nodoc
class __$DeviceEntityCopyWithImpl<$Res>
    implements _$DeviceEntityCopyWith<$Res> {
  __$DeviceEntityCopyWithImpl(this._self, this._then);

  final _DeviceEntity _self;
  final $Res Function(_DeviceEntity) _then;

/// Create a copy of DeviceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? room = null,Object? homeId = null,Object? homeName = null,Object? deviceMacAddress = null,Object? rules = freezed,Object? status = null,Object? components = null,}) {
  return _then(_DeviceEntity(
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
as List<DeviceComponentEntity>,
  ));
}

/// Create a copy of DeviceEntity
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
}
}

// dart format on
