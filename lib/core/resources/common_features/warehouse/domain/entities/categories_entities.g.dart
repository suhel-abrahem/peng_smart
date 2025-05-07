// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesEntitiesImpl _$$CategoriesEntitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesEntitiesImpl(
      name:
          (json['name'] as List<dynamic>?)?.map((e) => e as String?).toList() ??
              const [],
      id: json['id'] as String? ?? '',
      defaultLanguage: (json['defaultLanguage'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CategoriesEntitiesImplToJson(
        _$CategoriesEntitiesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'defaultLanguage': instance.defaultLanguage,
    };
