import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/features/add_device/domain/entities/rules_entity.dart';

import '../../../../core/enums/device_status_enum.dart';
import 'device_component_entity.dart';
import 'device_telemetry_entity.dart';
part 'device_entity.freezed.dart';
part 'device_entity.g.dart';

@freezed
abstract class DeviceEntity with _$DeviceEntity {
  const factory DeviceEntity({
    @Default("") String id,
    @Default("") String name,
    @Default("") String type,
    @Default("") String room,
    @Default("") String homeId,
    @Default("") String homeName,
    @Default("") String deviceMacAddress,
    RulesEntity? rules,
    @Default(DeviceStatusEnum.offline) DeviceStatusEnum status,
    @Default([]) List<DeviceComponentEntity> components,
    @Default(null) DeviceTelemetryEntity? telemetry,
  }) = _DeviceEntity;

  factory DeviceEntity.fromJson(Map<String, dynamic> json) =>
      _$DeviceEntityFromJson(json);
}
