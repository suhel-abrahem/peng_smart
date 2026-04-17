// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heater_schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HeaterScheduleEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaterScheduleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HeaterScheduleEvent()';
}


}

/// @nodoc
class $HeaterScheduleEventCopyWith<$Res>  {
$HeaterScheduleEventCopyWith(HeaterScheduleEvent _, $Res Function(HeaterScheduleEvent) __);
}


/// Adds pattern-matching-related methods to [HeaterScheduleEvent].
extension HeaterScheduleEventPatterns on HeaterScheduleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SetSessionsEvent value)?  setSessions,TResult Function( SaveSessionsEvent value)?  saveSessions,TResult Function( LoadDeviceRulesEvent value)?  loadDeviceRules,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SetSessionsEvent() when setSessions != null:
return setSessions(_that);case SaveSessionsEvent() when saveSessions != null:
return saveSessions(_that);case LoadDeviceRulesEvent() when loadDeviceRules != null:
return loadDeviceRules(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SetSessionsEvent value)  setSessions,required TResult Function( SaveSessionsEvent value)  saveSessions,required TResult Function( LoadDeviceRulesEvent value)  loadDeviceRules,}){
final _that = this;
switch (_that) {
case SetSessionsEvent():
return setSessions(_that);case SaveSessionsEvent():
return saveSessions(_that);case LoadDeviceRulesEvent():
return loadDeviceRules(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SetSessionsEvent value)?  setSessions,TResult? Function( SaveSessionsEvent value)?  saveSessions,TResult? Function( LoadDeviceRulesEvent value)?  loadDeviceRules,}){
final _that = this;
switch (_that) {
case SetSessionsEvent() when setSessions != null:
return setSessions(_that);case SaveSessionsEvent() when saveSessions != null:
return saveSessions(_that);case LoadDeviceRulesEvent() when loadDeviceRules != null:
return loadDeviceRules(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<HeaterSessionEntity> sessions)?  setSessions,TResult Function( String deviceId,  List<HeaterSessionEntity> sessions)?  saveSessions,TResult Function( String deviceId)?  loadDeviceRules,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SetSessionsEvent() when setSessions != null:
return setSessions(_that.sessions);case SaveSessionsEvent() when saveSessions != null:
return saveSessions(_that.deviceId,_that.sessions);case LoadDeviceRulesEvent() when loadDeviceRules != null:
return loadDeviceRules(_that.deviceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<HeaterSessionEntity> sessions)  setSessions,required TResult Function( String deviceId,  List<HeaterSessionEntity> sessions)  saveSessions,required TResult Function( String deviceId)  loadDeviceRules,}) {final _that = this;
switch (_that) {
case SetSessionsEvent():
return setSessions(_that.sessions);case SaveSessionsEvent():
return saveSessions(_that.deviceId,_that.sessions);case LoadDeviceRulesEvent():
return loadDeviceRules(_that.deviceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<HeaterSessionEntity> sessions)?  setSessions,TResult? Function( String deviceId,  List<HeaterSessionEntity> sessions)?  saveSessions,TResult? Function( String deviceId)?  loadDeviceRules,}) {final _that = this;
switch (_that) {
case SetSessionsEvent() when setSessions != null:
return setSessions(_that.sessions);case SaveSessionsEvent() when saveSessions != null:
return saveSessions(_that.deviceId,_that.sessions);case LoadDeviceRulesEvent() when loadDeviceRules != null:
return loadDeviceRules(_that.deviceId);case _:
  return null;

}
}

}

/// @nodoc


class SetSessionsEvent implements HeaterScheduleEvent {
  const SetSessionsEvent({required final  List<HeaterSessionEntity> sessions}): _sessions = sessions;
  

 final  List<HeaterSessionEntity> _sessions;
 List<HeaterSessionEntity> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}


