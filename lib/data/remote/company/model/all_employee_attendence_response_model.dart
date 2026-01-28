// To parse this JSON data, do
//
//     final allEmployeeAttendenceResponseModel = allEmployeeAttendenceResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'all_employee_attendence_response_model.freezed.dart';
part 'all_employee_attendence_response_model.g.dart';

AllEmployeeAttendenceResponseModel allEmployeeAttendenceResponseModelFromJson(
  String str,
) => AllEmployeeAttendenceResponseModel.fromJson(json.decode(str));

String allEmployeeAttendenceResponseModelToJson(
  AllEmployeeAttendenceResponseModel data,
) => json.encode(data.toJson());

@freezed
abstract class AllEmployeeAttendenceResponseModel
    with _$AllEmployeeAttendenceResponseModel {
  const factory AllEmployeeAttendenceResponseModel({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") List<Datum>? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _AllEmployeeAttendenceResponseModel;

  factory AllEmployeeAttendenceResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$AllEmployeeAttendenceResponseModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "checkInLocation") CheckLocation? checkInLocation,
    @JsonKey(name: "checkOutLocation") CheckLocation? checkOutLocation,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "employeeId") DatumEmployeeId? employeeId,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "checkInTime") DateTime? checkInTime,
    @JsonKey(name: "method") String? method,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "checkOutTime") DateTime? checkOutTime,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
abstract class CheckLocation with _$CheckLocation {
  const factory CheckLocation({
    @JsonKey(name: "lat") double? lat,
    @JsonKey(name: "lng") double? lng,
  }) = _CheckLocation;

  factory CheckLocation.fromJson(Map<String, dynamic> json) =>
      _$CheckLocationFromJson(json);
}

@freezed
abstract class DatumEmployeeId with _$DatumEmployeeId {
  const factory DatumEmployeeId({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "employeeId") EmployeeIdEmployeeId? employeeId,
    @JsonKey(name: "designation") String? designation,
    @JsonKey(name: "department") String? department,
  }) = _DatumEmployeeId;

  factory DatumEmployeeId.fromJson(Map<String, dynamic> json) =>
      _$DatumEmployeeIdFromJson(json);
}

@freezed
abstract class EmployeeIdEmployeeId with _$EmployeeIdEmployeeId {
  const factory EmployeeIdEmployeeId({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
  }) = _EmployeeIdEmployeeId;

  factory EmployeeIdEmployeeId.fromJson(Map<String, dynamic> json) =>
      _$EmployeeIdEmployeeIdFromJson(json);
}
