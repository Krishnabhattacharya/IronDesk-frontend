// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_company_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterCompanyRequestModel {

@JsonKey(name: "companyName") String? get companyName;@JsonKey(name: "companyEmail") String? get companyEmail;@JsonKey(name: "address") String? get address;@JsonKey(name: "adminName") String? get adminName;@JsonKey(name: "adminEmail") String? get adminEmail;@JsonKey(name: "adminPassword") String? get adminPassword;
/// Create a copy of RegisterCompanyRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterCompanyRequestModelCopyWith<RegisterCompanyRequestModel> get copyWith => _$RegisterCompanyRequestModelCopyWithImpl<RegisterCompanyRequestModel>(this as RegisterCompanyRequestModel, _$identity);

  /// Serializes this RegisterCompanyRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterCompanyRequestModel&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyEmail, companyEmail) || other.companyEmail == companyEmail)&&(identical(other.address, address) || other.address == address)&&(identical(other.adminName, adminName) || other.adminName == adminName)&&(identical(other.adminEmail, adminEmail) || other.adminEmail == adminEmail)&&(identical(other.adminPassword, adminPassword) || other.adminPassword == adminPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,companyEmail,address,adminName,adminEmail,adminPassword);

@override
String toString() {
  return 'RegisterCompanyRequestModel(companyName: $companyName, companyEmail: $companyEmail, address: $address, adminName: $adminName, adminEmail: $adminEmail, adminPassword: $adminPassword)';
}


}