/// Create a copy of HeaterScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetSessionsEventCopyWith<SetSessionsEvent> get copyWith => _$SetSessionsEventCopyWithImpl<SetSessionsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetSessionsEvent&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'HeaterScheduleEvent.setSessions(sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $SetSessionsEventCopyWith<$Res> implements $HeaterScheduleEventCopyWith<$Res> {
  factory $SetSessionsEventCopyWith(SetSessionsEvent value, $Res Function(SetSessionsEvent) _then) = _$SetSessionsEventCopyWithImpl;
@useResult
$Res call({
 List<HeaterSessionEntity> sessions
});




}
/// @nodoc
class _$SetSessionsEventCopyWithImpl<$Res>
    implements $SetSessionsEventCopyWith<$Res> {
  _$SetSessionsEventCopyWithImpl(this._self, this._then);

  final SetSessionsEvent _self;
  final $Res Function(SetSessionsEvent) _then;

/// Create a copy of HeaterScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessions = null,}) {
  return _then(SetSessionsEvent(
sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<HeaterSessionEntity>,
  ));
}


}

/// @nodoc


class SaveSessionsEvent implements HeaterScheduleEvent {
  const SaveSessionsEvent({required this.deviceId, required final  List<HeaterSessionEntity> sessions}): _sessions = sessions;
  

 final  String deviceId;
 final  List<HeaterSessionEntity> _sessions;
 List<HeaterSessionEntity> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}


/// Create a copy of HeaterScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveSessionsEventCopyWith<SaveSessionsEvent> get copyWith => _$SaveSessionsEventCopyWithImpl<SaveSessionsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveSessionsEvent&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId,const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'HeaterScheduleEvent.saveSessions(deviceId: $deviceId, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $SaveSessionsEventCopyWith<$Res> implements $HeaterScheduleEventCopyWith<$Res> {
  factory $SaveSessionsEventCopyWith(SaveSessionsEvent value, $Res Function(SaveSessionsEvent) _then) = _$SaveSessionsEventCopyWithImpl;
@useResult
$Res call({
 String deviceId, List<HeaterSessionEntity> sessions
});




}
/// @nodoc
class _$SaveSessionsEventCopyWithImpl<$Res>
    implements $SaveSessionsEventCopyWith<$Res> {
  _$SaveSessionsEventCopyWithImpl(this._self, this._then);

  final SaveSessionsEvent _self;
  final $Res Function(SaveSessionsEvent) _then;

/// Create a copy of HeaterScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? sessions = null,}) {
  return _then(SaveSessionsEvent(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<HeaterSessionEntity>,
  ));
}


}

/// @nodoc


class LoadDeviceRulesEvent implements HeaterScheduleEvent {
  const LoadDeviceRulesEvent({required this.deviceId});
  

