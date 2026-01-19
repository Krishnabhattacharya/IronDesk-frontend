// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_company_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterCompanyResponseModel _$RegisterCompanyResponseModelFromJson(
  Map<String, dynamic> json,
) => _RegisterCompanyResponseModel(
  statusCode: (json['statusCode'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$RegisterCompanyResponseModelToJson(
  _RegisterCompanyResponseModel instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  company: json['company'] == null
      ? null
      : Company.fromJson(json['company'] as Map<String, dynamic>),
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'user': instance.user,
  'company': instance.company,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
};

_Company _$CompanyFromJson(Map<String, dynamic> json) => _Company(
  name: json['name'] as String?,
  email: json['email'] as String?,
  address: json['address'] as String?,
  id: json['_id'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$CompanyToJson(_Company instance) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'address': instance.address,
  '_id': instance.id,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  '__v': instance.v,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  role: json['role'] as String?,
  isActive: json['isActive'] as bool?,
  approvals: json['approvals'] as List<dynamic>?,
  requests: json['requests'] as List<dynamic>?,
  company: json['company'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'role': instance.role,
  'isActive': instance.isActive,
  'approvals': instance.approvals,
  'requests': instance.requests,
  'company': instance.company,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  '__v': instance.v,
};
