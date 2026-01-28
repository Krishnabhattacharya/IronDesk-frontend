// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterUserRequestModel {

@JsonKey(name: "name") String? get name;@JsonKey(name: "email") String? get email;@JsonKey(name: "password") String? get password;@JsonKey(name: "companyId") String? get companyId;@JsonKey(name: "role") String? get role;
/// Create a copy of RegisterUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterUserRequestModelCopyWith<RegisterUserRequestModel> get copyWith => _$RegisterUserRequestModelCopyWithImpl<RegisterUserRequestModel>(this as RegisterUserRequestModel, _$identity);

  /// Serializes this RegisterUserRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterUserRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,password,companyId,role);

@override
String toString() {
  return 'RegisterUserRequestModel(name: $name, email: $email, password: $password, companyId: $companyId, role: $role)';
}


}

/// @nodoc
abstract mixin class $RegisterUserRequestModelCopyWith<$Res>  {
  factory $RegisterUserRequestModelCopyWith(RegisterUserRequestModel value, $Res Function(RegisterUserRequestModel) _then) = _$RegisterUserRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email,@JsonKey(name: "password") String? password,@JsonKey(name: "companyId") String? companyId,@JsonKey(name: "role") String? role
});




}
/// @nodoc
class _$RegisterUserRequestModelCopyWithImpl<$Res>
    implements $RegisterUserRequestModelCopyWith<$Res> {
  _$RegisterUserRequestModelCopyWithImpl(this._self, this._then);

  final RegisterUserRequestModel _self;
  final $Res Function(RegisterUserRequestModel) _then;

/// Create a copy of RegisterUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? email = freezed,Object? password = freezed,Object? companyId = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterUserRequestModel].
extension RegisterUserRequestModelPatterns on RegisterUserRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterUserRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterUserRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterUserRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _RegisterUserRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterUserRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterUserRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "password")  String? password, @JsonKey(name: "companyId")  String? companyId, @JsonKey(name: "role")  String? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterUserRequestModel() when $default != null:
return $default(_that.name,_that.email,_that.password,_that.companyId,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "password")  String? password, @JsonKey(name: "companyId")  String? companyId, @JsonKey(name: "role")  String? role)  $default,) {final _that = this;
switch (_that) {
case _RegisterUserRequestModel():
return $default(_that.name,_that.email,_that.password,_that.companyId,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "password")  String? password, @JsonKey(name: "companyId")  String? companyId, @JsonKey(name: "role")  String? role)?  $default,) {final _that = this;
switch (_that) {
case _RegisterUserRequestModel() when $default != null:
return $default(_that.name,_that.email,_that.password,_that.companyId,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterUserRequestModel implements RegisterUserRequestModel {
  const _RegisterUserRequestModel({@JsonKey(name: "name") this.name, @JsonKey(name: "email") this.email, @JsonKey(name: "password") this.password, @JsonKey(name: "companyId") this.companyId, @JsonKey(name: "role") this.role});
  factory _RegisterUserRequestModel.fromJson(Map<String, dynamic> json) => _$RegisterUserRequestModelFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "password") final  String? password;
@override@JsonKey(name: "companyId") final  String? companyId;
@override@JsonKey(name: "role") final  String? role;

/// Create a copy of RegisterUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterUserRequestModelCopyWith<_RegisterUserRequestModel> get copyWith => __$RegisterUserRequestModelCopyWithImpl<_RegisterUserRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterUserRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterUserRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,password,companyId,role);

@override
String toString() {
  return 'RegisterUserRequestModel(name: $name, email: $email, password: $password, companyId: $companyId, role: $role)';
}


}

/// @nodoc
abstract mixin class _$RegisterUserRequestModelCopyWith<$Res> implements $RegisterUserRequestModelCopyWith<$Res> {
  factory _$RegisterUserRequestModelCopyWith(_RegisterUserRequestModel value, $Res Function(_RegisterUserRequestModel) _then) = __$RegisterUserRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email,@JsonKey(name: "password") String? password,@JsonKey(name: "companyId") String? companyId,@JsonKey(name: "role") String? role
});




}
/// @nodoc
class __$RegisterUserRequestModelCopyWithImpl<$Res>
    implements _$RegisterUserRequestModelCopyWith<$Res> {
  __$RegisterUserRequestModelCopyWithImpl(this._self, this._then);

  final _RegisterUserRequestModel _self;
  final $Res Function(_RegisterUserRequestModel) _then;

/// Create a copy of RegisterUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? email = freezed,Object? password = freezed,Object? companyId = freezed,Object? role = freezed,}) {
  return _then(_RegisterUserRequestModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
