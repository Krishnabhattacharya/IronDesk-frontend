// To parse this JSON data, do
//
//     final checkOutResponseModel = checkOutResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_out_response_model.freezed.dart';
part 'check_out_response_model.g.dart';

CheckOutResponseModel checkOutResponseModelFromJson(String str) =>
    CheckOutResponseModel.fromJson(json.decode(str));

String checkOutResponseModelToJson(CheckOutResponseModel data) =>
    json.encode(data.toJson());

@freezed
abstract class CheckOutResponseModel with _$CheckOutResponseModel {
  const factory CheckOutResponseModel({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _CheckOutResponseModel;

  factory CheckOutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CheckOutResponseModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "checkInLocation") CheckLocation? checkInLocation,
    @JsonKey(name: "checkOutLocation") CheckLocation? checkOutLocation,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "employeeId") String? employeeId,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "checkInTime") DateTime? checkInTime,
    @JsonKey(name: "method") String? method,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "isVerified") bool? isVerified,
    @JsonKey(name: "verificationStatus") String? verificationStatus,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "checkOutTime") DateTime? checkOutTime,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
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
