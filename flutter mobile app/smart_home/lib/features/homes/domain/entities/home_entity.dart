import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_entity.freezed.dart';
part 'home_entity.g.dart';

@freezed
abstract class HomeEntity with _$HomeEntity {
  const factory HomeEntity({
    @Default('') String id,
    @Default('') String name,
    @Default('') String ownerId,
    @Default('') String role,
    @Default('') String createdAt,
  }) = _HomeEntity;

  factory HomeEntity.fromJson(Map<String, dynamic> json) =>
      _$HomeEntityFromJson(json);
}
