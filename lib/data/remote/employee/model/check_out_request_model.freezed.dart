// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_out_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckOutRequestModel {

@JsonKey(name: "latitude") double? get latitude;@JsonKey(name: "longitude") double? get longitude;
/// Create a copy of CheckOutRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckOutRequestModelCopyWith<CheckOutRequestModel> get copyWith => _$CheckOutRequestModelCopyWithImpl<CheckOutRequestModel>(this as CheckOutRequestModel, _$identity);

  /// Serializes this CheckOutRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckOutRequestModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'CheckOutRequestModel(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $CheckOutRequestModelCopyWith<$Res>  {
  factory $CheckOutRequestModelCopyWith(CheckOutRequestModel value, $Res Function(CheckOutRequestModel) _then) = _$CheckOutRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "latitude") double? latitude,@JsonKey(name: "longitude") double? longitude
});




}
/// @nodoc
class _$CheckOutRequestModelCopyWithImpl<$Res>
    implements $CheckOutRequestModelCopyWith<$Res> {
  _$CheckOutRequestModelCopyWithImpl(this._self, this._then);

  final CheckOutRequestModel _self;
  final $Res Function(CheckOutRequestModel) _then;

/// Create a copy of CheckOutRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckOutRequestModel].
extension CheckOutRequestModelPatterns on CheckOutRequestModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckOutRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckOutRequestModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckOutRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckOutRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckOutRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckOutRequestModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "latitude")  double? latitude, @JsonKey(name: "longitude")  double? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckOutRequestModel() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "latitude")  double? latitude, @JsonKey(name: "longitude")  double? longitude)  $default,) {final _that = this;
switch (_that) {
case _CheckOutRequestModel():
return $default(_that.latitude,_that.longitude);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "latitude")  double? latitude, @JsonKey(name: "longitude")  double? longitude)?  $default,) {final _that = this;
switch (_that) {
case _CheckOutRequestModel() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckOutRequestModel implements CheckOutRequestModel {
  const _CheckOutRequestModel({@JsonKey(name: "latitude") this.latitude, @JsonKey(name: "longitude") this.longitude});
  factory _CheckOutRequestModel.fromJson(Map<String, dynamic> json) => _$CheckOutRequestModelFromJson(json);

@override@JsonKey(name: "latitude") final  double? latitude;
@override@JsonKey(name: "longitude") final  double? longitude;

/// Create a copy of CheckOutRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckOutRequestModelCopyWith<_CheckOutRequestModel> get copyWith => __$CheckOutRequestModelCopyWithImpl<_CheckOutRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckOutRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckOutRequestModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'CheckOutRequestModel(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$CheckOutRequestModelCopyWith<$Res> implements $CheckOutRequestModelCopyWith<$Res> {
  factory _$CheckOutRequestModelCopyWith(_CheckOutRequestModel value, $Res Function(_CheckOutRequestModel) _then) = __$CheckOutRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "latitude") double? latitude,@JsonKey(name: "longitude") double? longitude
});




}
/// @nodoc
class __$CheckOutRequestModelCopyWithImpl<$Res>
    implements _$CheckOutRequestModelCopyWith<$Res> {
  __$CheckOutRequestModelCopyWithImpl(this._self, this._then);

  final _CheckOutRequestModel _self;
  final $Res Function(_CheckOutRequestModel) _then;

/// Create a copy of CheckOutRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_CheckOutRequestModel(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
