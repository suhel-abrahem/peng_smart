// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heater_session_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HeaterSessionEntity _$HeaterSessionEntityFromJson(Map<String, dynamic> json) =>
    _HeaterSessionEntity(
      id: json['id'] as String? ?? '',
      startTime: json['startTime'] as String? ?? '',
      endTime: json['endTime'] as String? ?? '',
      relay1Minutes: (json['relay1Minutes'] as num?)?.toInt() ?? 0,
      relay2Minutes: (json['relay2Minutes'] as num?)?.toInt() ?? 0,
      days: json['days'] as List<dynamic>? ?? const [],
      enabled: json['enabled'] as bool? ?? true,
    );

Map<String, dynamic> _$HeaterSessionEntityToJson(
  _HeaterSessionEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'relay1Minutes': instance.relay1Minutes,
  'relay2Minutes': instance.relay2Minutes,
  'days': instance.days,
  'enabled': instance.enabled,
};
