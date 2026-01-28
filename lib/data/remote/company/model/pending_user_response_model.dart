// To parse this JSON data, do
//
//     final pendingUserResponseModel = pendingUserResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:irondesk/data/remote/auth/model/login_user_response_model.dart';

part 'pending_user_response_model.freezed.dart';
part 'pending_user_response_model.g.dart';

PendingUserResponseModel pendingUserResponseModelFromJson(String str) =>
    PendingUserResponseModel.fromJson(json.decode(str));

String pendingUserResponseModelToJson(PendingUserResponseModel data) =>
    json.encode(data.toJson());

@freezed
abstract class PendingUserResponseModel with _$PendingUserResponseModel {
  const factory PendingUserResponseModel({
    @JsonKey(name: "statusCode") int? statusCode,
    @JsonKey(name: "data") List<User>? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _PendingUserResponseModel;

  factory PendingUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PendingUserResponseModelFromJson(json);
}
