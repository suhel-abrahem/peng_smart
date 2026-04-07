import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_entity.freezed.dart';
part 'token_entity.g.dart';

@freezed
abstract class TokenEntity with _$TokenEntity {
  const factory TokenEntity({
    @Default("") String? token,
    @Default("") String? refreshToken,
    @Default(0) int? expiresIn,
  }) = _TokenEntity;

  factory TokenEntity.fromJson(Map<String, dynamic> json) =>
      _$TokenEntityFromJson(json);
}
