// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponseEntity _$AuthResponseEntityFromJson(Map<String, dynamic> json) =>
    _AuthResponseEntity(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String? ?? '',
      refreshToken: json['refreshToken'] as String? ?? '',
    );

Map<String, dynamic> _$AuthResponseEntityToJson(_AuthResponseEntity instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
