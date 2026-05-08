// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heater_session_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HeaterSessionEntity {

 String get id; String get startTime;// example: 06:30
 String get endTime;// example: 07:00
 int get relay1Minutes; int get relay2Minutes; List get days; bool get enabled;
/// Create a copy of HeaterSessionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaterSessionEntityCopyWith<HeaterSessionEntity> get copyWith => _$HeaterSessionEntityCopyWithImpl<HeaterSessionEntity>(this as HeaterSessionEntity, _$identity);

  /// Serializes this HeaterSessionEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaterSessionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.relay1Minutes, relay1Minutes) || other.relay1Minutes == relay1Minutes)&&(identical(other.relay2Minutes, relay2Minutes) || other.relay2Minutes == relay2Minutes)&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startTime,endTime,relay1Minutes,relay2Minutes,const DeepCollectionEquality().hash(days),enabled);

@override
String toString() {
  return 'HeaterSessionEntity(id: $id, startTime: $startTime, endTime: $endTime, relay1Minutes: $relay1Minutes, relay2Minutes: $relay2Minutes, days: $days, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $HeaterSessionEntityCopyWith<$Res>  {
  factory $HeaterSessionEntityCopyWith(HeaterSessionEntity value, $Res Function(HeaterSessionEntity) _then) = _$HeaterSessionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String startTime, String endTime, int relay1Minutes, int relay2Minutes, List days, bool enabled
});




}
/// @nodoc
class _$HeaterSessionEntityCopyWithImpl<$Res>
    implements $HeaterSessionEntityCopyWith<$Res> {
  _$HeaterSessionEntityCopyWithImpl(this._self, this._then);

  final HeaterSessionEntity _self;
  final $Res Function(HeaterSessionEntity) _then;

/// Create a copy of HeaterSessionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? startTime = null,Object? endTime = null,Object? relay1Minutes = null,Object? relay2Minutes = null,Object? days = null,Object? enabled = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,relay1Minutes: null == relay1Minutes ? _self.relay1Minutes : relay1Minutes // ignore: cast_nullable_to_non_nullable
as int,relay2Minutes: null == relay2Minutes ? _self.relay2Minutes : relay2Minutes // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HeaterSessionEntity].
extension HeaterSessionEntityPatterns on HeaterSessionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeaterSessionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeaterSessionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeaterSessionEntity value)  $default,){
final _that = this;
switch (_that) {
case _HeaterSessionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeaterSessionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HeaterSessionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String startTime,  String endTime,  int relay1Minutes,  int relay2Minutes,  List days,  bool enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeaterSessionEntity() when $default != null:
return $default(_that.id,_that.startTime,_that.endTime,_that.relay1Minutes,_that.relay2Minutes,_that.days,_that.enabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String startTime,  String endTime,  int relay1Minutes,  int relay2Minutes,  List days,  bool enabled)  $default,) {final _that = this;
switch (_that) {
case _HeaterSessionEntity():
return $default(_that.id,_that.startTime,_that.endTime,_that.relay1Minutes,_that.relay2Minutes,_that.days,_that.enabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String startTime,  String endTime,  int relay1Minutes,  int relay2Minutes,  List days,  bool enabled)?  $default,) {final _that = this;
switch (_that) {
case _HeaterSessionEntity() when $default != null:
return $default(_that.id,_that.startTime,_that.endTime,_that.relay1Minutes,_that.relay2Minutes,_that.days,_that.enabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeaterSessionEntity implements HeaterSessionEntity {
  const _HeaterSessionEntity({this.id = '', this.startTime = '', this.endTime = '', this.relay1Minutes = 0, this.relay2Minutes = 0, final  List days = const [], this.enabled = true}): _days = days;
  factory _HeaterSessionEntity.fromJson(Map<String, dynamic> json) => _$HeaterSessionEntityFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String startTime;
// example: 06:30
@override@JsonKey() final  String endTime;
// example: 07:00
@override@JsonKey() final  int relay1Minutes;
@override@JsonKey() final  int relay2Minutes;
 final  List _days;
@override@JsonKey() List get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

@override@JsonKey() final  bool enabled;

/// Create a copy of HeaterSessionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaterSessionEntityCopyWith<_HeaterSessionEntity> get copyWith => __$HeaterSessionEntityCopyWithImpl<_HeaterSessionEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeaterSessionEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeaterSessionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.relay1Minutes, relay1Minutes) || other.relay1Minutes == relay1Minutes)&&(identical(other.relay2Minutes, relay2Minutes) || other.relay2Minutes == relay2Minutes)&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startTime,endTime,relay1Minutes,relay2Minutes,const DeepCollectionEquality().hash(_days),enabled);

@override
String toString() {
  return 'HeaterSessionEntity(id: $id, startTime: $startTime, endTime: $endTime, relay1Minutes: $relay1Minutes, relay2Minutes: $relay2Minutes, days: $days, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$HeaterSessionEntityCopyWith<$Res> implements $HeaterSessionEntityCopyWith<$Res> {
  factory _$HeaterSessionEntityCopyWith(_HeaterSessionEntity value, $Res Function(_HeaterSessionEntity) _then) = __$HeaterSessionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String startTime, String endTime, int relay1Minutes, int relay2Minutes, List days, bool enabled
});




}
/// @nodoc
class __$HeaterSessionEntityCopyWithImpl<$Res>
    implements _$HeaterSessionEntityCopyWith<$Res> {
  __$HeaterSessionEntityCopyWithImpl(this._self, this._then);

  final _HeaterSessionEntity _self;
  final $Res Function(_HeaterSessionEntity) _then;

/// Create a copy of HeaterSessionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? startTime = null,Object? endTime = null,Object? relay1Minutes = null,Object? relay2Minutes = null,Object? days = null,Object? enabled = null,}) {
  return _then(_HeaterSessionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,relay1Minutes: null == relay1Minutes ? _self.relay1Minutes : relay1Minutes // ignore: cast_nullable_to_non_nullable
as int,relay2Minutes: null == relay2Minutes ? _self.relay2Minutes : relay2Minutes // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
