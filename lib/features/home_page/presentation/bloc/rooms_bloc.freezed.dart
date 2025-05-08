// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RoomEntity? roomEntity) addRoom,
    required TResult Function(String? id) deleteRoom,
    required TResult Function(RoomEntity? room) updateRoom,
    required TResult Function(String? id) getRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RoomEntity? roomEntity)? addRoom,
    TResult? Function(String? id)? deleteRoom,
    TResult? Function(RoomEntity? room)? updateRoom,
    TResult? Function(String? id)? getRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RoomEntity? roomEntity)? addRoom,
    TResult Function(String? id)? deleteRoom,
    TResult Function(RoomEntity? room)? updateRoom,
    TResult Function(String? id)? getRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddRoom value) addRoom,
    required TResult Function(_DeleteRoom value) deleteRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_GetRooms value) getRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddRoom value)? addRoom,
    TResult? Function(_DeleteRoom value)? deleteRoom,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_GetRooms value)? getRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddRoom value)? addRoom,
    TResult Function(_DeleteRoom value)? deleteRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_GetRooms value)? getRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsEventCopyWith<$Res> {
  factory $RoomsEventCopyWith(
          RoomsEvent value, $Res Function(RoomsEvent) then) =
      _$RoomsEventCopyWithImpl<$Res, RoomsEvent>;
}

/// @nodoc
class _$RoomsEventCopyWithImpl<$Res, $Val extends RoomsEvent>
    implements $RoomsEventCopyWith<$Res> {
  _$RoomsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$RoomsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'RoomsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RoomEntity? roomEntity) addRoom,
    required TResult Function(String? id) deleteRoom,
    required TResult Function(RoomEntity? room) updateRoom,
    required TResult Function(String? id) getRooms,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RoomEntity? roomEntity)? addRoom,
    TResult? Function(String? id)? deleteRoom,
    TResult? Function(RoomEntity? room)? updateRoom,
    TResult? Function(String? id)? getRooms,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RoomEntity? roomEntity)? addRoom,
    TResult Function(String? id)? deleteRoom,
    TResult Function(RoomEntity? room)? updateRoom,
    TResult Function(String? id)? getRooms,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddRoom value) addRoom,
    required TResult Function(_DeleteRoom value) deleteRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_GetRooms value) getRooms,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddRoom value)? addRoom,
    TResult? Function(_DeleteRoom value)? deleteRoom,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_GetRooms value)? getRooms,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddRoom value)? addRoom,
    TResult Function(_DeleteRoom value)? deleteRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_GetRooms value)? getRooms,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RoomsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddRoomImplCopyWith<$Res> {
  factory _$$AddRoomImplCopyWith(
          _$AddRoomImpl value, $Res Function(_$AddRoomImpl) then) =
      __$$AddRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomEntity? roomEntity});

  $RoomEntityCopyWith<$Res>? get roomEntity;
}

/// @nodoc
class __$$AddRoomImplCopyWithImpl<$Res>
    extends _$RoomsEventCopyWithImpl<$Res, _$AddRoomImpl>
    implements _$$AddRoomImplCopyWith<$Res> {
  __$$AddRoomImplCopyWithImpl(
      _$AddRoomImpl _value, $Res Function(_$AddRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomEntity = freezed,
  }) {
    return _then(_$AddRoomImpl(
      roomEntity: freezed == roomEntity
          ? _value.roomEntity
          : roomEntity // ignore: cast_nullable_to_non_nullable
              as RoomEntity?,
    ));
  }

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomEntityCopyWith<$Res>? get roomEntity {
    if (_value.roomEntity == null) {
      return null;
    }

    return $RoomEntityCopyWith<$Res>(_value.roomEntity!, (value) {
      return _then(_value.copyWith(roomEntity: value));
    });
  }
}

/// @nodoc

class _$AddRoomImpl implements _AddRoom {
  const _$AddRoomImpl({this.roomEntity});

  @override
  final RoomEntity? roomEntity;

