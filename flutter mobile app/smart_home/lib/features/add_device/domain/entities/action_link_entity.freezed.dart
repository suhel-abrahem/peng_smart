// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_link_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActionLinkEntity {

 String get id; String get name; String get targetDeviceId; String get targetDeviceName; String get targetComponentId;// relay1, relay2, pumpRelay
 ActionEnum get action;
/// Create a copy of ActionLinkEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionLinkEntityCopyWith<ActionLinkEntity> get copyWith => _$ActionLinkEntityCopyWithImpl<ActionLinkEntity>(this as ActionLinkEntity, _$identity);

  /// Serializes this ActionLinkEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionLinkEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.targetDeviceId, targetDeviceId) || other.targetDeviceId == targetDeviceId)&&(identical(other.targetDeviceName, targetDeviceName) || other.targetDeviceName == targetDeviceName)&&(identical(other.targetComponentId, targetComponentId) || other.targetComponentId == targetComponentId)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,targetDeviceId,targetDeviceName,targetComponentId,action);

@override
String toString() {
  return 'ActionLinkEntity(id: $id, name: $name, targetDeviceId: $targetDeviceId, targetDeviceName: $targetDeviceName, targetComponentId: $targetComponentId, action: $action)';
}


}

/// @nodoc
abstract mixin class $ActionLinkEntityCopyWith<$Res>  {
  factory $ActionLinkEntityCopyWith(ActionLinkEntity value, $Res Function(ActionLinkEntity) _then) = _$ActionLinkEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String targetDeviceId, String targetDeviceName, String targetComponentId, ActionEnum action
});




}
/// @nodoc
class _$ActionLinkEntityCopyWithImpl<$Res>
    implements $ActionLinkEntityCopyWith<$Res> {
  _$ActionLinkEntityCopyWithImpl(this._self, this._then);

  final ActionLinkEntity _self;
  final $Res Function(ActionLinkEntity) _then;

/// Create a copy of ActionLinkEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? targetDeviceId = null,Object? targetDeviceName = null,Object? targetComponentId = null,Object? action = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,targetDeviceId: null == targetDeviceId ? _self.targetDeviceId : targetDeviceId // ignore: cast_nullable_to_non_nullable
as String,targetDeviceName: null == targetDeviceName ? _self.targetDeviceName : targetDeviceName // ignore: cast_nullable_to_non_nullable
as String,targetComponentId: null == targetComponentId ? _self.targetComponentId : targetComponentId // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [ActionLinkEntity].
extension ActionLinkEntityPatterns on ActionLinkEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActionLinkEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActionLinkEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActionLinkEntity value)  $default,){
final _that = this;
switch (_that) {
case _ActionLinkEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActionLinkEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ActionLinkEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String targetDeviceId,  String targetDeviceName,  String targetComponentId,  ActionEnum action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActionLinkEntity() when $default != null:
return $default(_that.id,_that.name,_that.targetDeviceId,_that.targetDeviceName,_that.targetComponentId,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String targetDeviceId,  String targetDeviceName,  String targetComponentId,  ActionEnum action)  $default,) {final _that = this;
switch (_that) {
case _ActionLinkEntity():
return $default(_that.id,_that.name,_that.targetDeviceId,_that.targetDeviceName,_that.targetComponentId,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String targetDeviceId,  String targetDeviceName,  String targetComponentId,  ActionEnum action)?  $default,) {final _that = this;
switch (_that) {
case _ActionLinkEntity() when $default != null:
return $default(_that.id,_that.name,_that.targetDeviceId,_that.targetDeviceName,_that.targetComponentId,_that.action);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActionLinkEntity implements ActionLinkEntity {
  const _ActionLinkEntity({this.id = "", this.name = "", this.targetDeviceId = "", this.targetDeviceName = "", this.targetComponentId = "", required this.action});
  factory _ActionLinkEntity.fromJson(Map<String, dynamic> json) => _$ActionLinkEntityFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String targetDeviceId;
@override@JsonKey() final  String targetDeviceName;
@override@JsonKey() final  String targetComponentId;
// relay1, relay2, pumpRelay
@override final  ActionEnum action;

/// Create a copy of ActionLinkEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionLinkEntityCopyWith<_ActionLinkEntity> get copyWith => __$ActionLinkEntityCopyWithImpl<_ActionLinkEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionLinkEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionLinkEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.targetDeviceId, targetDeviceId) || other.targetDeviceId == targetDeviceId)&&(identical(other.targetDeviceName, targetDeviceName) || other.targetDeviceName == targetDeviceName)&&(identical(other.targetComponentId, targetComponentId) || other.targetComponentId == targetComponentId)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,targetDeviceId,targetDeviceName,targetComponentId,action);

@override
String toString() {
  return 'ActionLinkEntity(id: $id, name: $name, targetDeviceId: $targetDeviceId, targetDeviceName: $targetDeviceName, targetComponentId: $targetComponentId, action: $action)';
}


}

/// @nodoc
abstract mixin class _$ActionLinkEntityCopyWith<$Res> implements $ActionLinkEntityCopyWith<$Res> {
  factory _$ActionLinkEntityCopyWith(_ActionLinkEntity value, $Res Function(_ActionLinkEntity) _then) = __$ActionLinkEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String targetDeviceId, String targetDeviceName, String targetComponentId, ActionEnum action
});




}
/// @nodoc
class __$ActionLinkEntityCopyWithImpl<$Res>
    implements _$ActionLinkEntityCopyWith<$Res> {
  __$ActionLinkEntityCopyWithImpl(this._self, this._then);

  final _ActionLinkEntity _self;
  final $Res Function(_ActionLinkEntity) _then;

/// Create a copy of ActionLinkEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? targetDeviceId = null,Object? targetDeviceName = null,Object? targetComponentId = null,Object? action = null,}) {
  return _then(_ActionLinkEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,targetDeviceId: null == targetDeviceId ? _self.targetDeviceId : targetDeviceId // ignore: cast_nullable_to_non_nullable
as String,targetDeviceName: null == targetDeviceName ? _self.targetDeviceName : targetDeviceName // ignore: cast_nullable_to_non_nullable
as String,targetComponentId: null == targetComponentId ? _self.targetComponentId : targetComponentId // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionEnum,
  ));
}


}

// dart format on
