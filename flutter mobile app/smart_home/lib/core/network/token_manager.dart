import 'package:dio/dio.dart';
import 'package:smart_home/config/app/app_preferences.dart';
import 'package:smart_home/core/constants/api_constant.dart';
import 'package:smart_home/core/resource/token_model_and_entity/token_entity.dart';
import 'package:smart_home/core/resource/token_model_and_entity/token_model.dart';
import 'package:smart_home/core/resource/user_info_entity/user_info_entity.dart';

class TokenManager {
  final Dio _refreshDio;
  final AppPreferences _appPreferences;
  const TokenManager(this._refreshDio, this._appPreferences);
  Future<String?> getValidToken() async {
    final userInfo = _appPreferences.getUserInfo();
    if (userInfo == null) {
      return null;
    }
    if (isTokenExpired(userInfo)) {
      return await refreshToken(userInfo);
    }
    return userInfo.token;
  }

  bool isTokenExpired(UserInfoEntity userInfo) {
    final expiresIn = userInfo.expiresIn;
    if (expiresIn <= 0) {
      return true;
    }
    final expireAt = DateTime.now().add(Duration(seconds: expiresIn));
    if (expireAt.isBefore(DateTime.now().add(const Duration(seconds: 30)))) {
      return false;
    }
    return true;
  }

  Future<String?> refreshToken(UserInfoEntity userInfo) async {
    final refreshToken = userInfo.refreshToken;
    if (refreshToken == null || refreshToken.isEmpty) {
      return null;
    }
    final TokenModel tokenModel = TokenModel(refreshToken: refreshToken);
    try {
      final response = await _refreshDio.post(
        ApiConstant.refreshToken,
        data: tokenModel.toJson(),
        options: Options(extra: {"auth-free": true}),
      );
      final TokenEntity newToken = TokenEntity.fromJson(response.data["data"]);
      if (newToken.refreshToken != null && newToken.refreshToken!.isNotEmpty) {
        final updatedUserInfo = userInfo.copyWith(
          token: newToken.token,
          refreshToken: newToken.refreshToken,
          expiresIn: newToken.expiresIn ?? 0,
        );
        await _appPreferences.setUserInfo(updatedUserInfo);
        return newToken.token;
      }
    } catch (e) {
      await clearSession();
      return null;
    }
    return null;
  }

  Future<void> clearSession() async {
    await _appPreferences.clearSession();
  }
}