 final  String deviceId;

/// Create a copy of HeaterScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadDeviceRulesEventCopyWith<LoadDeviceRulesEvent> get copyWith => _$LoadDeviceRulesEventCopyWithImpl<LoadDeviceRulesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDeviceRulesEvent&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId);

@override
String toString() {
  return 'HeaterScheduleEvent.loadDeviceRules(deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $LoadDeviceRulesEventCopyWith<$Res> implements $HeaterScheduleEventCopyWith<$Res> {
  factory $LoadDeviceRulesEventCopyWith(LoadDeviceRulesEvent value, $Res Function(LoadDeviceRulesEvent) _then) = _$LoadDeviceRulesEventCopyWithImpl;
@useResult
$Res call({
 String deviceId
});




}
/// @nodoc
class _$LoadDeviceRulesEventCopyWithImpl<$Res>
    implements $LoadDeviceRulesEventCopyWith<$Res> {
  _$LoadDeviceRulesEventCopyWithImpl(this._self, this._then);

  final LoadDeviceRulesEvent _self;
  final $Res Function(LoadDeviceRulesEvent) _then;

/// Create a copy of HeaterScheduleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deviceId = null,}) {
  return _then(LoadDeviceRulesEvent(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$HeaterScheduleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaterScheduleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HeaterScheduleState()';
}


}

/// @nodoc
class $HeaterScheduleStateCopyWith<$Res>  {
$HeaterScheduleStateCopyWith(HeaterScheduleState _, $Res Function(HeaterScheduleState) __);
}


/// Adds pattern-matching-related methods to [HeaterScheduleState].
extension HeaterScheduleStatePatterns on HeaterScheduleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HeaterScheduleInitial value)?  initial,TResult Function( HeaterScheduleLoaded value)?  loaded,TResult Function( HeaterScheduleSaving value)?  saving,TResult Function( HeaterScheduleSaved value)?  saved,TResult Function( HeaterScheduleError value)?  error,TResult Function( HeaterScheduleLoadingRules value)?  loadingRules,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HeaterScheduleInitial() when initial != null:
return initial(_that);case HeaterScheduleLoaded() when loaded != null:
return loaded(_that);case HeaterScheduleSaving() when saving != null:
return saving(_that);case HeaterScheduleSaved() when saved != null:
return saved(_that);case HeaterScheduleError() when error != null:
return error(_that);case HeaterScheduleLoadingRules() when loadingRules != null:
return loadingRules(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HeaterScheduleInitial value)  initial,required TResult Function( HeaterScheduleLoaded value)  loaded,required TResult Function( HeaterScheduleSaving value)  saving,required TResult Function( HeaterScheduleSaved value)  saved,required TResult Function( HeaterScheduleError value)  error,required TResult Function( HeaterScheduleLoadingRules value)  loadingRules,}){
final _that = this;
switch (_that) {
case HeaterScheduleInitial():
return initial(_that);case HeaterScheduleLoaded():
return loaded(_that);case HeaterScheduleSaving():
return saving(_that);case HeaterScheduleSaved():
return saved(_that);case HeaterScheduleError():
return error(_that);case HeaterScheduleLoadingRules():
return loadingRules(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HeaterScheduleInitial value)?  initial,TResult? Function( HeaterScheduleLoaded value)?  loaded,TResult? Function( HeaterScheduleSaving value)?  saving,TResult? Function( HeaterScheduleSaved value)?  saved,TResult? Function( HeaterScheduleError value)?  error,TResult? Function( HeaterScheduleLoadingRules value)?  loadingRules,}){
final _that = this;
switch (_that) {
case HeaterScheduleInitial() when initial != null:
return initial(_that);case HeaterScheduleLoaded() when loaded != null:
return loaded(_that);case HeaterScheduleSaving() when saving != null:
return saving(_that);case HeaterScheduleSaved() when saved != null:
return saved(_that);case HeaterScheduleError() when error != null:
return error(_that);case HeaterScheduleLoadingRules() when loadingRules != null:
return loadingRules(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<HeaterSessionEntity> sessions)?  loaded,TResult Function( List<HeaterSessionEntity> sessions)?  saving,TResult Function( List<HeaterSessionEntity> sessions,  DeviceEntity device)?  saved,TResult Function( List<HeaterSessionEntity> sessions,  String message)?  error,TResult Function()?  loadingRules,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HeaterScheduleInitial() when initial != null:
return initial();case HeaterScheduleLoaded() when loaded != null:
return loaded(_that.sessions);case HeaterScheduleSaving() when saving != null:
return saving(_that.sessions);case HeaterScheduleSaved() when saved != null:
return saved(_that.sessions,_that.device);case HeaterScheduleError() when error != null:
return error(_that.sessions,_that.message);case HeaterScheduleLoadingRules() when loadingRules != null:
return loadingRules();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<HeaterSessionEntity> sessions)  loaded,required TResult Function( List<HeaterSessionEntity> sessions)  saving,required TResult Function( List<HeaterSessionEntity> sessions,  DeviceEntity device)  saved,required TResult Function( List<HeaterSessionEntity> sessions,  String message)  error,required TResult Function()  loadingRules,}) {final _that = this;
switch (_that) {
case HeaterScheduleInitial():
return initial();case HeaterScheduleLoaded():
return loaded(_that.sessions);case HeaterScheduleSaving():
return saving(_that.sessions);case HeaterScheduleSaved():
return saved(_that.sessions,_that.device);case HeaterScheduleError():
return error(_that.sessions,_that.message);case HeaterScheduleLoadingRules():
return loadingRules();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<HeaterSessionEntity> sessions)?  loaded,TResult? Function( List<HeaterSessionEntity> sessions)?  saving,TResult? Function( List<HeaterSessionEntity> sessions,  DeviceEntity device)?  saved,TResult? Function( List<HeaterSessionEntity> sessions,  String message)?  error,TResult? Function()?  loadingRules,}) {final _that = this;
switch (_that) {
case HeaterScheduleInitial() when initial != null:
return initial();case HeaterScheduleLoaded() when loaded != null:
return loaded(_that.sessions);case HeaterScheduleSaving() when saving != null:
return saving(_that.sessions);case HeaterScheduleSaved() when saved != null:
return saved(_that.sessions,_that.device);case HeaterScheduleError() when error != null:
return error(_that.sessions,_that.message);case HeaterScheduleLoadingRules() when loadingRules != null:
return loadingRules();case _:
  return null;

}
}

}

