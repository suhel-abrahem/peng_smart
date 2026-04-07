import 'package:freezed_annotation/freezed_annotation.dart';
part 'device_component_entity.freezed.dart';
part 'device_component_entity.g.dart';

@freezed
abstract class DeviceComponentEntity with _$DeviceComponentEntity {
  const factory DeviceComponentEntity({
    @Default('') String id, // relay1, relay2, tempSensor
    @Default('') String name,
    @Default('') String type, // relay, temperatureSensor
    @Default(false) bool isOn,
    String? currentValue,
  }) = _DeviceComponentEntity;

  factory DeviceComponentEntity.fromJson(Map<String, dynamic> json) =>
      _$DeviceComponentEntityFromJson(json);
}
