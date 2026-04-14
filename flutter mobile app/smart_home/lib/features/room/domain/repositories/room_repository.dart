import 'package:smart_home/core/data_state/data_state.dart';

import '../entities/room_entity.dart';


abstract class RoomRepository {
  Future<DataState<List<RoomEntity>>> getRoomsByHomeId({
    required String homeId,
  });
}