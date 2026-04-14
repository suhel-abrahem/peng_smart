// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddRoomEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRoomEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddRoomEvent()';
}


}

/// @nodoc
class $AddRoomEventCopyWith<$Res>  {
$AddRoomEventCopyWith(AddRoomEvent _, $Res Function(AddRoomEvent) __);
}


/// Adds pattern-matching-related methods to [AddRoomEvent].
extension AddRoomEventPatterns on AddRoomEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateRoomEvent value)?  createRoom,TResult Function( ResetAddRoomEvent value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateRoomEvent() when createRoom != null:
return createRoom(_that);case ResetAddRoomEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateRoomEvent value)  createRoom,required TResult Function( ResetAddRoomEvent value)  reset,}){
final _that = this;
switch (_that) {
case CreateRoomEvent():
return createRoom(_that);case ResetAddRoomEvent():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateRoomEvent value)?  createRoom,TResult? Function( ResetAddRoomEvent value)?  reset,}){
final _that = this;
switch (_that) {
case CreateRoomEvent() when createRoom != null:
return createRoom(_that);case ResetAddRoomEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CreateRoomInputModel input)?  createRoom,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateRoomEvent() when createRoom != null:
return createRoom(_that.input);case ResetAddRoomEvent() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CreateRoomInputModel input)  createRoom,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case CreateRoomEvent():
return createRoom(_that.input);case ResetAddRoomEvent():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CreateRoomInputModel input)?  createRoom,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case CreateRoomEvent() when createRoom != null:
return createRoom(_that.input);case ResetAddRoomEvent() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class CreateRoomEvent implements AddRoomEvent {
  const CreateRoomEvent({required this.input});
  

 final  CreateRoomInputModel input;

/// Create a copy of AddRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateRoomEventCopyWith<CreateRoomEvent> get copyWith => _$CreateRoomEventCopyWithImpl<CreateRoomEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateRoomEvent&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'AddRoomEvent.createRoom(input: $input)';
}


}

/// @nodoc
abstract mixin class $CreateRoomEventCopyWith<$Res> implements $AddRoomEventCopyWith<$Res> {
  factory $CreateRoomEventCopyWith(CreateRoomEvent value, $Res Function(CreateRoomEvent) _then) = _$CreateRoomEventCopyWithImpl;
@useResult
$Res call({
 CreateRoomInputModel input
});


$CreateRoomInputModelCopyWith<$Res> get input;

}
/// @nodoc
class _$CreateRoomEventCopyWithImpl<$Res>
    implements $CreateRoomEventCopyWith<$Res> {
  _$CreateRoomEventCopyWithImpl(this._self, this._then);

  final CreateRoomEvent _self;
  final $Res Function(CreateRoomEvent) _then;

/// Create a copy of AddRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(CreateRoomEvent(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as CreateRoomInputModel,
  ));
}

/// Create a copy of AddRoomEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateRoomInputModelCopyWith<$Res> get input {
  
  return $CreateRoomInputModelCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}
}

/// @nodoc


class ResetAddRoomEvent implements AddRoomEvent {
  const ResetAddRoomEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetAddRoomEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddRoomEvent.reset()';
}


}




/// @nodoc
mixin _$AddRoomState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRoomState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddRoomState()';
}


}

/// @nodoc
class $AddRoomStateCopyWith<$Res>  {
$AddRoomStateCopyWith(AddRoomState _, $Res Function(AddRoomState) __);
}


