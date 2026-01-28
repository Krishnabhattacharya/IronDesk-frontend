// To parse this JSON data, do
//
//     final todayAttendenceResponseModel = todayAttendenceResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'today_attendence_response_model.freezed.dart';
part 'today_attendence_response_model.g.dart';

TodayAttendenceResponseModel todayAttendenceResponseModelFromJson(String str) =>
    TodayAttendenceResponseModel.fromJson(json.decode(str));

String todayAttendenceResponseModelToJson(TodayAttendenceResponseModel data) =>
    json.encode(data.toJson());

@freezed
abstract class TodayAttendenceResponseModel
    with _$TodayAttendenceResponseModel {
  const factory TodayAttendenceResponseModel({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _TodayAttendenceResponseModel;

  factory TodayAttendenceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TodayAttendenceResponseModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "checkInLocation") CheckInLocation? checkInLocation,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "employeeId") String? employeeId,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "checkInTime") DateTime? checkInTime,
    @JsonKey(name: "checkOutTime") DateTime? checkOutTime,

    @JsonKey(name: "method") String? method,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "isVerified") bool? isVerified,
    @JsonKey(name: "verificationStatus") String? verificationStatus,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class CheckInLocation with _$CheckInLocation {
  const factory CheckInLocation({
    @JsonKey(name: "lat") double? lat,
    @JsonKey(name: "lng") double? lng,
  }) = _CheckInLocation;

  factory CheckInLocation.fromJson(Map<String, dynamic> json) =>
      _$CheckInLocationFromJson(json);
}
