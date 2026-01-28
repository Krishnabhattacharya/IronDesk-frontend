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
      ?.map((e) => User.fromJson(e as Map<String, dynamic>))
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
