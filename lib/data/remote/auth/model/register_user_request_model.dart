// To parse this JSON data, do
//
//     final registerUserResponseModel = registerUserResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'register_user_request_model.freezed.dart';
part 'register_user_request_model.g.dart';

RegisterUserRequestModel registerUserRequestModelFromJson(String str) =>
    RegisterUserRequestModel.fromJson(json.decode(str));

String registerUserRequestModelToJson(RegisterUserRequestModel data) =>
    json.encode(data.toJson());

@freezed
abstract class RegisterUserRequestModel with _$RegisterUserRequestModel {
  const factory RegisterUserRequestModel({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "companyId") String? companyId,
    @JsonKey(name: "role") String? role,
  }) = _RegisterUserRequestModel;

  factory RegisterUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserRequestModelFromJson(json);
}
