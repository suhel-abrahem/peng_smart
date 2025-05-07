// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_manager_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentManagerModelImpl _$$ContentManagerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentManagerModelImpl(
      data: json['data'],
      collectionName: json['collectionName'] as String?,
      offlineKey: json['offlineKey'] as String?,
      id: json['id'] as String? ?? "",
    );

Map<String, dynamic> _$$ContentManagerModelImplToJson(
        _$ContentManagerModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'collectionName': instance.collectionName,
      'offlineKey': instance.offlineKey,
      'id': instance.id,
    };