  @override
  String toString() {
    return 'RoomsEvent.addRoom(roomEntity: $roomEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRoomImpl &&
            (identical(other.roomEntity, roomEntity) ||
                other.roomEntity == roomEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomEntity);

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRoomImplCopyWith<_$AddRoomImpl> get copyWith =>
      __$$AddRoomImplCopyWithImpl<_$AddRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RoomEntity? roomEntity) addRoom,
    required TResult Function(String? id) deleteRoom,
    required TResult Function(RoomEntity? room) updateRoom,
    required TResult Function(String? id) getRooms,
  }) {
    return addRoom(roomEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RoomEntity? roomEntity)? addRoom,
    TResult? Function(String? id)? deleteRoom,
    TResult? Function(RoomEntity? room)? updateRoom,
    TResult? Function(String? id)? getRooms,
  }) {
    return addRoom?.call(roomEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RoomEntity? roomEntity)? addRoom,
    TResult Function(String? id)? deleteRoom,
    TResult Function(RoomEntity? room)? updateRoom,
    TResult Function(String? id)? getRooms,
    required TResult orElse(),
  }) {
    if (addRoom != null) {
      return addRoom(roomEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddRoom value) addRoom,
    required TResult Function(_DeleteRoom value) deleteRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_GetRooms value) getRooms,
  }) {
    return addRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddRoom value)? addRoom,
    TResult? Function(_DeleteRoom value)? deleteRoom,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_GetRooms value)? getRooms,
  }) {
    return addRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddRoom value)? addRoom,
    TResult Function(_DeleteRoom value)? deleteRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_GetRooms value)? getRooms,
    required TResult orElse(),
  }) {
    if (addRoom != null) {
      return addRoom(this);
    }
    return orElse();
  }
}

abstract class _AddRoom implements RoomsEvent {
  const factory _AddRoom({final RoomEntity? roomEntity}) = _$AddRoomImpl;

  RoomEntity? get roomEntity;

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddRoomImplCopyWith<_$AddRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRoomImplCopyWith<$Res> {
  factory _$$DeleteRoomImplCopyWith(
          _$DeleteRoomImpl value, $Res Function(_$DeleteRoomImpl) then) =
      __$$DeleteRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$DeleteRoomImplCopyWithImpl<$Res>
    extends _$RoomsEventCopyWithImpl<$Res, _$DeleteRoomImpl>
    implements _$$DeleteRoomImplCopyWith<$Res> {
  __$$DeleteRoomImplCopyWithImpl(
      _$DeleteRoomImpl _value, $Res Function(_$DeleteRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$DeleteRoomImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteRoomImpl implements _DeleteRoom {
  const _$DeleteRoomImpl({required this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'RoomsEvent.deleteRoom(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRoomImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRoomImplCopyWith<_$DeleteRoomImpl> get copyWith =>
      __$$DeleteRoomImplCopyWithImpl<_$DeleteRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RoomEntity? roomEntity) addRoom,
    required TResult Function(String? id) deleteRoom,
    required TResult Function(RoomEntity? room) updateRoom,
    required TResult Function(String? id) getRooms,
  }) {
    return deleteRoom(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RoomEntity? roomEntity)? addRoom,
    TResult? Function(String? id)? deleteRoom,
    TResult? Function(RoomEntity? room)? updateRoom,
    TResult? Function(String? id)? getRooms,
  }) {
    return deleteRoom?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RoomEntity? roomEntity)? addRoom,
    TResult Function(String? id)? deleteRoom,
    TResult Function(RoomEntity? room)? updateRoom,
    TResult Function(String? id)? getRooms,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddRoom value) addRoom,
    required TResult Function(_DeleteRoom value) deleteRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_GetRooms value) getRooms,
  }) {
    return deleteRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddRoom value)? addRoom,
    TResult? Function(_DeleteRoom value)? deleteRoom,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_GetRooms value)? getRooms,
  }) {
    return deleteRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddRoom value)? addRoom,
    TResult Function(_DeleteRoom value)? deleteRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_GetRooms value)? getRooms,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(this);
    }
    return orElse();
  }
}

abstract class _DeleteRoom implements RoomsEvent {
  const factory _DeleteRoom({required final String? id}) = _$DeleteRoomImpl;

