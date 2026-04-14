import 'package:smart_home/core/data_state/data_state.dart';

import '../../data/models/create_room_input_model.dart';
import '../entities/room_entity.dart';

abstract class RoomRepository {
  Future<DataState<List<RoomEntity>>> getRoomsByHomeId({
    required String homeId,
  });

  Future<DataState<RoomEntity>> createRoom({
    required CreateRoomInputModel input,
  });
}
