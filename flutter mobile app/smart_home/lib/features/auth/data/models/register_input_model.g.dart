// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterInputModel _$RegisterInputModelFromJson(Map<String, dynamic> json) =>
    _RegisterInputModel(
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$RegisterInputModelToJson(_RegisterInputModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
