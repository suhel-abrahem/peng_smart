part of 'rooms_bloc.dart';

@freezed
class RoomsEvent with _$RoomsEvent {
  const factory RoomsEvent.started() = _Started;
  const factory RoomsEvent.addRoom({RoomEntity? roomEntity}) = _AddRoom;
  const factory RoomsEvent.deleteRoom({required String? id}) = _DeleteRoom;
  const factory RoomsEvent.updateRoom({required RoomEntity? room}) =
      _UpdateRoom;
  const factory RoomsEvent.getRooms({String? id}) = _GetRooms;
}
