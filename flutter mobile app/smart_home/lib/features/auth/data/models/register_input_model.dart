import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_input_model.freezed.dart';
part 'register_input_model.g.dart';

@freezed
abstract class RegisterInputModel with _$RegisterInputModel {
  const factory RegisterInputModel({
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
  }) = _RegisterInputModel;

  factory RegisterInputModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterInputModelFromJson(json);
}