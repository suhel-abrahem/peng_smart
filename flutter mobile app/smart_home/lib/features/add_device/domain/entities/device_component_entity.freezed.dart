// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_component_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceComponentEntity {

 String get id;// relay1, relay2, tempSensor
 String get name; String get type;// relay, temperatureSensor
 bool get isOn; String? get currentValue;
/// Create a copy of DeviceComponentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceComponentEntityCopyWith<DeviceComponentEntity> get copyWith => _$DeviceComponentEntityCopyWithImpl<DeviceComponentEntity>(this as DeviceComponentEntity, _$identity);

  /// Serializes this DeviceComponentEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceComponentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.isOn, isOn) || other.isOn == isOn)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,isOn,currentValue);

@override
String toString() {
  return 'DeviceComponentEntity(id: $id, name: $name, type: $type, isOn: $isOn, currentValue: $currentValue)';
}


}

/// @nodoc
abstract mixin class $DeviceComponentEntityCopyWith<$Res>  {
  factory $DeviceComponentEntityCopyWith(DeviceComponentEntity value, $Res Function(DeviceComponentEntity) _then) = _$DeviceComponentEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, bool isOn, String? currentValue
});




}
/// @nodoc
class _$DeviceComponentEntityCopyWithImpl<$Res>
    implements $DeviceComponentEntityCopyWith<$Res> {
  _$DeviceComponentEntityCopyWithImpl(this._self, this._then);

  final DeviceComponentEntity _self;
  final $Res Function(DeviceComponentEntity) _then;

/// Create a copy of DeviceComponentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? isOn = null,Object? currentValue = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isOn: null == isOn ? _self.isOn : isOn // ignore: cast_nullable_to_non_nullable
as bool,currentValue: freezed == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceComponentEntity].
extension DeviceComponentEntityPatterns on DeviceComponentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceComponentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceComponentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceComponentEntity value)  $default,){
final _that = this;
switch (_that) {
case _DeviceComponentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceComponentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceComponentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  bool isOn,  String? currentValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceComponentEntity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.isOn,_that.currentValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  bool isOn,  String? currentValue)  $default,) {final _that = this;
switch (_that) {
case _DeviceComponentEntity():
return $default(_that.id,_that.name,_that.type,_that.isOn,_that.currentValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  bool isOn,  String? currentValue)?  $default,) {final _that = this;
switch (_that) {
case _DeviceComponentEntity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.isOn,_that.currentValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceComponentEntity implements DeviceComponentEntity {
  const _DeviceComponentEntity({this.id = '', this.name = '', this.type = '', this.isOn = false, this.currentValue});
  factory _DeviceComponentEntity.fromJson(Map<String, dynamic> json) => _$DeviceComponentEntityFromJson(json);

@override@JsonKey() final  String id;
// relay1, relay2, tempSensor
@override@JsonKey() final  String name;
@override@JsonKey() final  String type;
// relay, temperatureSensor
@override@JsonKey() final  bool isOn;
@override final  String? currentValue;

/// Create a copy of DeviceComponentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceComponentEntityCopyWith<_DeviceComponentEntity> get copyWith => __$DeviceComponentEntityCopyWithImpl<_DeviceComponentEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceComponentEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceComponentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.isOn, isOn) || other.isOn == isOn)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,isOn,currentValue);

@override
String toString() {
  return 'DeviceComponentEntity(id: $id, name: $name, type: $type, isOn: $isOn, currentValue: $currentValue)';
}


}

/// @nodoc
abstract mixin class _$DeviceComponentEntityCopyWith<$Res> implements $DeviceComponentEntityCopyWith<$Res> {
  factory _$DeviceComponentEntityCopyWith(_DeviceComponentEntity value, $Res Function(_DeviceComponentEntity) _then) = __$DeviceComponentEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, bool isOn, String? currentValue
});




}
/// @nodoc
class __$DeviceComponentEntityCopyWithImpl<$Res>
    implements _$DeviceComponentEntityCopyWith<$Res> {
  __$DeviceComponentEntityCopyWithImpl(this._self, this._then);

  final _DeviceComponentEntity _self;
  final $Res Function(_DeviceComponentEntity) _then;

/// Create a copy of DeviceComponentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? isOn = null,Object? currentValue = freezed,}) {
  return _then(_DeviceComponentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isOn: null == isOn ? _self.isOn : isOn // ignore: cast_nullable_to_non_nullable
as bool,currentValue: freezed == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
