import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_entity.freezed.dart';
part 'room_entity.g.dart';

@freezed
abstract class RoomEntity with _$RoomEntity {
  const factory RoomEntity({
    @Default('') String id,
    @Default('') String name,
    @Default('') String homeId,
    @Default('') String createdAt,
  }) = _RoomEntity;

  factory RoomEntity.fromJson(Map<String, dynamic> json) =>
      _$RoomEntityFromJson(json);
}