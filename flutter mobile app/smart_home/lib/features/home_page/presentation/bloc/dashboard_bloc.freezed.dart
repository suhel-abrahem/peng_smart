// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent()';
}


}

/// @nodoc
class $DashboardEventCopyWith<$Res>  {
$DashboardEventCopyWith(DashboardEvent _, $Res Function(DashboardEvent) __);
}


/// Adds pattern-matching-related methods to [DashboardEvent].
extension DashboardEventPatterns on DashboardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadDashboardEvent value)?  load,TResult Function( SelectHomeEvent value)?  selectHome,TResult Function( SelectRoomEvent value)?  selectRoom,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadDashboardEvent() when load != null:
return load(_that);case SelectHomeEvent() when selectHome != null:
return selectHome(_that);case SelectRoomEvent() when selectRoom != null:
return selectRoom(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadDashboardEvent value)  load,required TResult Function( SelectHomeEvent value)  selectHome,required TResult Function( SelectRoomEvent value)  selectRoom,}){
final _that = this;
switch (_that) {
case LoadDashboardEvent():
return load(_that);case SelectHomeEvent():
return selectHome(_that);case SelectRoomEvent():
return selectRoom(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadDashboardEvent value)?  load,TResult? Function( SelectHomeEvent value)?  selectHome,TResult? Function( SelectRoomEvent value)?  selectRoom,}){
final _that = this;
switch (_that) {
case LoadDashboardEvent() when load != null:
return load(_that);case SelectHomeEvent() when selectHome != null:
return selectHome(_that);case SelectRoomEvent() when selectRoom != null:
return selectRoom(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( HomeEntity home)?  selectHome,TResult Function( String? roomId)?  selectRoom,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadDashboardEvent() when load != null:
return load();case SelectHomeEvent() when selectHome != null:
return selectHome(_that.home);case SelectRoomEvent() when selectRoom != null:
return selectRoom(_that.roomId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( HomeEntity home)  selectHome,required TResult Function( String? roomId)  selectRoom,}) {final _that = this;
switch (_that) {
case LoadDashboardEvent():
return load();case SelectHomeEvent():
return selectHome(_that.home);case SelectRoomEvent():
return selectRoom(_that.roomId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( HomeEntity home)?  selectHome,TResult? Function( String? roomId)?  selectRoom,}) {final _that = this;
switch (_that) {
case LoadDashboardEvent() when load != null:
return load();case SelectHomeEvent() when selectHome != null:
return selectHome(_that.home);case SelectRoomEvent() when selectRoom != null:
return selectRoom(_that.roomId);case _:
  return null;

}
}

}

/// @nodoc


class LoadDashboardEvent implements DashboardEvent {
  const LoadDashboardEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDashboardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.load()';
}


}




/// @nodoc


class SelectHomeEvent implements DashboardEvent {
  const SelectHomeEvent({required this.home});
  

 final  HomeEntity home;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectHomeEventCopyWith<SelectHomeEvent> get copyWith => _$SelectHomeEventCopyWithImpl<SelectHomeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectHomeEvent&&(identical(other.home, home) || other.home == home));
}


@override
int get hashCode => Object.hash(runtimeType,home);

@override
String toString() {
  return 'DashboardEvent.selectHome(home: $home)';
}


}

/// @nodoc
abstract mixin class $SelectHomeEventCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory $SelectHomeEventCopyWith(SelectHomeEvent value, $Res Function(SelectHomeEvent) _then) = _$SelectHomeEventCopyWithImpl;
@useResult
$Res call({
 HomeEntity home
});


$HomeEntityCopyWith<$Res> get home;

}
/// @nodoc
class _$SelectHomeEventCopyWithImpl<$Res>
    implements $SelectHomeEventCopyWith<$Res> {
  _$SelectHomeEventCopyWithImpl(this._self, this._then);

  final SelectHomeEvent _self;
  final $Res Function(SelectHomeEvent) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? home = null,}) {
  return _then(SelectHomeEvent(
home: null == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as HomeEntity,
  ));
}

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<$Res> get home {
  
  return $HomeEntityCopyWith<$Res>(_self.home, (value) {
    return _then(_self.copyWith(home: value));
  });
}
}

