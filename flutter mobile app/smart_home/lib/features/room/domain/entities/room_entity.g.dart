// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomEntity _$RoomEntityFromJson(Map<String, dynamic> json) => _RoomEntity(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  homeId: json['homeId'] as String? ?? '',
  createdAt: json['createdAt'] as String? ?? '',
);

Map<String, dynamic> _$RoomEntityToJson(_RoomEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'homeId': instance.homeId,
      'createdAt': instance.createdAt,
    };
