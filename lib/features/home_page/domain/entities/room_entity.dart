import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peng_smart/core/resources/icon_data_json_converter.dart';

import '../../../../core/enums/rooms_type_enum.dart';


part 'room_entity.freezed.dart';
part 'room_entity.g.dart';

@freezed
class RoomEntity with _$RoomEntity {
  const factory RoomEntity({
    @Default(RoomsTypeEnum.kitchen) RoomsTypeEnum? type,
    @Default("") String? id,
    @Default("") String? name,
    @Default("") String? description,
    @IconDataJsonConverter() @Default(Icons.error_outline) IconData? icon,
    @Default("") String? image,
    @JsonKey(ignore: true) VoidCallback? onPressed,
  }) = _RoomEntity;

  factory RoomEntity.fromJson(Map<String, dynamic> json) =>
      _$RoomEntityFromJson(json);
}
