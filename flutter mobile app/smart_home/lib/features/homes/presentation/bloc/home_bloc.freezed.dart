// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetMyHomesEvent value)?  getMyHomes,TResult Function( CreateHomeEvent value)?  createHome,TResult Function( ResetHomeEvent value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetMyHomesEvent() when getMyHomes != null:
return getMyHomes(_that);case CreateHomeEvent() when createHome != null:
return createHome(_that);case ResetHomeEvent() when reset != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetMyHomesEvent value)  getMyHomes,required TResult Function( CreateHomeEvent value)  createHome,required TResult Function( ResetHomeEvent value)  reset,}){
final _that = this;
switch (_that) {
case GetMyHomesEvent():
return getMyHomes(_that);case CreateHomeEvent():
return createHome(_that);case ResetHomeEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetMyHomesEvent value)?  getMyHomes,TResult? Function( CreateHomeEvent value)?  createHome,TResult? Function( ResetHomeEvent value)?  reset,}){
final _that = this;
switch (_that) {
case GetMyHomesEvent() when getMyHomes != null:
return getMyHomes(_that);case CreateHomeEvent() when createHome != null:
return createHome(_that);case ResetHomeEvent() when reset != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getMyHomes,TResult Function( CreateHomeInputModel input)?  createHome,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetMyHomesEvent() when getMyHomes != null:
return getMyHomes();case CreateHomeEvent() when createHome != null:
return createHome(_that.input);case ResetHomeEvent() when reset != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getMyHomes,required TResult Function( CreateHomeInputModel input)  createHome,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case GetMyHomesEvent():
return getMyHomes();case CreateHomeEvent():
return createHome(_that.input);case ResetHomeEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getMyHomes,TResult? Function( CreateHomeInputModel input)?  createHome,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case GetMyHomesEvent() when getMyHomes != null:
return getMyHomes();case CreateHomeEvent() when createHome != null:
return createHome(_that.input);case ResetHomeEvent() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class GetMyHomesEvent implements HomeEvent {
  const GetMyHomesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyHomesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getMyHomes()';
}


}




/// @nodoc


class CreateHomeEvent implements HomeEvent {
  const CreateHomeEvent({required this.input});
  

 final  CreateHomeInputModel input;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateHomeEventCopyWith<CreateHomeEvent> get copyWith => _$CreateHomeEventCopyWithImpl<CreateHomeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateHomeEvent&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'HomeEvent.createHome(input: $input)';
}


}

/// @nodoc
abstract mixin class $CreateHomeEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $CreateHomeEventCopyWith(CreateHomeEvent value, $Res Function(CreateHomeEvent) _then) = _$CreateHomeEventCopyWithImpl;
@useResult
$Res call({
 CreateHomeInputModel input
});


$CreateHomeInputModelCopyWith<$Res> get input;

}
/// @nodoc
class _$CreateHomeEventCopyWithImpl<$Res>
    implements $CreateHomeEventCopyWith<$Res> {
  _$CreateHomeEventCopyWithImpl(this._self, this._then);

  final CreateHomeEvent _self;
  final $Res Function(CreateHomeEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(CreateHomeEvent(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as CreateHomeInputModel,
  ));
}

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateHomeInputModelCopyWith<$Res> get input {
  
  return $CreateHomeInputModelCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}
}

/// @nodoc


class ResetHomeEvent implements HomeEvent {
  const ResetHomeEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetHomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.reset()';
}


}