/// @nodoc


class HeaterScheduleInitial implements HeaterScheduleState {
  const HeaterScheduleInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaterScheduleInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HeaterScheduleState.initial()';
}


}




/// @nodoc


class HeaterScheduleLoaded implements HeaterScheduleState {
  const HeaterScheduleLoaded({required final  List<HeaterSessionEntity> sessions}): _sessions = sessions;
  

 final  List<HeaterSessionEntity> _sessions;
 List<HeaterSessionEntity> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}


/// Create a copy of HeaterScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaterScheduleLoadedCopyWith<HeaterScheduleLoaded> get copyWith => _$HeaterScheduleLoadedCopyWithImpl<HeaterScheduleLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaterScheduleLoaded&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'HeaterScheduleState.loaded(sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $HeaterScheduleLoadedCopyWith<$Res> implements $HeaterScheduleStateCopyWith<$Res> {
  factory $HeaterScheduleLoadedCopyWith(HeaterScheduleLoaded value, $Res Function(HeaterScheduleLoaded) _then) = _$HeaterScheduleLoadedCopyWithImpl;
@useResult
$Res call({
 List<HeaterSessionEntity> sessions
});




}
/// @nodoc
class _$HeaterScheduleLoadedCopyWithImpl<$Res>
    implements $HeaterScheduleLoadedCopyWith<$Res> {
  _$HeaterScheduleLoadedCopyWithImpl(this._self, this._then);

  final HeaterScheduleLoaded _self;
  final $Res Function(HeaterScheduleLoaded) _then;

/// Create a copy of HeaterScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessions = null,}) {
  return _then(HeaterScheduleLoaded(
sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<HeaterSessionEntity>,
  ));
}


}

/// @nodoc


class HeaterScheduleSaving implements HeaterScheduleState {
  const HeaterScheduleSaving({required final  List<HeaterSessionEntity> sessions}): _sessions = sessions;
  

 final  List<HeaterSessionEntity> _sessions;
 List<HeaterSessionEntity> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}


/// Create a copy of HeaterScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaterScheduleSavingCopyWith<HeaterScheduleSaving> get copyWith => _$HeaterScheduleSavingCopyWithImpl<HeaterScheduleSaving>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaterScheduleSaving&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'HeaterScheduleState.saving(sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $HeaterScheduleSavingCopyWith<$Res> implements $HeaterScheduleStateCopyWith<$Res> {
  factory $HeaterScheduleSavingCopyWith(HeaterScheduleSaving value, $Res Function(HeaterScheduleSaving) _then) = _$HeaterScheduleSavingCopyWithImpl;
@useResult
$Res call({
 List<HeaterSessionEntity> sessions
});




}
/// @nodoc
class _$HeaterScheduleSavingCopyWithImpl<$Res>
    implements $HeaterScheduleSavingCopyWith<$Res> {
  _$HeaterScheduleSavingCopyWithImpl(this._self, this._then);

  final HeaterScheduleSaving _self;
  final $Res Function(HeaterScheduleSaving) _then;

/// Create a copy of HeaterScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessions = null,}) {
  return _then(HeaterScheduleSaving(
sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<HeaterSessionEntity>,
  ));
}


}

