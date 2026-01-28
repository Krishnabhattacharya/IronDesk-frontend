// To parse this JSON data, do
//
//     final checkInRequestModel = checkInRequestModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_in_request_model.freezed.dart';
part 'check_in_request_model.g.dart';

CheckInRequestModel checkInRequestModelFromJson(String str) =>
    CheckInRequestModel.fromJson(json.decode(str));

String checkInRequestModelToJson(CheckInRequestModel data) =>
    json.encode(data.toJson());

@freezed
abstract class CheckInRequestModel with _$CheckInRequestModel {
  const factory CheckInRequestModel({
    @JsonKey(name: "latitude") double? latitude,
    @JsonKey(name: "longitude") double? longitude,
    @JsonKey(name: "biometricVerified") bool? biometricVerified,
  }) = _CheckInRequestModel;

  factory CheckInRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CheckInRequestModelFromJson(json);
}
