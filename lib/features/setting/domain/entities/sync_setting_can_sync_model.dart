import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_setting_can_sync_model.freezed.dart';
part 'sync_setting_can_sync_model.g.dart';

@freezed
class SyncSettingCanSyncModel with _$SyncSettingCanSyncModel {
  const factory SyncSettingCanSyncModel(
      {@Default(true) bool auto,
      @Default(true) bool tables,
      @Default(true) bool charts,
      @Default(true) bool items,
      @Default(true) bool salesmanNames,
      @Default(true) bool salesmanLocations,
      @Default(true) bool salesmanClients,
      @Default(true) bool rule}) = $SyncSettingCanSyncModel;

  factory SyncSettingCanSyncModel.fromJson(Map<String, dynamic> json) =>
      _$SyncSettingCanSyncModelFromJson(json);
}
