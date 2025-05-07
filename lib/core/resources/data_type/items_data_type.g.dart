// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_data_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemsDataTypeImpl _$$ItemsDataTypeImplFromJson(Map<String, dynamic> json) =>
    _$ItemsDataTypeImpl(
      itemsEntities: json['itemsEntities'] == null
          ? const ItemsEntities()
          : ItemsEntities.fromJson(
              json['itemsEntities'] as Map<String, dynamic>),
      categoryId: (json['categoryId'] as num?)?.toInt() ?? 0,
      categoryName: json['categoryName'] as String? ?? "",
      bypass: (json['bypass'] as num?)?.toInt() ?? 0,
      image: (json['image'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      isUploaded: json['isUploaded'] as bool? ?? false,
      isEdit: json['isEdit'] as bool? ?? false,
    );

Map<String, dynamic> _$$ItemsDataTypeImplToJson(_$ItemsDataTypeImpl instance) =>
    <String, dynamic>{
      'itemsEntities': instance.itemsEntities,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'bypass': instance.bypass,
      'image': instance.image,
      'isUploaded': instance.isUploaded,
      'isEdit': instance.isEdit,
    };
