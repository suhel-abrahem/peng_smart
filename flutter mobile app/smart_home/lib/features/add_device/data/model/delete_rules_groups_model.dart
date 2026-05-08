import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_rules_groups_model.freezed.dart';
part 'delete_rules_groups_model.g.dart';

@freezed
abstract class DeleteRulesGroupsModel with _$DeleteRulesGroupsModel {
  const factory DeleteRulesGroupsModel({
    @Default("") String deviceId,
    @Default("") String groupId,
  }) = _DeleteRulesGroupsModel;

  factory DeleteRulesGroupsModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteRulesGroupsModelFromJson(json);
}
