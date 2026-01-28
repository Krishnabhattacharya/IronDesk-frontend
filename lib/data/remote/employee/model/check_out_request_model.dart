// To parse this JSON data, do
//
//     final checkOutRequestModel = checkOutRequestModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_out_request_model.freezed.dart';
part 'check_out_request_model.g.dart';

CheckOutRequestModel checkOutRequestModelFromJson(String str) =>
    CheckOutRequestModel.fromJson(json.decode(str));

String checkOutRequestModelToJson(CheckOutRequestModel data) =>
    json.encode(data.toJson());

@freezed
abstract class CheckOutRequestModel with _$CheckOutRequestModel {
  const factory CheckOutRequestModel({
    @JsonKey(name: "latitude") double? latitude,
    @JsonKey(name: "longitude") double? longitude,
  }) = _CheckOutRequestModel;

  factory CheckOutRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CheckOutRequestModelFromJson(json);
}
