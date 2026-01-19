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
    @JsonKey(name: "data") List<Datum>? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
  }) = _PendingUserResponseModel;

  factory PendingUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PendingUserResponseModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "isActive") bool? isActive,
    @JsonKey(name: "approvals") List<dynamic>? approvals,
    @JsonKey(name: "requests") List<dynamic>? requests,
    @JsonKey(name: "company") Company? company,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
