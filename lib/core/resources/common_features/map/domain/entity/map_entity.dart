import 'package:freezed_annotation/freezed_annotation.dart';
part 'map_entity.freezed.dart';
part 'map_entity.g.dart';

@freezed
class MapEntity with _$MapEntity {
  const factory MapEntity({
    @Default("") String? latitude,
    @Default("") String? longitude,
  }) = _MapEntity;
  factory MapEntity.fromJson(Map<String, dynamic> json) =>
      _$MapEntityFromJson(json);
}
