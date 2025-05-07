import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_entities.freezed.dart';
part 'categories_entities.g.dart';

@freezed
class CategoriesEntities with _$CategoriesEntities {
  const factory CategoriesEntities({
    @Default([]) List<String?>? name,
    @Default('') String? id,
    @Default(0) int? defaultLanguage,
  }) = _CategoriesEntities;
  factory CategoriesEntities.fromJson(Map<String, dynamic> json) =>
      _$CategoriesEntitiesFromJson(json);
}
