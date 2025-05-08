import 'package:peng_smart/core/resources/data_state.dart';
import 'package:peng_smart/features/home_page/domain/entities/room_entity.dart';

abstract class RoomsRepository {
  Future<DataState<List<RoomEntity?>?>?> getRooms({
    String? roomId,
  });
  Future<DataState<void>?> addRoom({
    RoomEntity? room,
  });
  Future<DataState<void>?> updateRoom({
    RoomEntity? room,
  });
  Future<DataState<void>?> deleteRoom({
    String? roomId,
  });
  Future<DataState<void>?> deleteAllRooms();
}
