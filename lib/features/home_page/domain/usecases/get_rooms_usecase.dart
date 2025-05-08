import 'package:peng_smart/core/resources/data_state.dart';
import 'package:peng_smart/core/usecase/usecase.dart';
import 'package:peng_smart/features/home_page/domain/entities/room_entity.dart';

import '../repositories/rooms_repository.dart';

class GetRoomsUsecase
    implements UseCase<DataState<List<RoomEntity?>?>?, String?> {
  final RoomsRepository _roomsRepository;

  GetRoomsUsecase(this._roomsRepository);

  @override
  Future<DataState<List<RoomEntity?>?>?> call({String? params}) async {
    return await _roomsRepository.getRooms(roomId: params);
  }
}
