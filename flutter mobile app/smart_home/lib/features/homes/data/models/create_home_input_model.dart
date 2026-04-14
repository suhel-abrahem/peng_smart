import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_home_input_model.freezed.dart';
part 'create_home_input_model.g.dart';

@freezed
abstract class CreateHomeInputModel with _$CreateHomeInputModel {
  const factory CreateHomeInputModel({
    @Default('') String name,
  }) = _CreateHomeInputModel;

  factory CreateHomeInputModel.fromJson(Map<String, dynamic> json) =>
      _$CreateHomeInputModelFromJson(json);
}