/// @nodoc


class SelectRoomEvent implements DashboardEvent {
  const SelectRoomEvent({required this.roomId});
  

 final  String? roomId;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectRoomEventCopyWith<SelectRoomEvent> get copyWith => _$SelectRoomEventCopyWithImpl<SelectRoomEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectRoomEvent&&(identical(other.roomId, roomId) || other.roomId == roomId));
}


@override
int get hashCode => Object.hash(runtimeType,roomId);

@override
String toString() {
  return 'DashboardEvent.selectRoom(roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class $SelectRoomEventCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory $SelectRoomEventCopyWith(SelectRoomEvent value, $Res Function(SelectRoomEvent) _then) = _$SelectRoomEventCopyWithImpl;
@useResult
$Res call({
 String? roomId
});




}
/// @nodoc
class _$SelectRoomEventCopyWithImpl<$Res>
    implements $SelectRoomEventCopyWith<$Res> {
  _$SelectRoomEventCopyWithImpl(this._self, this._then);

  final SelectRoomEvent _self;
  final $Res Function(SelectRoomEvent) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = freezed,}) {
  return _then(SelectRoomEvent(
roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$DashboardState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardState()';
}


}

/// @nodoc
class $DashboardStateCopyWith<$Res>  {
$DashboardStateCopyWith(DashboardState _, $Res Function(DashboardState) __);
}


/// Adds pattern-matching-related methods to [DashboardState].
extension DashboardStatePatterns on DashboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DashboardInitial value)?  initial,TResult Function( DashboardLoading value)?  loading,TResult Function( DashboardLoaded value)?  loaded,TResult Function( DashboardError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DashboardInitial() when initial != null:
return initial(_that);case DashboardLoading() when loading != null:
return loading(_that);case DashboardLoaded() when loaded != null:
return loaded(_that);case DashboardError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DashboardInitial value)  initial,required TResult Function( DashboardLoading value)  loading,required TResult Function( DashboardLoaded value)  loaded,required TResult Function( DashboardError value)  error,}){
final _that = this;
switch (_that) {
case DashboardInitial():
return initial(_that);case DashboardLoading():
return loading(_that);case DashboardLoaded():
return loaded(_that);case DashboardError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DashboardInitial value)?  initial,TResult? Function( DashboardLoading value)?  loading,TResult? Function( DashboardLoaded value)?  loaded,TResult? Function( DashboardError value)?  error,}){
final _that = this;
switch (_that) {
case DashboardInitial() when initial != null:
return initial(_that);case DashboardLoading() when loading != null:
return loading(_that);case DashboardLoaded() when loaded != null:
return loaded(_that);case DashboardError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DataState<List<HomeEntity>> homes,  HomeEntity selectedHome,  DataState<List<RoomEntity>> rooms,  DataState<List<DeviceEntity>> devices,  String? selectedRoomId)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DashboardInitial() when initial != null:
return initial();case DashboardLoading() when loading != null:
return loading();case DashboardLoaded() when loaded != null:
return loaded(_that.homes,_that.selectedHome,_that.rooms,_that.devices,_that.selectedRoomId);case DashboardError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DataState<List<HomeEntity>> homes,  HomeEntity selectedHome,  DataState<List<RoomEntity>> rooms,  DataState<List<DeviceEntity>> devices,  String? selectedRoomId)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case DashboardInitial():
return initial();case DashboardLoading():
return loading();case DashboardLoaded():
return loaded(_that.homes,_that.selectedHome,_that.rooms,_that.devices,_that.selectedRoomId);case DashboardError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DataState<List<HomeEntity>> homes,  HomeEntity selectedHome,  DataState<List<RoomEntity>> rooms,  DataState<List<DeviceEntity>> devices,  String? selectedRoomId)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case DashboardInitial() when initial != null:
return initial();case DashboardLoading() when loading != null:
return loading();case DashboardLoaded() when loaded != null:
return loaded(_that.homes,_that.selectedHome,_that.rooms,_that.devices,_that.selectedRoomId);case DashboardError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class DashboardInitial implements DashboardState {
  const DashboardInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardState.initial()';
}


}




