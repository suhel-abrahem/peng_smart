// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rules_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RulesEntity {

 List<RuleGroupEntity>? get groups;
/// Create a copy of RulesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RulesEntityCopyWith<RulesEntity> get copyWith => _$RulesEntityCopyWithImpl<RulesEntity>(this as RulesEntity, _$identity);

  /// Serializes this RulesEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RulesEntity&&const DeepCollectionEquality().equals(other.groups, groups));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(groups));

@override
String toString() {
  return 'RulesEntity(groups: $groups)';
}


}

/// @nodoc
abstract mixin class $RulesEntityCopyWith<$Res>  {
  factory $RulesEntityCopyWith(RulesEntity value, $Res Function(RulesEntity) _then) = _$RulesEntityCopyWithImpl;
@useResult
$Res call({
 List<RuleGroupEntity>? groups
});




}
/// @nodoc
class _$RulesEntityCopyWithImpl<$Res>
    implements $RulesEntityCopyWith<$Res> {
  _$RulesEntityCopyWithImpl(this._self, this._then);

  final RulesEntity _self;
  final $Res Function(RulesEntity) _then;

/// Create a copy of RulesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groups = freezed,}) {
  return _then(_self.copyWith(
groups: freezed == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<RuleGroupEntity>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RulesEntity].
extension RulesEntityPatterns on RulesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RulesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RulesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RulesEntity value)  $default,){
final _that = this;
switch (_that) {
case _RulesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RulesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RulesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RuleGroupEntity>? groups)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RulesEntity() when $default != null:
return $default(_that.groups);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RuleGroupEntity>? groups)  $default,) {final _that = this;
switch (_that) {
case _RulesEntity():
return $default(_that.groups);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RuleGroupEntity>? groups)?  $default,) {final _that = this;
switch (_that) {
case _RulesEntity() when $default != null:
return $default(_that.groups);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RulesEntity implements RulesEntity {
  const _RulesEntity({final  List<RuleGroupEntity>? groups = const []}): _groups = groups;
  factory _RulesEntity.fromJson(Map<String, dynamic> json) => _$RulesEntityFromJson(json);

 final  List<RuleGroupEntity>? _groups;
@override@JsonKey() List<RuleGroupEntity>? get groups {
  final value = _groups;
  if (value == null) return null;
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RulesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RulesEntityCopyWith<_RulesEntity> get copyWith => __$RulesEntityCopyWithImpl<_RulesEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RulesEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RulesEntity&&const DeepCollectionEquality().equals(other._groups, _groups));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_groups));

@override
String toString() {
  return 'RulesEntity(groups: $groups)';
}


}

/// @nodoc
abstract mixin class _$RulesEntityCopyWith<$Res> implements $RulesEntityCopyWith<$Res> {
  factory _$RulesEntityCopyWith(_RulesEntity value, $Res Function(_RulesEntity) _then) = __$RulesEntityCopyWithImpl;
@override @useResult
$Res call({
 List<RuleGroupEntity>? groups
});




}
/// @nodoc
class __$RulesEntityCopyWithImpl<$Res>
    implements _$RulesEntityCopyWith<$Res> {
  __$RulesEntityCopyWithImpl(this._self, this._then);

  final _RulesEntity _self;
  final $Res Function(_RulesEntity) _then;

/// Create a copy of RulesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groups = freezed,}) {
  return _then(_RulesEntity(
groups: freezed == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<RuleGroupEntity>?,
  ));
}


}

// dart format on
