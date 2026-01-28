// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_employee_attendence_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllEmployeeAttendenceResponseModel
_$AllEmployeeAttendenceResponseModelFromJson(Map<String, dynamic> json) =>
    _AllEmployeeAttendenceResponseModel(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$AllEmployeeAttendenceResponseModelToJson(
  _AllEmployeeAttendenceResponseModel instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
  checkInLocation: json['checkInLocation'] == null
      ? null
      : CheckLocation.fromJson(json['checkInLocation'] as Map<String, dynamic>),
  checkOutLocation: json['checkOutLocation'] == null
      ? null
      : CheckLocation.fromJson(
          json['checkOutLocation'] as Map<String, dynamic>,
        ),
  id: json['_id'] as String?,
  employeeId: json['employeeId'] == null
      ? null
      : DatumEmployeeId.fromJson(json['employeeId'] as Map<String, dynamic>),
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  checkInTime: json['checkInTime'] == null
      ? null
      : DateTime.parse(json['checkInTime'] as String),
  method: json['method'] as String?,
  status: json['status'] as String?,
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

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
  'checkInLocation': instance.checkInLocation,
  'checkOutLocation': instance.checkOutLocation,
  '_id': instance.id,
  'employeeId': instance.employeeId,
  'date': instance.date?.toIso8601String(),
  'checkInTime': instance.checkInTime?.toIso8601String(),
  'method': instance.method,
  'status': instance.status,
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

_DatumEmployeeId _$DatumEmployeeIdFromJson(Map<String, dynamic> json) =>
    _DatumEmployeeId(
      id: json['_id'] as String?,
      employeeId: json['employeeId'] == null
          ? null
          : EmployeeIdEmployeeId.fromJson(
              json['employeeId'] as Map<String, dynamic>,
            ),
      designation: json['designation'] as String?,
      department: json['department'] as String?,
    );

Map<String, dynamic> _$DatumEmployeeIdToJson(_DatumEmployeeId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'employeeId': instance.employeeId,
      'designation': instance.designation,
      'department': instance.department,
    };

_EmployeeIdEmployeeId _$EmployeeIdEmployeeIdFromJson(
  Map<String, dynamic> json,
) => _EmployeeIdEmployeeId(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic> _$EmployeeIdEmployeeIdToJson(
  _EmployeeIdEmployeeId instance,
) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'email': instance.email,
};
