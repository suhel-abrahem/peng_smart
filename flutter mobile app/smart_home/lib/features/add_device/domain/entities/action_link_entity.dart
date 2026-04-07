import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/enums/action_enum.dart';
part 'action_link_entity.freezed.dart';
part 'action_link_entity.g.dart';

@freezed
abstract class ActionLinkEntity with _$ActionLinkEntity {
  const factory ActionLinkEntity({
    @Default("") String id,
    @Default("") String name,

    @Default("") String targetDeviceId,
    @Default("") String targetDeviceName,
    @Default("") String targetComponentId, // relay1, relay2, pumpRelay

    required ActionEnum action,
  }) = _ActionLinkEntity;

  factory ActionLinkEntity.fromJson(Map<String, dynamic> json) =>
      _$ActionLinkEntityFromJson(json);
}
