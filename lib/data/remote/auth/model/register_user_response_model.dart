// To parse this JSON data, do
//
//     final registerUserResponseModel = registerUserResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'register_user_response_model.freezed.dart';
part 'register_user_response_model.g.dart';

RegisterUserResponseModel registerUserResponseModelFromJson(String str) =>
    RegisterUserResponseModel.fromJson(json.decode(str));

String registerUserResponseModelToJson(RegisterUserResponseModel data) =>
    json.encode(data.toJson());

@freezed
abstract class RegisterUserResponseModel with _$RegisterUserResponseModel {
  const factory RegisterUserResponseModel({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _RegisterUserResponseModel;

  factory RegisterUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserResponseModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
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
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
