

import '../models/room_model.dart';

abstract class RoomRemoteDataSource {
  Future<List<RoomModel>> getRoomsByHomeId({
    required String homeId,
  });
}