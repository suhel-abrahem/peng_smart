// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_rules_groups_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteRulesGroupsModel {

 String get deviceId; String get groupId;
/// Create a copy of DeleteRulesGroupsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteRulesGroupsModelCopyWith<DeleteRulesGroupsModel> get copyWith => _$DeleteRulesGroupsModelCopyWithImpl<DeleteRulesGroupsModel>(this as DeleteRulesGroupsModel, _$identity);

  /// Serializes this DeleteRulesGroupsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteRulesGroupsModel&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.groupId, groupId) || other.groupId == groupId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,groupId);

@override
String toString() {
  return 'DeleteRulesGroupsModel(deviceId: $deviceId, groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class $DeleteRulesGroupsModelCopyWith<$Res>  {
  factory $DeleteRulesGroupsModelCopyWith(DeleteRulesGroupsModel value, $Res Function(DeleteRulesGroupsModel) _then) = _$DeleteRulesGroupsModelCopyWithImpl;
@useResult
$Res call({
 String deviceId, String groupId
});




}
/// @nodoc
class _$DeleteRulesGroupsModelCopyWithImpl<$Res>
    implements $DeleteRulesGroupsModelCopyWith<$Res> {
  _$DeleteRulesGroupsModelCopyWithImpl(this._self, this._then);

  final DeleteRulesGroupsModel _self;
  final $Res Function(DeleteRulesGroupsModel) _then;

/// Create a copy of DeleteRulesGroupsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? groupId = null,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteRulesGroupsModel].
extension DeleteRulesGroupsModelPatterns on DeleteRulesGroupsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteRulesGroupsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteRulesGroupsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteRulesGroupsModel value)  $default,){
final _that = this;
switch (_that) {
case _DeleteRulesGroupsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteRulesGroupsModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteRulesGroupsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String deviceId,  String groupId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteRulesGroupsModel() when $default != null:
return $default(_that.deviceId,_that.groupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String deviceId,  String groupId)  $default,) {final _that = this;
switch (_that) {
case _DeleteRulesGroupsModel():
return $default(_that.deviceId,_that.groupId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String deviceId,  String groupId)?  $default,) {final _that = this;
switch (_that) {
case _DeleteRulesGroupsModel() when $default != null:
return $default(_that.deviceId,_that.groupId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteRulesGroupsModel implements DeleteRulesGroupsModel {
  const _DeleteRulesGroupsModel({this.deviceId = "", this.groupId = ""});
  factory _DeleteRulesGroupsModel.fromJson(Map<String, dynamic> json) => _$DeleteRulesGroupsModelFromJson(json);

@override@JsonKey() final  String deviceId;
@override@JsonKey() final  String groupId;

/// Create a copy of DeleteRulesGroupsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteRulesGroupsModelCopyWith<_DeleteRulesGroupsModel> get copyWith => __$DeleteRulesGroupsModelCopyWithImpl<_DeleteRulesGroupsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteRulesGroupsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteRulesGroupsModel&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.groupId, groupId) || other.groupId == groupId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,groupId);

@override
String toString() {
  return 'DeleteRulesGroupsModel(deviceId: $deviceId, groupId: $groupId)';
}


}

/// @nodoc
abstract mixin class _$DeleteRulesGroupsModelCopyWith<$Res> implements $DeleteRulesGroupsModelCopyWith<$Res> {
  factory _$DeleteRulesGroupsModelCopyWith(_DeleteRulesGroupsModel value, $Res Function(_DeleteRulesGroupsModel) _then) = __$DeleteRulesGroupsModelCopyWithImpl;
@override @useResult
$Res call({
 String deviceId, String groupId
});




}
/// @nodoc
class __$DeleteRulesGroupsModelCopyWithImpl<$Res>
    implements _$DeleteRulesGroupsModelCopyWith<$Res> {
  __$DeleteRulesGroupsModelCopyWithImpl(this._self, this._then);

  final _DeleteRulesGroupsModel _self;
  final $Res Function(_DeleteRulesGroupsModel) _then;

/// Create a copy of DeleteRulesGroupsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? groupId = null,}) {
  return _then(_DeleteRulesGroupsModel(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
