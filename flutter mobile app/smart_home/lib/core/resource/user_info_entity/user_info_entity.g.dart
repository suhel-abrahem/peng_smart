// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfoEntity _$UserInfoEntityFromJson(Map<String, dynamic> json) =>
    _UserInfoEntity(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      avatarUrl: json['avatarUrl'] as String? ?? "",
      token: json['token'] as String? ?? "",
      refreshToken: json['refreshToken'] as String? ?? "",
      expiresIn: (json['expiresIn'] as num?)?.toInt() ?? 0,
      loginState:
          $enumDecodeNullable(_$LoginStateEnumEnumMap, json['loginState']) ??
          LoginStateEnum.logout,
    );

Map<String, dynamic> _$UserInfoEntityToJson(_UserInfoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'avatarUrl': instance.avatarUrl,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
      'loginState': _$LoginStateEnumEnumMap[instance.loginState],
    };

const _$LoginStateEnumEnumMap = {
  LoginStateEnum.login: 'login',
  LoginStateEnum.logout: 'logout',
  LoginStateEnum.guest: 'guest',
};
