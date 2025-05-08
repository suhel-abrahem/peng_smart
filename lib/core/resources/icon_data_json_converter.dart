import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class IconDataJsonConverter
    implements JsonConverter<IconData?, Map<String, dynamic>?> {
  const IconDataJsonConverter();

  @override
  IconData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return IconData(
      json['codePoint'] as int,
      fontFamily: json['fontFamily'] as String?,
      fontPackage: json['fontPackage'] as String?,
      matchTextDirection: json['matchTextDirection'] as bool? ?? false,
    );
  }

  @override
  Map<String, dynamic>? toJson(IconData? object) {
    if (object == null) return null;
    return {
      'codePoint': object.codePoint,
      'fontFamily': object.fontFamily,
      'fontPackage': object.fontPackage,
      'matchTextDirection': object.matchTextDirection,
    };
  }
}