  String? get id;

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteRoomImplCopyWith<_$DeleteRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRoomImplCopyWith<$Res> {
  factory _$$UpdateRoomImplCopyWith(
          _$UpdateRoomImpl value, $Res Function(_$UpdateRoomImpl) then) =
      __$$UpdateRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomEntity? room});

  $RoomEntityCopyWith<$Res>? get room;
}

/// @nodoc
class __$$UpdateRoomImplCopyWithImpl<$Res>
    extends _$RoomsEventCopyWithImpl<$Res, _$UpdateRoomImpl>
    implements _$$UpdateRoomImplCopyWith<$Res> {
  __$$UpdateRoomImplCopyWithImpl(
      _$UpdateRoomImpl _value, $Res Function(_$UpdateRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_$UpdateRoomImpl(
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomEntity?,
    ));
  }

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomEntityCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomEntityCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc

class _$UpdateRoomImpl implements _UpdateRoom {
  const _$UpdateRoomImpl({required this.room});

  @override
  final RoomEntity? room;

  @override
  String toString() {
    return 'RoomsEvent.updateRoom(room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRoomImpl &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRoomImplCopyWith<_$UpdateRoomImpl> get copyWith =>
      __$$UpdateRoomImplCopyWithImpl<_$UpdateRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RoomEntity? roomEntity) addRoom,
    required TResult Function(String? id) deleteRoom,
    required TResult Function(RoomEntity? room) updateRoom,
    required TResult Function(String? id) getRooms,
  }) {
    return updateRoom(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RoomEntity? roomEntity)? addRoom,
    TResult? Function(String? id)? deleteRoom,
    TResult? Function(RoomEntity? room)? updateRoom,
    TResult? Function(String? id)? getRooms,
  }) {
    return updateRoom?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RoomEntity? roomEntity)? addRoom,
    TResult Function(String? id)? deleteRoom,
    TResult Function(RoomEntity? room)? updateRoom,
    TResult Function(String? id)? getRooms,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddRoom value) addRoom,
    required TResult Function(_DeleteRoom value) deleteRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_GetRooms value) getRooms,
  }) {
    return updateRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddRoom value)? addRoom,
    TResult? Function(_DeleteRoom value)? deleteRoom,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_GetRooms value)? getRooms,
  }) {
    return updateRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddRoom value)? addRoom,
    TResult Function(_DeleteRoom value)? deleteRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_GetRooms value)? getRooms,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(this);
    }
    return orElse();
  }
}

abstract class _UpdateRoom implements RoomsEvent {
  const factory _UpdateRoom({required final RoomEntity? room}) =
      _$UpdateRoomImpl;

  RoomEntity? get room;

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRoomImplCopyWith<_$UpdateRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRoomsImplCopyWith<$Res> {
  factory _$$GetRoomsImplCopyWith(
          _$GetRoomsImpl value, $Res Function(_$GetRoomsImpl) then) =
      __$$GetRoomsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GetRoomsImplCopyWithImpl<$Res>
    extends _$RoomsEventCopyWithImpl<$Res, _$GetRoomsImpl>
    implements _$$GetRoomsImplCopyWith<$Res> {
  __$$GetRoomsImplCopyWithImpl(
      _$GetRoomsImpl _value, $Res Function(_$GetRoomsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetRoomsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetRoomsImpl implements _GetRooms {
  const _$GetRoomsImpl({this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'RoomsEvent.getRooms(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoomsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRoomsImplCopyWith<_$GetRoomsImpl> get copyWith =>
      __$$GetRoomsImplCopyWithImpl<_$GetRoomsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RoomEntity? roomEntity) addRoom,
    required TResult Function(String? id) deleteRoom,
    required TResult Function(RoomEntity? room) updateRoom,
    required TResult Function(String? id) getRooms,
  }) {
    return getRooms(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RoomEntity? roomEntity)? addRoom,
    TResult? Function(String? id)? deleteRoom,
    TResult? Function(RoomEntity? room)? updateRoom,
    TResult? Function(String? id)? getRooms,
  }) {
    return getRooms?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RoomEntity? roomEntity)? addRoom,
    TResult Function(String? id)? deleteRoom,
    TResult Function(RoomEntity? room)? updateRoom,
    TResult Function(String? id)? getRooms,
    required TResult orElse(),
  }) {
    if (getRooms != null) {
      return getRooms(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddRoom value) addRoom,
    required TResult Function(_DeleteRoom value) deleteRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_GetRooms value) getRooms,
  }) {
    return getRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddRoom value)? addRoom,
    TResult? Function(_DeleteRoom value)? deleteRoom,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_GetRooms value)? getRooms,
  }) {
    return getRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddRoom value)? addRoom,
    TResult Function(_DeleteRoom value)? deleteRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_GetRooms value)? getRooms,
    required TResult orElse(),
  }) {
    if (getRooms != null) {
      return getRooms(this);
    }
    return orElse();
  }
}

