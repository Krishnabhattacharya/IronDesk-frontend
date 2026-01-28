// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_basic_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyBasicDetailsModel _$CompanyBasicDetailsModelFromJson(
  Map<String, dynamic> json,
) => _CompanyBasicDetailsModel(
  statusCode: (json['statusCode'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$CompanyBasicDetailsModelToJson(
  _CompanyBasicDetailsModel instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  subscriptionStatus: json['subscriptionStatus'] as String?,
  id: json['_id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  address: json['address'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'subscriptionStatus': instance.subscriptionStatus,
  '_id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'address': instance.address,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  '__v': instance.v,
};
