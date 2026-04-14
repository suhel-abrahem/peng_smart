import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_room_input_model.freezed.dart';
part 'create_room_input_model.g.dart';

@freezed
abstract class CreateRoomInputModel with _$CreateRoomInputModel {
  const factory CreateRoomInputModel({
    @Default('') String name,
    @Default('') String homeId,
  }) = _CreateRoomInputModel;

  factory CreateRoomInputModel.fromJson(Map<String, dynamic> json) =>
      _$CreateRoomInputModelFromJson(json);
}