/// @nodoc
abstract mixin class $RegisterCompanyRequestModelCopyWith<$Res>  {
  factory $RegisterCompanyRequestModelCopyWith(RegisterCompanyRequestModel value, $Res Function(RegisterCompanyRequestModel) _then) = _$RegisterCompanyRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "companyName") String? companyName,@JsonKey(name: "companyEmail") String? companyEmail,@JsonKey(name: "address") String? address,@JsonKey(name: "adminName") String? adminName,@JsonKey(name: "adminEmail") String? adminEmail,@JsonKey(name: "adminPassword") String? adminPassword
});




}
/// @nodoc
class _$RegisterCompanyRequestModelCopyWithImpl<$Res>
    implements $RegisterCompanyRequestModelCopyWith<$Res> {
  _$RegisterCompanyRequestModelCopyWithImpl(this._self, this._then);

  final RegisterCompanyRequestModel _self;
  final $Res Function(RegisterCompanyRequestModel) _then;

/// Create a copy of RegisterCompanyRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyName = freezed,Object? companyEmail = freezed,Object? address = freezed,Object? adminName = freezed,Object? adminEmail = freezed,Object? adminPassword = freezed,}) {
  return _then(_self.copyWith(
companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,companyEmail: freezed == companyEmail ? _self.companyEmail : companyEmail // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,adminName: freezed == adminName ? _self.adminName : adminName // ignore: cast_nullable_to_non_nullable
as String?,adminEmail: freezed == adminEmail ? _self.adminEmail : adminEmail // ignore: cast_nullable_to_non_nullable
as String?,adminPassword: freezed == adminPassword ? _self.adminPassword : adminPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterCompanyRequestModel].
extension RegisterCompanyRequestModelPatterns on RegisterCompanyRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterCompanyRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterCompanyRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterCompanyRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _RegisterCompanyRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterCompanyRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterCompanyRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "companyName")  String? companyName, @JsonKey(name: "companyEmail")  String? companyEmail, @JsonKey(name: "address")  String? address, @JsonKey(name: "adminName")  String? adminName, @JsonKey(name: "adminEmail")  String? adminEmail, @JsonKey(name: "adminPassword")  String? adminPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterCompanyRequestModel() when $default != null:
return $default(_that.companyName,_that.companyEmail,_that.address,_that.adminName,_that.adminEmail,_that.adminPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "companyName")  String? companyName, @JsonKey(name: "companyEmail")  String? companyEmail, @JsonKey(name: "address")  String? address, @JsonKey(name: "adminName")  String? adminName, @JsonKey(name: "adminEmail")  String? adminEmail, @JsonKey(name: "adminPassword")  String? adminPassword)  $default,) {final _that = this;
switch (_that) {
case _RegisterCompanyRequestModel():
return $default(_that.companyName,_that.companyEmail,_that.address,_that.adminName,_that.adminEmail,_that.adminPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "companyName")  String? companyName, @JsonKey(name: "companyEmail")  String? companyEmail, @JsonKey(name: "address")  String? address, @JsonKey(name: "adminName")  String? adminName, @JsonKey(name: "adminEmail")  String? adminEmail, @JsonKey(name: "adminPassword")  String? adminPassword)?  $default,) {final _that = this;
switch (_that) {
case _RegisterCompanyRequestModel() when $default != null:
return $default(_that.companyName,_that.companyEmail,_that.address,_that.adminName,_that.adminEmail,_that.adminPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterCompanyRequestModel implements RegisterCompanyRequestModel {
  const _RegisterCompanyRequestModel({@JsonKey(name: "companyName") this.companyName, @JsonKey(name: "companyEmail") this.companyEmail, @JsonKey(name: "address") this.address, @JsonKey(name: "adminName") this.adminName, @JsonKey(name: "adminEmail") this.adminEmail, @JsonKey(name: "adminPassword") this.adminPassword});
  factory _RegisterCompanyRequestModel.fromJson(Map<String, dynamic> json) => _$RegisterCompanyRequestModelFromJson(json);

@override@JsonKey(name: "companyName") final  String? companyName;
@override@JsonKey(name: "companyEmail") final  String? companyEmail;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "adminName") final  String? adminName;
@override@JsonKey(name: "adminEmail") final  String? adminEmail;
@override@JsonKey(name: "adminPassword") final  String? adminPassword;

/// Create a copy of RegisterCompanyRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterCompanyRequestModelCopyWith<_RegisterCompanyRequestModel> get copyWith => __$RegisterCompanyRequestModelCopyWithImpl<_RegisterCompanyRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterCompanyRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterCompanyRequestModel&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyEmail, companyEmail) || other.companyEmail == companyEmail)&&(identical(other.address, address) || other.address == address)&&(identical(other.adminName, adminName) || other.adminName == adminName)&&(identical(other.adminEmail, adminEmail) || other.adminEmail == adminEmail)&&(identical(other.adminPassword, adminPassword) || other.adminPassword == adminPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,companyEmail,address,adminName,adminEmail,adminPassword);

@override
String toString() {
  return 'RegisterCompanyRequestModel(companyName: $companyName, companyEmail: $companyEmail, address: $address, adminName: $adminName, adminEmail: $adminEmail, adminPassword: $adminPassword)';
}


}

/// @nodoc
abstract mixin class _$RegisterCompanyRequestModelCopyWith<$Res> implements $RegisterCompanyRequestModelCopyWith<$Res> {
  factory _$RegisterCompanyRequestModelCopyWith(_RegisterCompanyRequestModel value, $Res Function(_RegisterCompanyRequestModel) _then) = __$RegisterCompanyRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "companyName") String? companyName,@JsonKey(name: "companyEmail") String? companyEmail,@JsonKey(name: "address") String? address,@JsonKey(name: "adminName") String? adminName,@JsonKey(name: "adminEmail") String? adminEmail,@JsonKey(name: "adminPassword") String? adminPassword
});




}
/// @nodoc
class __$RegisterCompanyRequestModelCopyWithImpl<$Res>
    implements _$RegisterCompanyRequestModelCopyWith<$Res> {
  __$RegisterCompanyRequestModelCopyWithImpl(this._self, this._then);

  final _RegisterCompanyRequestModel _self;
  final $Res Function(_RegisterCompanyRequestModel) _then;

/// Create a copy of RegisterCompanyRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyName = freezed,Object? companyEmail = freezed,Object? address = freezed,Object? adminName = freezed,Object? adminEmail = freezed,Object? adminPassword = freezed,}) {
  return _then(_RegisterCompanyRequestModel(
companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,companyEmail: freezed == companyEmail ? _self.companyEmail : companyEmail // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,adminName: freezed == adminName ? _self.adminName : adminName // ignore: cast_nullable_to_non_nullable
as String?,adminEmail: freezed == adminEmail ? _self.adminEmail : adminEmail // ignore: cast_nullable_to_non_nullable
as String?,adminPassword: freezed == adminPassword ? _self.adminPassword : adminPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
