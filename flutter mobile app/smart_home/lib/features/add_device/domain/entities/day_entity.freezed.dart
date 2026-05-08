// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DayEntity {

 String get name; bool get selected;
/// Create a copy of DayEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayEntityCopyWith<DayEntity> get copyWith => _$DayEntityCopyWithImpl<DayEntity>(this as DayEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,name,selected);

@override
String toString() {
  return 'DayEntity(name: $name, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $DayEntityCopyWith<$Res>  {
  factory $DayEntityCopyWith(DayEntity value, $Res Function(DayEntity) _then) = _$DayEntityCopyWithImpl;
@useResult
$Res call({
 String name, bool selected
});




}
/// @nodoc
class _$DayEntityCopyWithImpl<$Res>
    implements $DayEntityCopyWith<$Res> {
  _$DayEntityCopyWithImpl(this._self, this._then);

  final DayEntity _self;
  final $Res Function(DayEntity) _then;

/// Create a copy of DayEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? selected = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DayEntity].
extension DayEntityPatterns on DayEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayEntity value)  $default,){
final _that = this;
switch (_that) {
case _DayEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DayEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  bool selected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayEntity() when $default != null:
return $default(_that.name,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  bool selected)  $default,) {final _that = this;
switch (_that) {
case _DayEntity():
return $default(_that.name,_that.selected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  bool selected)?  $default,) {final _that = this;
switch (_that) {
case _DayEntity() when $default != null:
return $default(_that.name,_that.selected);case _:
  return null;

}
}

}

/// @nodoc


class _DayEntity implements DayEntity {
  const _DayEntity({this.name = '', this.selected = false});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  bool selected;

/// Create a copy of DayEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayEntityCopyWith<_DayEntity> get copyWith => __$DayEntityCopyWithImpl<_DayEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,name,selected);

@override
String toString() {
  return 'DayEntity(name: $name, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$DayEntityCopyWith<$Res> implements $DayEntityCopyWith<$Res> {
  factory _$DayEntityCopyWith(_DayEntity value, $Res Function(_DayEntity) _then) = __$DayEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, bool selected
});




}
/// @nodoc
class __$DayEntityCopyWithImpl<$Res>
    implements _$DayEntityCopyWith<$Res> {
  __$DayEntityCopyWithImpl(this._self, this._then);

  final _DayEntity _self;
  final $Res Function(_DayEntity) _then;

/// Create a copy of DayEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? selected = null,}) {
  return _then(_DayEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
