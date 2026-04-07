// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleEntity _$ScheduleEntityFromJson(Map<String, dynamic> json) =>
    _ScheduleEntity(
      id: json['id'] as String? ?? "",
      time: json['time'] as String? ?? "",
      enabled: json['enabled'] as bool? ?? false,
    );

Map<String, dynamic> _$ScheduleEntityToJson(_ScheduleEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'enabled': instance.enabled,
    };
