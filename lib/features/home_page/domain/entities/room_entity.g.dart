// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomEntityImpl _$$RoomEntityImplFromJson(Map<String, dynamic> json) =>
    _$RoomEntityImpl(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      icon: json['icon'] == null
          ? Icons.error_outline
          : const IconDataJsonConverter()
              .fromJson(json['icon'] as Map<String, dynamic>?),
      image: json['image'] as String? ?? "",
    );

Map<String, dynamic> _$$RoomEntityImplToJson(_$RoomEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': const IconDataJsonConverter().toJson(instance.icon),
      'image': instance.image,
    };
