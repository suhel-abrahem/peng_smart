// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RuleEntity {

 String get id; String get name; NextRuleConditionEnum? get conditionForNextRule; bool get enabled; String? get activeFrom; String? get activeTo; ActionLinkEntity? get actionLink; ActionEnum get action; String get value; RuleConditionEnum get condition;
/// Create a copy of RuleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RuleEntityCopyWith<RuleEntity> get copyWith => _$RuleEntityCopyWithImpl<RuleEntity>(this as RuleEntity, _$identity);

  /// Serializes this RuleEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RuleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.conditionForNextRule, conditionForNextRule) || other.conditionForNextRule == conditionForNextRule)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.activeFrom, activeFrom) || other.activeFrom == activeFrom)&&(identical(other.activeTo, activeTo) || other.activeTo == activeTo)&&(identical(other.actionLink, actionLink) || other.actionLink == actionLink)&&(identical(other.action, action) || other.action == action)&&(identical(other.value, value) || other.value == value)&&(identical(other.condition, condition) || other.condition == condition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,conditionForNextRule,enabled,activeFrom,activeTo,actionLink,action,value,condition);

@override
String toString() {
  return 'RuleEntity(id: $id, name: $name, conditionForNextRule: $conditionForNextRule, enabled: $enabled, activeFrom: $activeFrom, activeTo: $activeTo, actionLink: $actionLink, action: $action, value: $value, condition: $condition)';
}


}

/// @nodoc
abstract mixin class $RuleEntityCopyWith<$Res>  {
  factory $RuleEntityCopyWith(RuleEntity value, $Res Function(RuleEntity) _then) = _$RuleEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, NextRuleConditionEnum? conditionForNextRule, bool enabled, String? activeFrom, String? activeTo, ActionLinkEntity? actionLink, ActionEnum action, String value, RuleConditionEnum condition
});


$ActionLinkEntityCopyWith<$Res>? get actionLink;

}
/// @nodoc
class _$RuleEntityCopyWithImpl<$Res>
    implements $RuleEntityCopyWith<$Res> {
  _$RuleEntityCopyWithImpl(this._self, this._then);

  final RuleEntity _self;
  final $Res Function(RuleEntity) _then;

/// Create a copy of RuleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? conditionForNextRule = freezed,Object? enabled = null,Object? activeFrom = freezed,Object? activeTo = freezed,Object? actionLink = freezed,Object? action = null,Object? value = null,Object? condition = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,conditionForNextRule: freezed == conditionForNextRule ? _self.conditionForNextRule : conditionForNextRule // ignore: cast_nullable_to_non_nullable
as NextRuleConditionEnum?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,activeFrom: freezed == activeFrom ? _self.activeFrom : activeFrom // ignore: cast_nullable_to_non_nullable
as String?,activeTo: freezed == activeTo ? _self.activeTo : activeTo // ignore: cast_nullable_to_non_nullable
as String?,actionLink: freezed == actionLink ? _self.actionLink : actionLink // ignore: cast_nullable_to_non_nullable
as ActionLinkEntity?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionEnum,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as RuleConditionEnum,
  ));
}
/// Create a copy of RuleEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionLinkEntityCopyWith<$Res>? get actionLink {
    if (_self.actionLink == null) {
    return null;
  }

  return $ActionLinkEntityCopyWith<$Res>(_self.actionLink!, (value) {
    return _then(_self.copyWith(actionLink: value));
  });
}
}


