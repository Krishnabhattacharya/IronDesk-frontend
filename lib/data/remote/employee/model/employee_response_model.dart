// To parse this JSON data, do
//
//     final employeeResponseModel = employeeResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'employee_response_model.freezed.dart';
part 'employee_response_model.g.dart';

EmployeeResponseModel employeeResponseModelFromJson(String str) =>
    EmployeeResponseModel.fromJson(json.decode(str));

String employeeResponseModelToJson(EmployeeResponseModel data) =>
    json.encode(data.toJson());

@freezed
abstract class EmployeeResponseModel with _$EmployeeResponseModel {
  const factory EmployeeResponseModel({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") List<Datum>? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _EmployeeResponseModel;

  factory EmployeeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeResponseModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "employeeId") EmployeeId? employeeId,
    @JsonKey(name: "designation") String? designation,
    @JsonKey(name: "department") String? department,
    @JsonKey(name: "shift") String? shift,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "company") String? company,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
abstract class EmployeeId with _$EmployeeId {
  const factory EmployeeId({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "isActive") bool? isActive,
    @JsonKey(name: "approvals") List<dynamic>? approvals,
    @JsonKey(name: "requests") List<dynamic>? requests,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "refreshToken") String? refreshToken,
    @JsonKey(name: "employee") String? employee,
    @JsonKey(name: "company") String? company,
  }) = _EmployeeId;

  factory EmployeeId.fromJson(Map<String, dynamic> json) =>
      _$EmployeeIdFromJson(json);
}
