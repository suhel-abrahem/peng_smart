import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_entities.freezed.dart';
part 'items_entities.g.dart';

@freezed
class ItemsEntities with _$ItemsEntities {
  const factory ItemsEntities({
    @Default([]) List<String?>? name,
    @Default('') String? id,
    @Default(null) int? categoryId,
    @Default([]) List<double>? price,
    @Default(0) int? solidNumber,
    @Default(0.0) double? review,
    @Default([]) List<String?>? itemDescriptions,
    @Default(0) int? defaultLanguage,
    @Default(0.0) double? discount,
    @Default(null) DateTime? offerFrom,
    @Default(null) DateTime? offerTo,
    @Default(0) int? quantity,
    @Default(false) bool? isFav,
    @Default([]) List<double>? dimensions,
    @Default(null) DateTime? productionDate,
    @Default(null) DateTime? expireDate,
  }) = _ItemsEntities;
  factory ItemsEntities.fromJson(Map<String, dynamic> json) =>
      _$ItemsEntitiesFromJson(json);
}