/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeInitial value)?  initial,TResult Function( HomeLoading value)?  loading,TResult Function( HomesLoadedState value)?  homesLoaded,TResult Function( HomeCreatedState value)?  homeCreated,TResult Function( HomeError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial(_that);case HomeLoading() when loading != null:
return loading(_that);case HomesLoadedState() when homesLoaded != null:
return homesLoaded(_that);case HomeCreatedState() when homeCreated != null:
return homeCreated(_that);case HomeError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeInitial value)  initial,required TResult Function( HomeLoading value)  loading,required TResult Function( HomesLoadedState value)  homesLoaded,required TResult Function( HomeCreatedState value)  homeCreated,required TResult Function( HomeError value)  error,}){
final _that = this;
switch (_that) {
case HomeInitial():
return initial(_that);case HomeLoading():
return loading(_that);case HomesLoadedState():
return homesLoaded(_that);case HomeCreatedState():
return homeCreated(_that);case HomeError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeInitial value)?  initial,TResult? Function( HomeLoading value)?  loading,TResult? Function( HomesLoadedState value)?  homesLoaded,TResult? Function( HomeCreatedState value)?  homeCreated,TResult? Function( HomeError value)?  error,}){
final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial(_that);case HomeLoading() when loading != null:
return loading(_that);case HomesLoadedState() when homesLoaded != null:
return homesLoaded(_that);case HomeCreatedState() when homeCreated != null:
return homeCreated(_that);case HomeError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<HomeEntity> homes)?  homesLoaded,TResult Function( HomeEntity home)?  homeCreated,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial();case HomeLoading() when loading != null:
return loading();case HomesLoadedState() when homesLoaded != null:
return homesLoaded(_that.homes);case HomeCreatedState() when homeCreated != null:
return homeCreated(_that.home);case HomeError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<HomeEntity> homes)  homesLoaded,required TResult Function( HomeEntity home)  homeCreated,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case HomeInitial():
return initial();case HomeLoading():
return loading();case HomesLoadedState():
return homesLoaded(_that.homes);case HomeCreatedState():
return homeCreated(_that.home);case HomeError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<HomeEntity> homes)?  homesLoaded,TResult? Function( HomeEntity home)?  homeCreated,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial();case HomeLoading() when loading != null:
return loading();case HomesLoadedState() when homesLoaded != null:
return homesLoaded(_that.homes);case HomeCreatedState() when homeCreated != null:
return homeCreated(_that.home);case HomeError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class HomeInitial implements HomeState {
  const HomeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class HomeLoading implements HomeState {
  const HomeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class HomesLoadedState implements HomeState {
  const HomesLoadedState({required final  List<HomeEntity> homes}): _homes = homes;
  

 final  List<HomeEntity> _homes;
 List<HomeEntity> get homes {
  if (_homes is EqualUnmodifiableListView) return _homes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_homes);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomesLoadedStateCopyWith<HomesLoadedState> get copyWith => _$HomesLoadedStateCopyWithImpl<HomesLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomesLoadedState&&const DeepCollectionEquality().equals(other._homes, _homes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_homes));

@override
String toString() {
  return 'HomeState.homesLoaded(homes: $homes)';
}


}

/// @nodoc
abstract mixin class $HomesLoadedStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomesLoadedStateCopyWith(HomesLoadedState value, $Res Function(HomesLoadedState) _then) = _$HomesLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<HomeEntity> homes
});




}
/// @nodoc
class _$HomesLoadedStateCopyWithImpl<$Res>
    implements $HomesLoadedStateCopyWith<$Res> {
  _$HomesLoadedStateCopyWithImpl(this._self, this._then);

  final HomesLoadedState _self;
  final $Res Function(HomesLoadedState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? homes = null,}) {
  return _then(HomesLoadedState(
homes: null == homes ? _self._homes : homes // ignore: cast_nullable_to_non_nullable
as List<HomeEntity>,
  ));
}


}

/// @nodoc


class HomeCreatedState implements HomeState {
  const HomeCreatedState({required this.home});
  

 final  HomeEntity home;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeCreatedStateCopyWith<HomeCreatedState> get copyWith => _$HomeCreatedStateCopyWithImpl<HomeCreatedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeCreatedState&&(identical(other.home, home) || other.home == home));
}


@override
int get hashCode => Object.hash(runtimeType,home);

@override
String toString() {
  return 'HomeState.homeCreated(home: $home)';
}


}

/// @nodoc
abstract mixin class $HomeCreatedStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeCreatedStateCopyWith(HomeCreatedState value, $Res Function(HomeCreatedState) _then) = _$HomeCreatedStateCopyWithImpl;
@useResult
$Res call({
 HomeEntity home
});


$HomeEntityCopyWith<$Res> get home;

}
/// @nodoc
class _$HomeCreatedStateCopyWithImpl<$Res>
    implements $HomeCreatedStateCopyWith<$Res> {
  _$HomeCreatedStateCopyWithImpl(this._self, this._then);

  final HomeCreatedState _self;
  final $Res Function(HomeCreatedState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? home = null,}) {
  return _then(HomeCreatedState(
home: null == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as HomeEntity,
  ));
}

/// Create a copy of HomeState
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


class HomeError implements HomeState {
  const HomeError({required this.message});
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeErrorCopyWith<HomeError> get copyWith => _$HomeErrorCopyWithImpl<HomeError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $HomeErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeErrorCopyWith(HomeError value, $Res Function(HomeError) _then) = _$HomeErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$HomeErrorCopyWithImpl<$Res>
    implements $HomeErrorCopyWith<$Res> {
  _$HomeErrorCopyWithImpl(this._self, this._then);

  final HomeError _self;
  final $Res Function(HomeError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(HomeError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
