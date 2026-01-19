// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PendingUserResponseModel _$PendingUserResponseModelFromJson(
  Map<String, dynamic> json,
) => _PendingUserResponseModel(
  statusCode: (json['statusCode'] as num?)?.toInt(),
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$PendingUserResponseModelToJson(
  _PendingUserResponseModel instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  role: json['role'] as String?,
  isActive: json['isActive'] as bool?,
  approvals: json['approvals'] as List<dynamic>?,
  requests: json['requests'] as List<dynamic>?,
  company: json['company'] == null
      ? null
      : Company.fromJson(json['company'] as Map<String, dynamic>),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
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
