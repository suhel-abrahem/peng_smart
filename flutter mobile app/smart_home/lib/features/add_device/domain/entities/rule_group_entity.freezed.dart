// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rule_group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RuleGroupEntity {

 String get id; String get name; bool get enabled; List<RuleEntity> get rules; List<ActionLinkEntity> get actions;
/// Create a copy of RuleGroupEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RuleGroupEntityCopyWith<RuleGroupEntity> get copyWith => _$RuleGroupEntityCopyWithImpl<RuleGroupEntity>(this as RuleGroupEntity, _$identity);

  /// Serializes this RuleGroupEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RuleGroupEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.rules, rules)&&const DeepCollectionEquality().equals(other.actions, actions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,enabled,const DeepCollectionEquality().hash(rules),const DeepCollectionEquality().hash(actions));

@override
String toString() {
  return 'RuleGroupEntity(id: $id, name: $name, enabled: $enabled, rules: $rules, actions: $actions)';
}


}

/// @nodoc
abstract mixin class $RuleGroupEntityCopyWith<$Res>  {
  factory $RuleGroupEntityCopyWith(RuleGroupEntity value, $Res Function(RuleGroupEntity) _then) = _$RuleGroupEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool enabled, List<RuleEntity> rules, List<ActionLinkEntity> actions
});




}
/// @nodoc
class _$RuleGroupEntityCopyWithImpl<$Res>
    implements $RuleGroupEntityCopyWith<$Res> {
  _$RuleGroupEntityCopyWithImpl(this._self, this._then);

  final RuleGroupEntity _self;
  final $Res Function(RuleGroupEntity) _then;

/// Create a copy of RuleGroupEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? enabled = null,Object? rules = null,Object? actions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,rules: null == rules ? _self.rules : rules // ignore: cast_nullable_to_non_nullable
as List<RuleEntity>,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<ActionLinkEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [RuleGroupEntity].
extension RuleGroupEntityPatterns on RuleGroupEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RuleGroupEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RuleGroupEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RuleGroupEntity value)  $default,){
final _that = this;
switch (_that) {
case _RuleGroupEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RuleGroupEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RuleGroupEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool enabled,  List<RuleEntity> rules,  List<ActionLinkEntity> actions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RuleGroupEntity() when $default != null:
return $default(_that.id,_that.name,_that.enabled,_that.rules,_that.actions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool enabled,  List<RuleEntity> rules,  List<ActionLinkEntity> actions)  $default,) {final _that = this;
switch (_that) {
case _RuleGroupEntity():
return $default(_that.id,_that.name,_that.enabled,_that.rules,_that.actions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool enabled,  List<RuleEntity> rules,  List<ActionLinkEntity> actions)?  $default,) {final _that = this;
switch (_that) {
case _RuleGroupEntity() when $default != null:
return $default(_that.id,_that.name,_that.enabled,_that.rules,_that.actions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RuleGroupEntity implements RuleGroupEntity {
  const _RuleGroupEntity({this.id = "", this.name = "", this.enabled = false, final  List<RuleEntity> rules = const [], final  List<ActionLinkEntity> actions = const []}): _rules = rules,_actions = actions;
  factory _RuleGroupEntity.fromJson(Map<String, dynamic> json) => _$RuleGroupEntityFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  bool enabled;
 final  List<RuleEntity> _rules;
@override@JsonKey() List<RuleEntity> get rules {
  if (_rules is EqualUnmodifiableListView) return _rules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rules);
}

 final  List<ActionLinkEntity> _actions;
@override@JsonKey() List<ActionLinkEntity> get actions {
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actions);
}


/// Create a copy of RuleGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RuleGroupEntityCopyWith<_RuleGroupEntity> get copyWith => __$RuleGroupEntityCopyWithImpl<_RuleGroupEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RuleGroupEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RuleGroupEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._rules, _rules)&&const DeepCollectionEquality().equals(other._actions, _actions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,enabled,const DeepCollectionEquality().hash(_rules),const DeepCollectionEquality().hash(_actions));

@override
String toString() {
  return 'RuleGroupEntity(id: $id, name: $name, enabled: $enabled, rules: $rules, actions: $actions)';
}


}

/// @nodoc
abstract mixin class _$RuleGroupEntityCopyWith<$Res> implements $RuleGroupEntityCopyWith<$Res> {
  factory _$RuleGroupEntityCopyWith(_RuleGroupEntity value, $Res Function(_RuleGroupEntity) _then) = __$RuleGroupEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool enabled, List<RuleEntity> rules, List<ActionLinkEntity> actions
});




}
/// @nodoc
class __$RuleGroupEntityCopyWithImpl<$Res>
    implements _$RuleGroupEntityCopyWith<$Res> {
  __$RuleGroupEntityCopyWithImpl(this._self, this._then);

  final _RuleGroupEntity _self;
  final $Res Function(_RuleGroupEntity) _then;

/// Create a copy of RuleGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? enabled = null,Object? rules = null,Object? actions = null,}) {
  return _then(_RuleGroupEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,rules: null == rules ? _self._rules : rules // ignore: cast_nullable_to_non_nullable
as List<RuleEntity>,actions: null == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<ActionLinkEntity>,
  ));
}


}

// dart format on
