import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:smart_home/features/auth/data/models/user_model.dart';
import 'package:smart_home/features/auth/domain/entities/auth_response_entity.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
abstract class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required UserModel user,
    @JsonKey(name: 'token') @Default('') String accessToken,
    @Default('') String refreshToken,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

extension AuthResponseModelMapper on AuthResponseModel {
  AuthResponseEntity toEntity() {
    return AuthResponseEntity(
      user: user.toEntity(),
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
