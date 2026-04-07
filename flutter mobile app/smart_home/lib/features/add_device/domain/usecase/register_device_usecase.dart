import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/features/add_device/data/model/add_device_input_model.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';

import '../repository/add_device_repository.dart';

part 'register_device_usecase.freezed.dart';

@freezed
abstract class RegisterDeviceParams with _$RegisterDeviceParams {
  const factory RegisterDeviceParams({
    required AddDeviceInputModel input,
    required DeviceEntity device,
  }) = _RegisterDeviceParams;
}

class RegisterDeviceUseCase
    implements UseCase<DataState<DeviceEntity>, RegisterDeviceParams> {
  final AddDeviceRepository _repository;

  RegisterDeviceUseCase(this._repository);

  @override
  Future<DataState<DeviceEntity>> call({RegisterDeviceParams? params}) {
    return _repository.registerDevice(
      input: params!.input,
      device: params.device,
    );
  }
}