/// @nodoc


class DashboardLoading implements DashboardState {
  const DashboardLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardState.loading()';
}


}




/// @nodoc


class DashboardLoaded implements DashboardState {
  const DashboardLoaded({required this.homes, required this.selectedHome, required this.rooms, required this.devices, required this.selectedRoomId});
  

 final  DataState<List<HomeEntity>> homes;
 final  HomeEntity selectedHome;
 final  DataState<List<RoomEntity>> rooms;
 final  DataState<List<DeviceEntity>> devices;
 final  String? selectedRoomId;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardLoadedCopyWith<DashboardLoaded> get copyWith => _$DashboardLoadedCopyWithImpl<DashboardLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardLoaded&&(identical(other.homes, homes) || other.homes == homes)&&(identical(other.selectedHome, selectedHome) || other.selectedHome == selectedHome)&&(identical(other.rooms, rooms) || other.rooms == rooms)&&(identical(other.devices, devices) || other.devices == devices)&&(identical(other.selectedRoomId, selectedRoomId) || other.selectedRoomId == selectedRoomId));
}


@override
int get hashCode => Object.hash(runtimeType,homes,selectedHome,rooms,devices,selectedRoomId);

@override
String toString() {
  return 'DashboardState.loaded(homes: $homes, selectedHome: $selectedHome, rooms: $rooms, devices: $devices, selectedRoomId: $selectedRoomId)';
}


}

/// @nodoc
abstract mixin class $DashboardLoadedCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory $DashboardLoadedCopyWith(DashboardLoaded value, $Res Function(DashboardLoaded) _then) = _$DashboardLoadedCopyWithImpl;
@useResult
$Res call({
 DataState<List<HomeEntity>> homes, HomeEntity selectedHome, DataState<List<RoomEntity>> rooms, DataState<List<DeviceEntity>> devices, String? selectedRoomId
});


$HomeEntityCopyWith<$Res> get selectedHome;

}
/// @nodoc
class _$DashboardLoadedCopyWithImpl<$Res>
    implements $DashboardLoadedCopyWith<$Res> {
  _$DashboardLoadedCopyWithImpl(this._self, this._then);

  final DashboardLoaded _self;
  final $Res Function(DashboardLoaded) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? homes = null,Object? selectedHome = null,Object? rooms = null,Object? devices = null,Object? selectedRoomId = freezed,}) {
  return _then(DashboardLoaded(
homes: null == homes ? _self.homes : homes // ignore: cast_nullable_to_non_nullable
as DataState<List<HomeEntity>>,selectedHome: null == selectedHome ? _self.selectedHome : selectedHome // ignore: cast_nullable_to_non_nullable
as HomeEntity,rooms: null == rooms ? _self.rooms : rooms // ignore: cast_nullable_to_non_nullable
as DataState<List<RoomEntity>>,devices: null == devices ? _self.devices : devices // ignore: cast_nullable_to_non_nullable
as DataState<List<DeviceEntity>>,selectedRoomId: freezed == selectedRoomId ? _self.selectedRoomId : selectedRoomId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<$Res> get selectedHome {
  
  return $HomeEntityCopyWith<$Res>(_self.selectedHome, (value) {
    return _then(_self.copyWith(selectedHome: value));
  });
}
}

/// @nodoc


class DashboardError implements DashboardState {
  const DashboardError({required this.message});
  

 final  String message;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardErrorCopyWith<DashboardError> get copyWith => _$DashboardErrorCopyWithImpl<DashboardError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DashboardState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $DashboardErrorCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory $DashboardErrorCopyWith(DashboardError value, $Res Function(DashboardError) _then) = _$DashboardErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DashboardErrorCopyWithImpl<$Res>
    implements $DashboardErrorCopyWith<$Res> {
  _$DashboardErrorCopyWithImpl(this._self, this._then);

  final DashboardError _self;
  final $Res Function(DashboardError) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DashboardError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
