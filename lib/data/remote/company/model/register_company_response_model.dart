// To parse this JSON data, do
//
//     final registerCompanyResponseModel = registerCompanyResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'register_company_response_model.freezed.dart';
part 'register_company_response_model.g.dart';

RegisterCompanyResponseModel registerCompanyResponseModelFromJson(String str) =>
    RegisterCompanyResponseModel.fromJson(json.decode(str));

String registerCompanyResponseModelToJson(RegisterCompanyResponseModel data) =>
    json.encode(data.toJson());

@freezed
abstract class RegisterCompanyResponseModel
    with _$RegisterCompanyResponseModel {
  const factory RegisterCompanyResponseModel({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _RegisterCompanyResponseModel;

  factory RegisterCompanyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterCompanyResponseModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "user") User? user,
    @JsonKey(name: "company") Company? company,
    @JsonKey(name: "accessToken") String? accessToken,
    @JsonKey(name: "refreshToken") String? refreshToken,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Company with _$Company {
  const factory Company({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "isActive") bool? isActive,
    @JsonKey(name: "approvals") List<dynamic>? approvals,
    @JsonKey(name: "requests") List<dynamic>? requests,
    @JsonKey(name: "company") String? company,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
