// To parse this JSON data, do
//
//     final registerCompanyRequestModel = registerCompanyRequestModelFromJson(jsonString);
// Force Rebuild

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'register_company_request_model.freezed.dart';
part 'register_company_request_model.g.dart';

RegisterCompanyRequestModel registerCompanyRequestModelFromJson(String str) =>
    RegisterCompanyRequestModel.fromJson(json.decode(str));

String registerCompanyRequestModelToJson(RegisterCompanyRequestModel data) =>
    json.encode(data.toJson());

@freezed
abstract class RegisterCompanyRequestModel with _$RegisterCompanyRequestModel {
  const factory RegisterCompanyRequestModel({
    @JsonKey(name: "companyName") String? companyName,
    @JsonKey(name: "companyEmail") String? companyEmail,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "adminName") String? adminName,
    @JsonKey(name: "adminEmail") String? adminEmail,
    @JsonKey(name: "adminPassword") String? adminPassword,
  }) = _RegisterCompanyRequestModel;

  factory RegisterCompanyRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterCompanyRequestModelFromJson(json);
}
