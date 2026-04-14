import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/room_entity.dart';


part 'room_model.freezed.dart';
part 'room_model.g.dart';

@freezed
abstract class RoomModel with _$RoomModel {
  const factory RoomModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String homeId,
    @Default('') String createdAt,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
}

extension RoomModelMapper on RoomModel {
  RoomEntity toEntity() {
    return RoomEntity(
      id: id,
      name: name,
      homeId: homeId,
      createdAt: createdAt,
    );
  }
}