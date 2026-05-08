// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'override_device_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OverrideDeviceActionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverrideDeviceActionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverrideDeviceActionEvent()';
}


}

/// @nodoc
class $OverrideDeviceActionEventCopyWith<$Res>  {
$OverrideDeviceActionEventCopyWith(OverrideDeviceActionEvent _, $Res Function(OverrideDeviceActionEvent) __);
}


/// Adds pattern-matching-related methods to [OverrideDeviceActionEvent].
extension OverrideDeviceActionEventPatterns on OverrideDeviceActionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Override value)?  override,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Override() when override != null:
return override(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Override value)  override,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Override():
return override(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Override value)?  override,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Override() when override != null:
return override(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String deviceId,  ActionLinkEntity actions)?  override,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Override() when override != null:
return override(_that.deviceId,_that.actions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String deviceId,  ActionLinkEntity actions)  override,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Override():
return override(_that.deviceId,_that.actions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String deviceId,  ActionLinkEntity actions)?  override,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Override() when override != null:
return override(_that.deviceId,_that.actions);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements OverrideDeviceActionEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverrideDeviceActionEvent.started()';
}


}




/// @nodoc


class _Override implements OverrideDeviceActionEvent {
  const _Override({required this.deviceId, required this.actions});
  

 final  String deviceId;
 final  ActionLinkEntity actions;

/// Create a copy of OverrideDeviceActionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverrideCopyWith<_Override> get copyWith => __$OverrideCopyWithImpl<_Override>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Override&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.actions, actions) || other.actions == actions));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId,actions);

@override
String toString() {
  return 'OverrideDeviceActionEvent.override(deviceId: $deviceId, actions: $actions)';
}


}

/// @nodoc
abstract mixin class _$OverrideCopyWith<$Res> implements $OverrideDeviceActionEventCopyWith<$Res> {
  factory _$OverrideCopyWith(_Override value, $Res Function(_Override) _then) = __$OverrideCopyWithImpl;
@useResult
$Res call({
 String deviceId, ActionLinkEntity actions
});


$ActionLinkEntityCopyWith<$Res> get actions;

}
/// @nodoc
class __$OverrideCopyWithImpl<$Res>
    implements _$OverrideCopyWith<$Res> {
  __$OverrideCopyWithImpl(this._self, this._then);

  final _Override _self;
  final $Res Function(_Override) _then;

/// Create a copy of OverrideDeviceActionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? actions = null,}) {
  return _then(_Override(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as ActionLinkEntity,
  ));
}

/// Create a copy of OverrideDeviceActionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionLinkEntityCopyWith<$Res> get actions {
  
  return $ActionLinkEntityCopyWith<$Res>(_self.actions, (value) {
    return _then(_self.copyWith(actions: value));
  });
}
}

/// @nodoc
mixin _$OverrideDeviceActionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverrideDeviceActionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverrideDeviceActionState()';
}


}

/// @nodoc
class $OverrideDeviceActionStateCopyWith<$Res>  {
$OverrideDeviceActionStateCopyWith(OverrideDeviceActionState _, $Res Function(OverrideDeviceActionState) __);
}


/// Adds pattern-matching-related methods to [OverrideDeviceActionState].
extension OverrideDeviceActionStatePatterns on OverrideDeviceActionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Overriding value)?  overriding,TResult Function( _Overridden value)?  overridden,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Overriding() when overriding != null:
return overriding(_that);case _Overridden() when overridden != null:
return overridden(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Overriding value)  overriding,required TResult Function( _Overridden value)  overridden,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Overriding():
return overriding(_that);case _Overridden():
return overridden(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Overriding value)?  overriding,TResult? Function( _Overridden value)?  overridden,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Overriding() when overriding != null:
return overriding(_that);case _Overridden() when overridden != null:
return overridden(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  overriding,TResult Function()?  overridden,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Overriding() when overriding != null:
return overriding();case _Overridden() when overridden != null:
return overridden();case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  overriding,required TResult Function()  overridden,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Overriding():
return overriding();case _Overridden():
return overridden();case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  overriding,TResult? Function()?  overridden,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Overriding() when overriding != null:
return overriding();case _Overridden() when overridden != null:
return overridden();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OverrideDeviceActionState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverrideDeviceActionState.initial()';
}


}




/// @nodoc


class _Overriding implements OverrideDeviceActionState {
  const _Overriding();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Overriding);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverrideDeviceActionState.overriding()';
}


}




/// @nodoc


class _Overridden implements OverrideDeviceActionState {
  const _Overridden();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Overridden);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverrideDeviceActionState.overridden()';
}


}




/// @nodoc


class _Error implements OverrideDeviceActionState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of OverrideDeviceActionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OverrideDeviceActionState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $OverrideDeviceActionStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of OverrideDeviceActionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
