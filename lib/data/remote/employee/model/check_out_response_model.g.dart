// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_out_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckOutResponseModel _$CheckOutResponseModelFromJson(
  Map<String, dynamic> json,
) => _CheckOutResponseModel(
  statusCode: (json['statusCode'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$CheckOutResponseModelToJson(
  _CheckOutResponseModel instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  checkInLocation: json['checkInLocation'] == null
      ? null
      : CheckLocation.fromJson(json['checkInLocation'] as Map<String, dynamic>),
  checkOutLocation: json['checkOutLocation'] == null
      ? null
      : CheckLocation.fromJson(
          json['checkOutLocation'] as Map<String, dynamic>,
        ),
  id: json['_id'] as String?,
  employeeId: json['employeeId'] as String?,
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  checkInTime: json['checkInTime'] == null
      ? null
      : DateTime.parse(json['checkInTime'] as String),
  method: json['method'] as String?,
  status: json['status'] as String?,
  isVerified: json['isVerified'] as bool?,
  verificationStatus: json['verificationStatus'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num?)?.toInt(),
  checkOutTime: json['checkOutTime'] == null
      ? null
      : DateTime.parse(json['checkOutTime'] as String),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'checkInLocation': instance.checkInLocation,
  'checkOutLocation': instance.checkOutLocation,
  '_id': instance.id,
  'employeeId': instance.employeeId,
  'date': instance.date?.toIso8601String(),
  'checkInTime': instance.checkInTime?.toIso8601String(),
  'method': instance.method,
  'status': instance.status,
  'isVerified': instance.isVerified,
  'verificationStatus': instance.verificationStatus,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  '__v': instance.v,
  'checkOutTime': instance.checkOutTime?.toIso8601String(),
};

_CheckLocation _$CheckLocationFromJson(Map<String, dynamic> json) =>
    _CheckLocation(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CheckLocationToJson(_CheckLocation instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
