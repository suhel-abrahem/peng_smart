// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_room_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateRoomInputModel {

 String get name; String get homeId;
/// Create a copy of CreateRoomInputModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateRoomInputModelCopyWith<CreateRoomInputModel> get copyWith => _$CreateRoomInputModelCopyWithImpl<CreateRoomInputModel>(this as CreateRoomInputModel, _$identity);

  /// Serializes this CreateRoomInputModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateRoomInputModel&&(identical(other.name, name) || other.name == name)&&(identical(other.homeId, homeId) || other.homeId == homeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,homeId);

@override
String toString() {
  return 'CreateRoomInputModel(name: $name, homeId: $homeId)';
}


}

/// @nodoc
abstract mixin class $CreateRoomInputModelCopyWith<$Res>  {
  factory $CreateRoomInputModelCopyWith(CreateRoomInputModel value, $Res Function(CreateRoomInputModel) _then) = _$CreateRoomInputModelCopyWithImpl;
@useResult
$Res call({
 String name, String homeId
});




}
/// @nodoc
class _$CreateRoomInputModelCopyWithImpl<$Res>
    implements $CreateRoomInputModelCopyWith<$Res> {
  _$CreateRoomInputModelCopyWithImpl(this._self, this._then);

  final CreateRoomInputModel _self;
  final $Res Function(CreateRoomInputModel) _then;

/// Create a copy of CreateRoomInputModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? homeId = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateRoomInputModel].
extension CreateRoomInputModelPatterns on CreateRoomInputModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateRoomInputModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateRoomInputModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateRoomInputModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateRoomInputModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateRoomInputModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateRoomInputModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String homeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateRoomInputModel() when $default != null:
return $default(_that.name,_that.homeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String homeId)  $default,) {final _that = this;
switch (_that) {
case _CreateRoomInputModel():
return $default(_that.name,_that.homeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String homeId)?  $default,) {final _that = this;
switch (_that) {
case _CreateRoomInputModel() when $default != null:
return $default(_that.name,_that.homeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateRoomInputModel implements CreateRoomInputModel {
  const _CreateRoomInputModel({this.name = '', this.homeId = ''});
  factory _CreateRoomInputModel.fromJson(Map<String, dynamic> json) => _$CreateRoomInputModelFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  String homeId;

/// Create a copy of CreateRoomInputModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateRoomInputModelCopyWith<_CreateRoomInputModel> get copyWith => __$CreateRoomInputModelCopyWithImpl<_CreateRoomInputModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateRoomInputModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateRoomInputModel&&(identical(other.name, name) || other.name == name)&&(identical(other.homeId, homeId) || other.homeId == homeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,homeId);

@override
String toString() {
  return 'CreateRoomInputModel(name: $name, homeId: $homeId)';
}


}

/// @nodoc
abstract mixin class _$CreateRoomInputModelCopyWith<$Res> implements $CreateRoomInputModelCopyWith<$Res> {
  factory _$CreateRoomInputModelCopyWith(_CreateRoomInputModel value, $Res Function(_CreateRoomInputModel) _then) = __$CreateRoomInputModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String homeId
});




}
/// @nodoc
class __$CreateRoomInputModelCopyWithImpl<$Res>
    implements _$CreateRoomInputModelCopyWith<$Res> {
  __$CreateRoomInputModelCopyWithImpl(this._self, this._then);

  final _CreateRoomInputModel _self;
  final $Res Function(_CreateRoomInputModel) _then;

/// Create a copy of CreateRoomInputModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? homeId = null,}) {
  return _then(_CreateRoomInputModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
