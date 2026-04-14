part of 'add_room_bloc.dart';

@freezed
abstract class AddRoomState with _$AddRoomState {
  const factory AddRoomState.initial() = AddRoomInitial;
  const factory AddRoomState.loading() = AddRoomLoading;
  const factory AddRoomState.success({required RoomEntity room}) =
      AddRoomSuccess;
  const factory AddRoomState.error({required String message}) = AddRoomError;
}