/// Adds pattern-matching-related methods to [RuleEntity].
extension RuleEntityPatterns on RuleEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RuleEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RuleEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RuleEntity value)  $default,){
final _that = this;
switch (_that) {
case _RuleEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RuleEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RuleEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  NextRuleConditionEnum? conditionForNextRule,  bool enabled,  String? activeFrom,  String? activeTo,  ActionLinkEntity? actionLink,  ActionEnum action,  String value,  RuleConditionEnum condition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RuleEntity() when $default != null:
return $default(_that.id,_that.name,_that.conditionForNextRule,_that.enabled,_that.activeFrom,_that.activeTo,_that.actionLink,_that.action,_that.value,_that.condition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  NextRuleConditionEnum? conditionForNextRule,  bool enabled,  String? activeFrom,  String? activeTo,  ActionLinkEntity? actionLink,  ActionEnum action,  String value,  RuleConditionEnum condition)  $default,) {final _that = this;
switch (_that) {
case _RuleEntity():
return $default(_that.id,_that.name,_that.conditionForNextRule,_that.enabled,_that.activeFrom,_that.activeTo,_that.actionLink,_that.action,_that.value,_that.condition);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  NextRuleConditionEnum? conditionForNextRule,  bool enabled,  String? activeFrom,  String? activeTo,  ActionLinkEntity? actionLink,  ActionEnum action,  String value,  RuleConditionEnum condition)?  $default,) {final _that = this;
switch (_that) {
case _RuleEntity() when $default != null:
return $default(_that.id,_that.name,_that.conditionForNextRule,_that.enabled,_that.activeFrom,_that.activeTo,_that.actionLink,_that.action,_that.value,_that.condition);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RuleEntity implements RuleEntity {
  const _RuleEntity({this.id = "", this.name = "", this.conditionForNextRule, this.enabled = false, this.activeFrom, this.activeTo, this.actionLink, required this.action, required this.value, required this.condition});
  factory _RuleEntity.fromJson(Map<String, dynamic> json) => _$RuleEntityFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override final  NextRuleConditionEnum? conditionForNextRule;
@override@JsonKey() final  bool enabled;
@override final  String? activeFrom;
@override final  String? activeTo;
@override final  ActionLinkEntity? actionLink;
@override final  ActionEnum action;
@override final  String value;
@override final  RuleConditionEnum condition;

/// Create a copy of RuleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RuleEntityCopyWith<_RuleEntity> get copyWith => __$RuleEntityCopyWithImpl<_RuleEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RuleEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RuleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.conditionForNextRule, conditionForNextRule) || other.conditionForNextRule == conditionForNextRule)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.activeFrom, activeFrom) || other.activeFrom == activeFrom)&&(identical(other.activeTo, activeTo) || other.activeTo == activeTo)&&(identical(other.actionLink, actionLink) || other.actionLink == actionLink)&&(identical(other.action, action) || other.action == action)&&(identical(other.value, value) || other.value == value)&&(identical(other.condition, condition) || other.condition == condition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,conditionForNextRule,enabled,activeFrom,activeTo,actionLink,action,value,condition);

@override
String toString() {
  return 'RuleEntity(id: $id, name: $name, conditionForNextRule: $conditionForNextRule, enabled: $enabled, activeFrom: $activeFrom, activeTo: $activeTo, actionLink: $actionLink, action: $action, value: $value, condition: $condition)';
}


}

/// @nodoc
abstract mixin class _$RuleEntityCopyWith<$Res> implements $RuleEntityCopyWith<$Res> {
  factory _$RuleEntityCopyWith(_RuleEntity value, $Res Function(_RuleEntity) _then) = __$RuleEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, NextRuleConditionEnum? conditionForNextRule, bool enabled, String? activeFrom, String? activeTo, ActionLinkEntity? actionLink, ActionEnum action, String value, RuleConditionEnum condition
});


@override $ActionLinkEntityCopyWith<$Res>? get actionLink;

}
/// @nodoc
class __$RuleEntityCopyWithImpl<$Res>
    implements _$RuleEntityCopyWith<$Res> {
  __$RuleEntityCopyWithImpl(this._self, this._then);

  final _RuleEntity _self;
  final $Res Function(_RuleEntity) _then;

/// Create a copy of RuleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? conditionForNextRule = freezed,Object? enabled = null,Object? activeFrom = freezed,Object? activeTo = freezed,Object? actionLink = freezed,Object? action = null,Object? value = null,Object? condition = null,}) {
  return _then(_RuleEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,conditionForNextRule: freezed == conditionForNextRule ? _self.conditionForNextRule : conditionForNextRule // ignore: cast_nullable_to_non_nullable
as NextRuleConditionEnum?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,activeFrom: freezed == activeFrom ? _self.activeFrom : activeFrom // ignore: cast_nullable_to_non_nullable
as String?,activeTo: freezed == activeTo ? _self.activeTo : activeTo // ignore: cast_nullable_to_non_nullable
as String?,actionLink: freezed == actionLink ? _self.actionLink : actionLink // ignore: cast_nullable_to_non_nullable
as ActionLinkEntity?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionEnum,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as RuleConditionEnum,
  ));
}

/// Create a copy of RuleEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionLinkEntityCopyWith<$Res>? get actionLink {
    if (_self.actionLink == null) {
    return null;
  }

  return $ActionLinkEntityCopyWith<$Res>(_self.actionLink!, (value) {
    return _then(_self.copyWith(actionLink: value));
  });
}
}

// dart format on
