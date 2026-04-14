// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeEntity _$HomeEntityFromJson(Map<String, dynamic> json) => _HomeEntity(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  ownerId: json['ownerId'] as String? ?? '',
  role: json['role'] as String? ?? '',
  createdAt: json['createdAt'] as String? ?? '',
);

Map<String, dynamic> _$HomeEntityToJson(_HomeEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ownerId': instance.ownerId,
      'role': instance.role,
      'createdAt': instance.createdAt,
    };
