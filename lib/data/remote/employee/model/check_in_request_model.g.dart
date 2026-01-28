// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckInRequestModel _$CheckInRequestModelFromJson(Map<String, dynamic> json) =>
    _CheckInRequestModel(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      biometricVerified: json['biometricVerified'] as bool?,
    );

Map<String, dynamic> _$CheckInRequestModelToJson(
  _CheckInRequestModel instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'biometricVerified': instance.biometricVerified,
};
