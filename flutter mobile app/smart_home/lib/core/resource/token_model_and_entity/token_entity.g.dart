// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenEntity _$TokenEntityFromJson(Map<String, dynamic> json) => _TokenEntity(
  token: json['token'] as String? ?? "",
  refreshToken: json['refreshToken'] as String? ?? "",
  expiresIn: (json['expiresIn'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TokenEntityToJson(_TokenEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
    };
