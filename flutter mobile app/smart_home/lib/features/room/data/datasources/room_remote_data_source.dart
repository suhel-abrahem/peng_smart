import '../models/create_room_input_model.dart';
import '../models/room_model.dart';

abstract class RoomRemoteDataSource {
  Future<List<RoomModel>> getRoomsByHomeId({required String homeId});

  Future<RoomModel> createRoom({required CreateRoomInputModel input});
}
