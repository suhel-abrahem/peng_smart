// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_setting_can_sync_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$SyncSettingCanSyncModelImpl _$$$SyncSettingCanSyncModelImplFromJson(
        Map<String, dynamic> json) =>
    _$$SyncSettingCanSyncModelImpl(
      auto: json['auto'] as bool? ?? true,
      tables: json['tables'] as bool? ?? true,
      charts: json['charts'] as bool? ?? true,
      items: json['items'] as bool? ?? true,
      salesmanNames: json['salesmanNames'] as bool? ?? true,
      salesmanLocations: json['salesmanLocations'] as bool? ?? true,
      salesmanClients: json['salesmanClients'] as bool? ?? true,
      rule: json['rule'] as bool? ?? true,
    );

Map<String, dynamic> _$$$SyncSettingCanSyncModelImplToJson(
        _$$SyncSettingCanSyncModelImpl instance) =>
    <String, dynamic>{
      'auto': instance.auto,
      'tables': instance.tables,
      'charts': instance.charts,
      'items': instance.items,
      'salesmanNames': instance.salesmanNames,
      'salesmanLocations': instance.salesmanLocations,
      'salesmanClients': instance.salesmanClients,
      'rule': instance.rule,
    };
