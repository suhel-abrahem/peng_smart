import 'dart:convert';

import 'package:peng_smart/config/app/app_preferences.dart';
import 'package:peng_smart/core/constants/shared_preferences_keys.dart';
import 'package:peng_smart/core/injection_container.dart';
import 'package:peng_smart/core/resources/data_state.dart';
import 'package:peng_smart/features/home_page/domain/entities/room_entity.dart';

import '../../domain/repositories/rooms_repository.dart';

class RoomsRepositoryImplement implements RoomsRepository {
  @override
  Future<DataState<List<RoomEntity?>?>?> getRooms({String? roomId}) async {
    try {
      final roomsAsString = await getItInstance<AppPreferences>()
          .getDataLocally(SharedPreferencesKeys.PREFS_KEY_ROOMS);
      if (roomsAsString == null) {
        return NoRoomsFounded(message: "No rooms found");
      }
      List<RoomEntity> rooms = [];
      if (roomId == null) {
        for (var room in roomsAsString) {
          rooms.add(RoomEntity.fromJson(jsonDecode(room)));
        }
      } else {
        for (final room in roomsAsString) {
          if (RoomEntity.fromJson(jsonDecode(room)).id == roomId) {
            rooms.add(RoomEntity.fromJson(jsonDecode(room)));
          }
        }
      }
      return DataSuccess(data: rooms);
    } catch (e) {
      return DataFailed(message: e.toString());
    }
  }

  @override
  Future<DataState<void>?> addRoom({RoomEntity? room}) async {
    try {
      final roomsAsString = getItInstance<AppPreferences>()
              .getDataLocally(SharedPreferencesKeys.PREFS_KEY_ROOMS) ??
          [];

      List<RoomEntity?>? rooms = [];
      for (var room in roomsAsString) {
        rooms.add(RoomEntity.fromJson(jsonDecode(room)));
      }
      rooms.add(room);
      List<String> roomsAsStringList = [];
      for (var room in rooms) {
        roomsAsStringList.add(jsonEncode(room?.toJson()));
      }
      getItInstance<AppPreferences>().setDataLocally(
          key: SharedPreferencesKeys.PREFS_KEY_ROOMS,
          dataAsJson: roomsAsStringList);
      return const DataSuccess();
    } catch (e) {
      return DataFailed(message: e.toString());
    }
  }

  @override
  Future<DataState<void>?> deleteAllRooms() {
    // TODO: implement deleteAllRooms
    throw UnimplementedError();
  }

  @override
  Future<DataState<void>?> deleteRoom({String? roomId}) {
    // TODO: implement deleteRoom
    throw UnimplementedError();
  }

  @override
  Future<DataState<void>?> updateRoom({RoomEntity? room}) {
    // TODO: implement updateRoom
    throw UnimplementedError();
  }
}
