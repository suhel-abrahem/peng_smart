import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_input_model.freezed.dart';
part 'login_input_model.g.dart';

@freezed
abstract class LoginInputModel with _$LoginInputModel {
  const factory LoginInputModel({
    @Default('') String email,
    @Default('') String password,
  }) = _LoginInputModel;

  factory LoginInputModel.fromJson(Map<String, dynamic> json) =>
      _$LoginInputModelFromJson(json);
}