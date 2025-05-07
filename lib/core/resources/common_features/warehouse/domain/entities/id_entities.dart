import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_entities.freezed.dart';
part 'id_entities.g.dart';

@freezed
class IdEntities with _$IdEntities {
  const factory IdEntities({@Default(0) int id}) = _IdEntities;
  factory IdEntities.fromJson(Map<String, dynamic> json) =>
      _$IdEntitiesFromJson(json);
}
