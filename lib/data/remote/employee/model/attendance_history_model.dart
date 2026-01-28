// To parse this JSON data, do
//
//     final attendanceHistoryResponse = attendanceHistoryResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'attendance_history_model.freezed.dart';
part 'attendance_history_model.g.dart';

AttendanceHistoryResponse attendanceHistoryResponseFromJson(String str) =>
    AttendanceHistoryResponse.fromJson(json.decode(str));

String attendanceHistoryResponseToJson(AttendanceHistoryResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class AttendanceHistoryResponse with _$AttendanceHistoryResponse {
  const factory AttendanceHistoryResponse({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") List<AttendanceRecord>? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _AttendanceHistoryResponse;

  factory AttendanceHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryResponseFromJson(json);
}

@freezed
abstract class AttendanceRecord with _$AttendanceRecord {
  const factory AttendanceRecord({
    @JsonKey(name: "checkInLocation") Location? checkInLocation,
    @JsonKey(name: "checkOutLocation") Location? checkOutLocation,
    @JsonKey(name: "isVerified") bool? isVerified,
    @JsonKey(name: "verificationStatus") String? verificationStatus,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "employeeId") String? employeeId,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "checkInTime") DateTime? checkInTime,
    @JsonKey(name: "checkOutTime") DateTime? checkOutTime,
    @JsonKey(name: "method") String? method,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _AttendanceRecord;

  factory AttendanceRecord.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordFromJson(json);
}

@freezed
abstract class Location with _$Location {
  const factory Location({
    @JsonKey(name: "lat") double? lat,
    @JsonKey(name: "lng") double? lng,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
