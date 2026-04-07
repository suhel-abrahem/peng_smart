import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_entity.freezed.dart';
part 'schedule_entity.g.dart';

@freezed
abstract class ScheduleEntity with _$ScheduleEntity {
  const factory ScheduleEntity({
    @Default("") String? id,
    
    @Default("") String? time,
    @Default(false) bool? enabled,
  }) = _ScheduleEntity;

  factory ScheduleEntity.fromJson(Map<String, dynamic> json) =>
      _$ScheduleEntityFromJson(json);
}
