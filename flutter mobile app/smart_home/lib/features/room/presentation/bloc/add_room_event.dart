part of 'add_room_bloc.dart';

@freezed
abstract class AddRoomEvent with _$AddRoomEvent {
  const factory AddRoomEvent.createRoom({required CreateRoomInputModel input}) =
      CreateRoomEvent;

  const factory AddRoomEvent.reset() = ResetAddRoomEvent;
}
