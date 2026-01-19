// To parse this JSON data, do
//
//     final loginUserRequestModel = loginUserRequestModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_user_request_model.freezed.dart';
part 'login_user_request_model.g.dart';

LoginUserRequestModel loginUserRequestModelFromJson(String str) =>
    LoginUserRequestModel.fromJson(json.decode(str));

String loginUserRequestModelToJson(LoginUserRequestModel data) =>
    json.encode(data.toJson());

@freezed
abstract class LoginUserRequestModel with _$LoginUserRequestModel {
  const factory LoginUserRequestModel({
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "password") String? password,
  }) = _LoginUserRequestModel;

  factory LoginUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserRequestModelFromJson(json);
}