abstract class _GetRooms implements RoomsEvent {
  const factory _GetRooms({final String? id}) = _$GetRoomsImpl;

  String? get id;

  /// Create a copy of RoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRoomsImplCopyWith<_$GetRoomsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomEntity?>? rooms) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<RoomEntity?>? rooms, String? message)
        updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomEntity?>? rooms)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<RoomEntity?>? rooms, String? message)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomEntity?>? rooms)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<RoomEntity?>? rooms, String? message)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsStateCopyWith<$Res> {
  factory $RoomsStateCopyWith(
          RoomsState value, $Res Function(RoomsState) then) =
      _$RoomsStateCopyWithImpl<$Res, RoomsState>;
}

/// @nodoc
class _$RoomsStateCopyWithImpl<$Res, $Val extends RoomsState>
    implements $RoomsStateCopyWith<$Res> {
  _$RoomsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RoomsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomEntity?>? rooms) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<RoomEntity?>? rooms, String? message)
        updated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomEntity?>? rooms)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<RoomEntity?>? rooms, String? message)? updated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomEntity?>? rooms)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<RoomEntity?>? rooms, String? message)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoomsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RoomsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomEntity?>? rooms) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<RoomEntity?>? rooms, String? message)
        updated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomEntity?>? rooms)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<RoomEntity?>? rooms, String? message)? updated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomEntity?>? rooms)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<RoomEntity?>? rooms, String? message)? updated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RoomsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomEntity?>? rooms});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = freezed,
  }) {
    return _then(_$LoadedImpl(
      rooms: freezed == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomEntity?>?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<RoomEntity?>? rooms})
      : _rooms = rooms;

  final List<RoomEntity?>? _rooms;
  @override
  List<RoomEntity?>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoomsState.loaded(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomEntity?>? rooms) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<RoomEntity?>? rooms, String? message)
        updated,
  }) {
    return loaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomEntity?>? rooms)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<RoomEntity?>? rooms, String? message)? updated,
  }) {
    return loaded?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomEntity?>? rooms)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<RoomEntity?>? rooms, String? message)? updated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RoomsState {
  const factory _Loaded({required final List<RoomEntity?>? rooms}) =
      _$LoadedImpl;

  List<RoomEntity?>? get rooms;

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RoomsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomEntity?>? rooms) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<RoomEntity?>? rooms, String? message)
        updated,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomEntity?>? rooms)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<RoomEntity?>? rooms, String? message)? updated,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomEntity?>? rooms)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<RoomEntity?>? rooms, String? message)? updated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RoomsState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomEntity?>? rooms, String? message});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UpdatedImpl(
      rooms: freezed == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomEntity?>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(
      {required final List<RoomEntity?>? rooms, required this.message})
      : _rooms = rooms;

  final List<RoomEntity?>? _rooms;
  @override
  List<RoomEntity?>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'RoomsState.updated(rooms: $rooms, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rooms), message);

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomEntity?>? rooms) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<RoomEntity?>? rooms, String? message)
        updated,
  }) {
    return updated(rooms, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomEntity?>? rooms)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<RoomEntity?>? rooms, String? message)? updated,
  }) {
    return updated?.call(rooms, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomEntity?>? rooms)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<RoomEntity?>? rooms, String? message)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(rooms, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements RoomsState {
  const factory _Updated(
      {required final List<RoomEntity?>? rooms,
      required final String? message}) = _$UpdatedImpl;

  List<RoomEntity?>? get rooms;
  String? get message;

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
