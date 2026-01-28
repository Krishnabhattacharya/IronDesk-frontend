// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_company_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterCompanyRequestModel _$RegisterCompanyRequestModelFromJson(
  Map<String, dynamic> json,
) => _RegisterCompanyRequestModel(
  companyName: json['companyName'] as String?,
  companyEmail: json['companyEmail'] as String?,
  address: json['address'] as String?,
  adminName: json['adminName'] as String?,
  adminEmail: json['adminEmail'] as String?,
  adminPassword: json['adminPassword'] as String?,
);

Map<String, dynamic> _$RegisterCompanyRequestModelToJson(
  _RegisterCompanyRequestModel instance,
) => <String, dynamic>{
  'companyName': instance.companyName,
  'companyEmail': instance.companyEmail,
  'address': instance.address,
  'adminName': instance.adminName,
  'adminEmail': instance.adminEmail,
  'adminPassword': instance.adminPassword,
};
