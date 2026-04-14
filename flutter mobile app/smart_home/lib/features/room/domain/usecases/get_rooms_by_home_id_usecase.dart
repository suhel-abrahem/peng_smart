import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';

import '../entities/room_entity.dart';
import '../repositories/room_repository.dart';


class GetRoomsByHomeIdUseCase
    implements UseCase<DataState<List<RoomEntity>>, String> {
  final RoomRepository _repository;

  GetRoomsByHomeIdUseCase(this._repository);

  @override
  Future<DataState<List<RoomEntity>>> call({String? params}) {
    return _repository.getRoomsByHomeId(homeId: params!);
  }
}