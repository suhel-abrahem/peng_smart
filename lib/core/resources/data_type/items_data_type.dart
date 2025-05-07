import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/resources/common_features/warehouse/domain/entities/items_entities.dart';
import '../../../core/resources/uint8list_json_converter.dart';

part 'items_data_type.freezed.dart';
part 'items_data_type.g.dart';

@freezed
class ItemsDataType with _$ItemsDataType {
  factory ItemsDataType({
    @Default(ItemsEntities()) ItemsEntities? itemsEntities,
    @Default(0) int? categoryId,
    @Default("") String? categoryName,
    @Default(0) int? bypass,
     @Default([])List<int>? image,
    @Default(false) bool? isUploaded,
    @Default(false) bool? isEdit,
  }) = _ItemsDataType;
  factory ItemsDataType.fromJson(Map<String, dynamic> json) =>
      _$ItemsDataTypeFromJson(json);
}
