import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/features/auth/domain/entities/user_entity.dart';

part 'auth_response_entity.freezed.dart';
part 'auth_response_entity.g.dart';

@freezed
abstract class AuthResponseEntity with _$AuthResponseEntity {
  const factory AuthResponseEntity({
    required UserEntity user,
    @Default('') String accessToken,
    @Default('') String refreshToken,
  }) = _AuthResponseEntity;

  factory AuthResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseEntityFromJson(json);
}