/// Adds pattern-matching-related methods to [AddRoomState].
extension AddRoomStatePatterns on AddRoomState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddRoomInitial value)?  initial,TResult Function( AddRoomLoading value)?  loading,TResult Function( AddRoomSuccess value)?  success,TResult Function( AddRoomError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddRoomInitial() when initial != null:
return initial(_that);case AddRoomLoading() when loading != null:
return loading(_that);case AddRoomSuccess() when success != null:
return success(_that);case AddRoomError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddRoomInitial value)  initial,required TResult Function( AddRoomLoading value)  loading,required TResult Function( AddRoomSuccess value)  success,required TResult Function( AddRoomError value)  error,}){
final _that = this;
switch (_that) {
case AddRoomInitial():
return initial(_that);case AddRoomLoading():
return loading(_that);case AddRoomSuccess():
return success(_that);case AddRoomError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddRoomInitial value)?  initial,TResult? Function( AddRoomLoading value)?  loading,TResult? Function( AddRoomSuccess value)?  success,TResult? Function( AddRoomError value)?  error,}){
final _that = this;
switch (_that) {
case AddRoomInitial() when initial != null:
return initial(_that);case AddRoomLoading() when loading != null:
return loading(_that);case AddRoomSuccess() when success != null:
return success(_that);case AddRoomError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( RoomEntity room)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddRoomInitial() when initial != null:
return initial();case AddRoomLoading() when loading != null:
return loading();case AddRoomSuccess() when success != null:
return success(_that.room);case AddRoomError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( RoomEntity room)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AddRoomInitial():
return initial();case AddRoomLoading():
return loading();case AddRoomSuccess():
return success(_that.room);case AddRoomError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( RoomEntity room)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AddRoomInitial() when initial != null:
return initial();case AddRoomLoading() when loading != null:
return loading();case AddRoomSuccess() when success != null:
return success(_that.room);case AddRoomError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AddRoomInitial implements AddRoomState {
  const AddRoomInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRoomInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddRoomState.initial()';
}


}




/// @nodoc


class AddRoomLoading implements AddRoomState {
  const AddRoomLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRoomLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddRoomState.loading()';
}


}




/// @nodoc


class AddRoomSuccess implements AddRoomState {
  const AddRoomSuccess({required this.room});
  

 final  RoomEntity room;

/// Create a copy of AddRoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddRoomSuccessCopyWith<AddRoomSuccess> get copyWith => _$AddRoomSuccessCopyWithImpl<AddRoomSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRoomSuccess&&(identical(other.room, room) || other.room == room));
}


@override
int get hashCode => Object.hash(runtimeType,room);

@override
String toString() {
  return 'AddRoomState.success(room: $room)';
}


}

/// @nodoc
abstract mixin class $AddRoomSuccessCopyWith<$Res> implements $AddRoomStateCopyWith<$Res> {
  factory $AddRoomSuccessCopyWith(AddRoomSuccess value, $Res Function(AddRoomSuccess) _then) = _$AddRoomSuccessCopyWithImpl;
@useResult
$Res call({
 RoomEntity room
});


$RoomEntityCopyWith<$Res> get room;

}
/// @nodoc
class _$AddRoomSuccessCopyWithImpl<$Res>
    implements $AddRoomSuccessCopyWith<$Res> {
  _$AddRoomSuccessCopyWithImpl(this._self, this._then);

  final AddRoomSuccess _self;
  final $Res Function(AddRoomSuccess) _then;

/// Create a copy of AddRoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? room = null,}) {
  return _then(AddRoomSuccess(
room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as RoomEntity,
  ));
}

/// Create a copy of AddRoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomEntityCopyWith<$Res> get room {
  
  return $RoomEntityCopyWith<$Res>(_self.room, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}

/// @nodoc


class AddRoomError implements AddRoomState {
  const AddRoomError({required this.message});
  

 final  String message;

/// Create a copy of AddRoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddRoomErrorCopyWith<AddRoomError> get copyWith => _$AddRoomErrorCopyWithImpl<AddRoomError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRoomError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddRoomState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddRoomErrorCopyWith<$Res> implements $AddRoomStateCopyWith<$Res> {
  factory $AddRoomErrorCopyWith(AddRoomError value, $Res Function(AddRoomError) _then) = _$AddRoomErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AddRoomErrorCopyWithImpl<$Res>
    implements $AddRoomErrorCopyWith<$Res> {
  _$AddRoomErrorCopyWithImpl(this._self, this._then);

  final AddRoomError _self;
  final $Res Function(AddRoomError) _then;

/// Create a copy of AddRoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AddRoomError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
