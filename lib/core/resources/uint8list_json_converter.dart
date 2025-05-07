import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

class Uint8ListConverter implements JsonConverter<Uint8List?, List<dynamic>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(List<dynamic>? json) {
    return json != null ? Uint8List.fromList(json as List<int>) : null;
  }

  @override
  List<dynamic>? toJson(Uint8List? object) {
    return object?.toList();
  }
}
