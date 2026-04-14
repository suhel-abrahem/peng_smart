// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenEntity _$TokenEntityFromJson(Map<String, dynamic> json) => _TokenEntity(
  token: json['token'] as String? ?? "",
  refreshToken: json['refreshToken'] as String? ?? "",
  accessTokenExpiresAt: json['accessTokenExpiresAt'] as String? ?? "",
  refreshTokenExpiresAt: json['refreshTokenExpiresAt'] as String? ?? "",
);

Map<String, dynamic> _$TokenEntityToJson(_TokenEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt,
      'refreshTokenExpiresAt': instance.refreshTokenExpiresAt,
    };
