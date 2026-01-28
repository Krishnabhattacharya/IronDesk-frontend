// To parse this JSON data, do
//
//     final checkInResponseModel = checkInResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_in_response_model.freezed.dart';
part 'check_in_response_model.g.dart';

CheckInResponseModel checkInResponseModelFromJson(String str) =>
    CheckInResponseModel.fromJson(json.decode(str));

String checkInResponseModelToJson(CheckInResponseModel data) =>
    json.encode(data.toJson());

@freezed
abstract class CheckInResponseModel with _$CheckInResponseModel {
  const factory CheckInResponseModel({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _CheckInResponseModel;

  factory CheckInResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CheckInResponseModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "employeeId") String? employeeId,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "checkInTime") DateTime? checkInTime,
    @JsonKey(name: "checkInLocation") CheckInLocation? checkInLocation,
    @JsonKey(name: "method") String? method,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "isVerified") bool? isVerified,
    @JsonKey(name: "verificationStatus") String? verificationStatus,
    @JsonKey(name: "_id") String? id,
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
