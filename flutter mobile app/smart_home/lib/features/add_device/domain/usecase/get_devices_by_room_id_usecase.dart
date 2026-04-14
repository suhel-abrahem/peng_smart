import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/domain/repository/add_device_repository.dart';

class GetDevicesByRoomIdUseCase
    implements UseCase<DataState<List<DeviceEntity>>, String> {
  final AddDeviceRepository _repository;

  GetDevicesByRoomIdUseCase(this._repository);

  @override
  Future<DataState<List<DeviceEntity>>> call({String? params}) {
    return _repository.getDevicesByRoomId(roomId: params!);
  }
}