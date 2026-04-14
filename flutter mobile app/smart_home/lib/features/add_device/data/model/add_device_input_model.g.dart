// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_device_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddDeviceInputModel _$AddDeviceInputModelFromJson(Map<String, dynamic> json) =>
    _AddDeviceInputModel(
      deviceName: json['deviceName'] as String? ?? '',
      roomName: json['roomName'] as String? ?? '',
      roomId: json['roomId'] as String? ?? '',
      homeWifiSsid: json['homeWifiSsid'] as String? ?? '',
      homeWifiPassword: json['homeWifiPassword'] as String? ?? '',
      homeId: json['homeId'] as String? ?? '',
      homeName: json['homeName'] as String? ?? '',
    );

Map<String, dynamic> _$AddDeviceInputModelToJson(
  _AddDeviceInputModel instance,
) => <String, dynamic>{
  'deviceName': instance.deviceName,
  'roomName': instance.roomName,
  'roomId': instance.roomId,
  'homeWifiSsid': instance.homeWifiSsid,
  'homeWifiPassword': instance.homeWifiPassword,
  'homeId': instance.homeId,
  'homeName': instance.homeName,
};