/// @nodoc


class HeaterScheduleSaved implements HeaterScheduleState {
  const HeaterScheduleSaved({required final  List<HeaterSessionEntity> sessions, required this.device}): _sessions = sessions;
  

 final  List<HeaterSessionEntity> _sessions;
 List<HeaterSessionEntity> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}

 final  DeviceEntity device;

/// Create a copy of HeaterScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaterScheduleSavedCopyWith<HeaterScheduleSaved> get copyWith => _$HeaterScheduleSavedCopyWithImpl<HeaterScheduleSaved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaterScheduleSaved&&const DeepCollectionEquality().equals(other._sessions, _sessions)&&(identical(other.device, device) || other.device == device));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sessions),device);

@override
String toString() {
  return 'HeaterScheduleState.saved(sessions: $sessions, device: $device)';
}


}

/// @nodoc
abstract mixin class $HeaterScheduleSavedCopyWith<$Res> implements $HeaterScheduleStateCopyWith<$Res> {
  factory $HeaterScheduleSavedCopyWith(HeaterScheduleSaved value, $Res Function(HeaterScheduleSaved) _then) = _$HeaterScheduleSavedCopyWithImpl;
@useResult
$Res call({
 List<HeaterSessionEntity> sessions, DeviceEntity device
});


$DeviceEntityCopyWith<$Res> get device;

}
/// @nodoc
class _$HeaterScheduleSavedCopyWithImpl<$Res>
    implements $HeaterScheduleSavedCopyWith<$Res> {
  _$HeaterScheduleSavedCopyWithImpl(this._self, this._then);

  final HeaterScheduleSaved _self;
  final $Res Function(HeaterScheduleSaved) _then;

/// Create a copy of HeaterScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessions = null,Object? device = null,}) {
  return _then(HeaterScheduleSaved(
sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<HeaterSessionEntity>,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceEntity,
  ));
}

/// Create a copy of HeaterScheduleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceEntityCopyWith<$Res> get device {
  
  return $DeviceEntityCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

/// @nodoc


class HeaterScheduleError implements HeaterScheduleState {
  const HeaterScheduleError({required final  List<HeaterSessionEntity> sessions, required this.message}): _sessions = sessions;
  

 final  List<HeaterSessionEntity> _sessions;
 List<HeaterSessionEntity> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}

 final  String message;

/// Create a copy of HeaterScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaterScheduleErrorCopyWith<HeaterScheduleError> get copyWith => _$HeaterScheduleErrorCopyWithImpl<HeaterScheduleError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaterScheduleError&&const DeepCollectionEquality().equals(other._sessions, _sessions)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sessions),message);

@override
String toString() {
  return 'HeaterScheduleState.error(sessions: $sessions, message: $message)';
}


}

/// @nodoc
abstract mixin class $HeaterScheduleErrorCopyWith<$Res> implements $HeaterScheduleStateCopyWith<$Res> {
  factory $HeaterScheduleErrorCopyWith(HeaterScheduleError value, $Res Function(HeaterScheduleError) _then) = _$HeaterScheduleErrorCopyWithImpl;
@useResult
$Res call({
 List<HeaterSessionEntity> sessions, String message
});




}
/// @nodoc
class _$HeaterScheduleErrorCopyWithImpl<$Res>
    implements $HeaterScheduleErrorCopyWith<$Res> {
  _$HeaterScheduleErrorCopyWithImpl(this._self, this._then);

  final HeaterScheduleError _self;
  final $Res Function(HeaterScheduleError) _then;

/// Create a copy of HeaterScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessions = null,Object? message = null,}) {
  return _then(HeaterScheduleError(
sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<HeaterSessionEntity>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HeaterScheduleLoadingRules implements HeaterScheduleState {
  const HeaterScheduleLoadingRules();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaterScheduleLoadingRules);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HeaterScheduleState.loadingRules()';
}


}




// dart format on
