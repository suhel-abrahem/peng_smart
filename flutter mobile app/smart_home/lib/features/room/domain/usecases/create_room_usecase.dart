import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';

import '../../data/models/create_room_input_model.dart';
import '../entities/room_entity.dart';
import '../repositories/room_repository.dart';

class CreateRoomUseCase
    implements UseCase<DataState<RoomEntity>, CreateRoomInputModel> {
  final RoomRepository _repository;

  CreateRoomUseCase(this._repository);

  @override
  Future<DataState<RoomEntity>> call({CreateRoomInputModel? params}) {
    return _repository.createRoom(input: params!);
  }
}
