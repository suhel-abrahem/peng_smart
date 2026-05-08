import 'package:freezed_annotation/freezed_annotation.dart';

part 'heater_session_entity.freezed.dart';
part 'heater_session_entity.g.dart';

@freezed
abstract class HeaterSessionEntity with _$HeaterSessionEntity {
  const factory HeaterSessionEntity({
    @Default('') String id,
    @Default('') String startTime, // example: 06:30
    @Default('') String endTime, // example: 07:00
    @Default(0) int relay1Minutes,
    @Default(0) int relay2Minutes,
    @Default([]) List days,
    @Default(true) bool enabled,
  }) = _HeaterSessionEntity;

  factory HeaterSessionEntity.fromJson(Map<String, dynamic> json) =>
      _$HeaterSessionEntityFromJson(json);
}
