// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterUserRequestModel _$RegisterUserRequestModelFromJson(
  Map<String, dynamic> json,
) => _RegisterUserRequestModel(
  name: json['name'] as String?,
  email: json['email'] as String?,
  password: json['password'] as String?,
  companyId: json['companyId'] as String?,
  role: json['role'] as String?,
);

Map<String, dynamic> _$RegisterUserRequestModelToJson(
  _RegisterUserRequestModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'password': instance.password,
  'companyId': instance.companyId,
  'role': instance.role,
};
