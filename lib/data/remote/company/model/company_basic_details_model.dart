// To parse this JSON data, do
//
//     final companyBasicDetailsModel = companyBasicDetailsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'company_basic_details_model.freezed.dart';
part 'company_basic_details_model.g.dart';

CompanyBasicDetailsModel companyBasicDetailsModelFromJson(String str) =>
    CompanyBasicDetailsModel.fromJson(json.decode(str));

String companyBasicDetailsModelToJson(CompanyBasicDetailsModel data) =>
    json.encode(data.toJson());

@freezed
abstract class CompanyBasicDetailsModel with _$CompanyBasicDetailsModel {
  const factory CompanyBasicDetailsModel({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _CompanyBasicDetailsModel;

  factory CompanyBasicDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyBasicDetailsModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "subscriptionStatus") String? subscriptionStatus,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
