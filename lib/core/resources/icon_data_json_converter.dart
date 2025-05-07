import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class IconDataJsonConverter implements JsonConverter<IconData?, IconData?> {
  const IconDataJsonConverter();

  @override
  @override
  IconData? toJson(IconData? object) {
    return object;
  }

  @override
  IconData? fromJson(IconData? json) {
    return json;
  }
}
