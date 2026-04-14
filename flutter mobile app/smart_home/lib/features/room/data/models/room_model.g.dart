// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomModel _$RoomModelFromJson(Map<String, dynamic> json) => _RoomModel(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  homeId: json['homeId'] as String? ?? '',
  createdAt: json['createdAt'] as String? ?? '',
);

Map<String, dynamic> _$RoomModelToJson(_RoomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'homeId': instance.homeId,
      'createdAt': instance.createdAt,
    };
