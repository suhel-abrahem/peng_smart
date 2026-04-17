import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/data_state/data_state.dart';
import 'package:smart_home/core/usecase/usecase.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/rules_entity.dart';
import 'package:smart_home/features/add_device/domain/repository/add_device_repository.dart';

part 'update_device_rules_usecase.freezed.dart';

@freezed
abstract class UpdateDeviceRulesParams with _$UpdateDeviceRulesParams {
  const factory UpdateDeviceRulesParams({
    required String deviceId,
    required RulesEntity rules,
  }) = _UpdateDeviceRulesParams;
}

class UpdateDeviceRulesUseCase
    implements UseCase<DataState<DeviceEntity>, UpdateDeviceRulesParams> {
  final AddDeviceRepository _repository;

  UpdateDeviceRulesUseCase(this._repository);

  @override
  Future<DataState<DeviceEntity>> call({UpdateDeviceRulesParams? params}) {
    return _repository.updateDeviceRules(
      deviceId: params!.deviceId,
      rules: params.rules,
    );
  }
}
