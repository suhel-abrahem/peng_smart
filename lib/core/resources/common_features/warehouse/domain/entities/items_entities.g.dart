// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemsEntitiesImpl _$$ItemsEntitiesImplFromJson(Map<String, dynamic> json) =>
    _$ItemsEntitiesImpl(
      name:
          (json['name'] as List<dynamic>?)?.map((e) => e as String?).toList() ??
              const [],
      id: json['id'] as String? ?? '',
      categoryId: (json['categoryId'] as num?)?.toInt() ?? null,
      price: (json['price'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      solidNumber: (json['solidNumber'] as num?)?.toInt() ?? 0,
      review: (json['review'] as num?)?.toDouble() ?? 0.0,
      itemDescriptions: (json['itemDescriptions'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      defaultLanguage: (json['defaultLanguage'] as num?)?.toInt() ?? 0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0.0,
      offerFrom: json['offerFrom'] == null
          ? null
          : DateTime.parse(json['offerFrom'] as String),
      offerTo: json['offerTo'] == null
          ? null
          : DateTime.parse(json['offerTo'] as String),
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      isFav: json['isFav'] as bool? ?? false,
      dimensions: (json['dimensions'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      productionDate: json['productionDate'] == null
          ? null
          : DateTime.parse(json['productionDate'] as String),
      expireDate: json['expireDate'] == null
          ? null
          : DateTime.parse(json['expireDate'] as String),
    );

Map<String, dynamic> _$$ItemsEntitiesImplToJson(_$ItemsEntitiesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'categoryId': instance.categoryId,
      'price': instance.price,
      'solidNumber': instance.solidNumber,
      'review': instance.review,
      'itemDescriptions': instance.itemDescriptions,
      'defaultLanguage': instance.defaultLanguage,
      'discount': instance.discount,
      'offerFrom': instance.offerFrom?.toIso8601String(),
      'offerTo': instance.offerTo?.toIso8601String(),
      'quantity': instance.quantity,
      'isFav': instance.isFav,
      'dimensions': instance.dimensions,
      'productionDate': instance.productionDate?.toIso8601String(),
      'expireDate': instance.expireDate?.toIso8601String(),
    };
