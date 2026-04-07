import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/enums/device_status_enum.dart';
import 'package:smart_home/features/add_device/domain/entities/device_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/rules_entity.dart';

part 'device_model.freezed.dart';
part 'device_model.g.dart';

@freezed
abstract class DeviceModel with _$DeviceModel {
  const factory DeviceModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String type,
    @Default('') String room,
    @Default('') String homeId,
    @Default('') String homeName,
    @Default('') String deviceMacAddress,
    RulesEntity? rules,
    @Default(DeviceStatusEnum.offline) DeviceStatusEnum status,
  }) = _DeviceModel;

  factory DeviceModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceModelFromJson(json);
}

extension DeviceModelMapper on DeviceModel {
  DeviceEntity toEntity() {
    return DeviceEntity(
      id: id,
      name: name,
      type: type,
      room: room,
      homeId: homeId,
      homeName: homeName,
      deviceMacAddress: deviceMacAddress,
      rules: rules,
      status: status,
    );
  }
}

extension DeviceEntityMapper on DeviceEntity {
  DeviceModel toModel() {
    return DeviceModel(
      id: id,
      name: name,
      type: type,
      room: room,
      homeId: homeId,
      homeName: homeName,
      deviceMacAddress: deviceMacAddress,
      rules: rules,
      status: status ?? DeviceStatusEnum.offline,
    );
  }
}
