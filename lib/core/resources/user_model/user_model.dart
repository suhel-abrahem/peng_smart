import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../uint8list_json_converter.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String phoneNumber,
    @Default('') String email,
    @Default(0) int age,
    @Default("") String userRule,
    @Uint8ListConverter() Uint8List? image,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
