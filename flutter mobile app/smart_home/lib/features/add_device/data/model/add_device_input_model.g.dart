// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_device_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddDeviceInputModel _$AddDeviceInputModelFromJson(Map<String, dynamic> json) =>
    _AddDeviceInputModel(
      deviceName: json['deviceName'] as String? ?? '',
      room: json['room'] as String? ?? '',
      homeWifiSsid: json['homeWifiSsid'] as String? ?? '',
      homeWifiPassword: json['homeWifiPassword'] as String? ?? '',
      homeId: json['homeId'] as String? ?? '',
    );

Map<String, dynamic> _$AddDeviceInputModelToJson(
  _AddDeviceInputModel instance,
) => <String, dynamic>{
  'deviceName': instance.deviceName,
  'room': instance.room,
  'homeWifiSsid': instance.homeWifiSsid,
  'homeWifiPassword': instance.homeWifiPassword,
  'homeId': instance.homeId,
};
