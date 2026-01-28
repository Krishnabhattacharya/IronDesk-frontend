// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceHistoryResponse _$AttendanceHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _AttendanceHistoryResponse(
  statusCode: (json['statusCode'] as num?)?.toInt(),
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => AttendanceRecord.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$AttendanceHistoryResponseToJson(
  _AttendanceHistoryResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_AttendanceRecord _$AttendanceRecordFromJson(Map<String, dynamic> json) =>
    _AttendanceRecord(
      checkInLocation: json['checkInLocation'] == null
          ? null
          : Location.fromJson(json['checkInLocation'] as Map<String, dynamic>),
      checkOutLocation: json['checkOutLocation'] == null
          ? null
          : Location.fromJson(json['checkOutLocation'] as Map<String, dynamic>),
      isVerified: json['isVerified'] as bool?,
      verificationStatus: json['verificationStatus'] as String?,
      id: json['_id'] as String?,
      employeeId: json['employeeId'] as String?,
      date: json['date'] as String?,
      checkInTime: json['checkInTime'] == null
          ? null
          : DateTime.parse(json['checkInTime'] as String),
      checkOutTime: json['checkOutTime'] == null
          ? null
          : DateTime.parse(json['checkOutTime'] as String),
      method: json['method'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AttendanceRecordToJson(_AttendanceRecord instance) =>
    <String, dynamic>{
      'checkInLocation': instance.checkInLocation,
      'checkOutLocation': instance.checkOutLocation,
      'isVerified': instance.isVerified,
      'verificationStatus': instance.verificationStatus,
      '_id': instance.id,
      'employeeId': instance.employeeId,
      'date': instance.date,
      'checkInTime': instance.checkInTime?.toIso8601String(),
      'checkOutTime': instance.checkOutTime?.toIso8601String(),
      'method': instance.method,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'lat': instance.lat,
  'lng': instance.lng,
};
