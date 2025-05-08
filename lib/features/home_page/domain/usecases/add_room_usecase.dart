import 'package:peng_smart/core/resources/data_state.dart';
import 'package:peng_smart/core/usecase/usecase.dart';
import 'package:peng_smart/features/home_page/domain/entities/room_entity.dart';

import '../repositories/rooms_repository.dart';

class AddRoomUsecase implements UseCase<DataState<void>?, RoomEntity?> {
  late final RoomsRepository _roomsRepository;
  AddRoomUsecase(this._roomsRepository);
  @override
  Future<DataState<void>?> call({RoomEntity? params}) async {
    return await _roomsRepository.addRoom(room: params);
  }
}
