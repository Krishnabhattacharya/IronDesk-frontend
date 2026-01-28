// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_out_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckOutRequestModel _$CheckOutRequestModelFromJson(
  Map<String, dynamic> json,
) => _CheckOutRequestModel(
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CheckOutRequestModelToJson(
  _CheckOutRequestModel instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
