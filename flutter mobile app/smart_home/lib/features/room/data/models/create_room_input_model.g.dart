// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_room_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateRoomInputModel _$CreateRoomInputModelFromJson(
  Map<String, dynamic> json,
) => _CreateRoomInputModel(
  name: json['name'] as String? ?? '',
  homeId: json['homeId'] as String? ?? '',
);

Map<String, dynamic> _$CreateRoomInputModelToJson(
  _CreateRoomInputModel instance,
) => <String, dynamic>{'name': instance.name, 'homeId': instance.homeId};
