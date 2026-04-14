import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/login_state_enum.dart';
part 'user_info_entity.freezed.dart';
part 'user_info_entity.g.dart';

@freezed
abstract class UserInfoEntity with _$UserInfoEntity {
  const factory UserInfoEntity({
    @Default("") String? id,
    @Default("") String? name,
    @Default("") String? email,
    @Default("") String? phoneNumber,
    @Default("") String? avatarUrl,
    @Default("") String? token,
    @Default("") String? refreshToken,
    @Default("") String? accessTokenExpiresAt,
    @Default("") String? refreshTokenExpiresAt,
    @Default(LoginStateEnum.logout) LoginStateEnum? loginState,
  }) = _UserInfoEntity;

  factory UserInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$UserInfoEntityFromJson(json);
}
