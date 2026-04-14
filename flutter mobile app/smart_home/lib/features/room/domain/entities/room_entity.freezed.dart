// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomEntity {

 String get id; String get name; String get homeId; String get createdAt;
/// Create a copy of RoomEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomEntityCopyWith<RoomEntity> get copyWith => _$RoomEntityCopyWithImpl<RoomEntity>(this as RoomEntity, _$identity);

  /// Serializes this RoomEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,homeId,createdAt);

@override
String toString() {
  return 'RoomEntity(id: $id, name: $name, homeId: $homeId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RoomEntityCopyWith<$Res>  {
  factory $RoomEntityCopyWith(RoomEntity value, $Res Function(RoomEntity) _then) = _$RoomEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String homeId, String createdAt
});




}
/// @nodoc
class _$RoomEntityCopyWithImpl<$Res>
    implements $RoomEntityCopyWith<$Res> {
  _$RoomEntityCopyWithImpl(this._self, this._then);

  final RoomEntity _self;
  final $Res Function(RoomEntity) _then;

/// Create a copy of RoomEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? homeId = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomEntity].
extension RoomEntityPatterns on RoomEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomEntity value)  $default,){
final _that = this;
switch (_that) {
case _RoomEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RoomEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String homeId,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomEntity() when $default != null:
return $default(_that.id,_that.name,_that.homeId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String homeId,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _RoomEntity():
return $default(_that.id,_that.name,_that.homeId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String homeId,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RoomEntity() when $default != null:
return $default(_that.id,_that.name,_that.homeId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomEntity implements RoomEntity {
  const _RoomEntity({this.id = '', this.name = '', this.homeId = '', this.createdAt = ''});
  factory _RoomEntity.fromJson(Map<String, dynamic> json) => _$RoomEntityFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String homeId;
@override@JsonKey() final  String createdAt;

/// Create a copy of RoomEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomEntityCopyWith<_RoomEntity> get copyWith => __$RoomEntityCopyWithImpl<_RoomEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,homeId,createdAt);

@override
String toString() {
  return 'RoomEntity(id: $id, name: $name, homeId: $homeId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RoomEntityCopyWith<$Res> implements $RoomEntityCopyWith<$Res> {
  factory _$RoomEntityCopyWith(_RoomEntity value, $Res Function(_RoomEntity) _then) = __$RoomEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String homeId, String createdAt
});




}
/// @nodoc
class __$RoomEntityCopyWithImpl<$Res>
    implements _$RoomEntityCopyWith<$Res> {
  __$RoomEntityCopyWithImpl(this._self, this._then);

  final _RoomEntity _self;
  final $Res Function(_RoomEntity) _then;

/// Create a copy of RoomEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? homeId = null,Object? createdAt = null,}) {
  return _then(_RoomEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
