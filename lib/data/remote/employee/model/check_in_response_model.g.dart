// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckInResponseModel _$CheckInResponseModelFromJson(
  Map<String, dynamic> json,
) => _CheckInResponseModel(
  statusCode: (json['statusCode'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$CheckInResponseModelToJson(
  _CheckInResponseModel instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  employeeId: json['employeeId'] as String?,
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  checkInTime: json['checkInTime'] == null
      ? null
      : DateTime.parse(json['checkInTime'] as String),
  checkInLocation: json['checkInLocation'] == null
      ? null
      : CheckInLocation.fromJson(
          json['checkInLocation'] as Map<String, dynamic>,
        ),
  method: json['method'] as String?,
  status: json['status'] as String?,
  isVerified: json['isVerified'] as bool?,
  verificationStatus: json['verificationStatus'] as String?,
  id: json['_id'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'employeeId': instance.employeeId,
  'date': instance.date?.toIso8601String(),
  'checkInTime': instance.checkInTime?.toIso8601String(),
  'checkInLocation': instance.checkInLocation,
  'method': instance.method,
  'status': instance.status,
  'isVerified': instance.isVerified,
  'verificationStatus': instance.verificationStatus,
  '_id': instance.id,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  '__v': instance.v,
};

_CheckInLocation _$CheckInLocationFromJson(Map<String, dynamic> json) =>
    _CheckInLocation(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CheckInLocationToJson(_CheckInLocation instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
