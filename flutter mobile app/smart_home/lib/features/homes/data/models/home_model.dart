import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/home_entity.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String ownerId,
    @Default('') String role,
    @Default('') String createdAt,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

extension HomeModelMapper on HomeModel {
  HomeEntity toEntity() {
    return HomeEntity(
      id: id,
      name: name,
      ownerId: ownerId,
      role: role,
      createdAt: createdAt,
    );
  }
}
