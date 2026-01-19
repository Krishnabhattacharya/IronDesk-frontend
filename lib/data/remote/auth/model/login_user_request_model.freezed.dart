// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginUserRequestModel {

@JsonKey(name: "email") String? get email;@JsonKey(name: "password") String? get password;
/// Create a copy of LoginUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginUserRequestModelCopyWith<LoginUserRequestModel> get copyWith => _$LoginUserRequestModelCopyWithImpl<LoginUserRequestModel>(this as LoginUserRequestModel, _$identity);

  /// Serializes this LoginUserRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginUserRequestModel&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginUserRequestModel(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginUserRequestModelCopyWith<$Res>  {
  factory $LoginUserRequestModelCopyWith(LoginUserRequestModel value, $Res Function(LoginUserRequestModel) _then) = _$LoginUserRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "email") String? email,@JsonKey(name: "password") String? password
});




}
/// @nodoc
class _$LoginUserRequestModelCopyWithImpl<$Res>
    implements $LoginUserRequestModelCopyWith<$Res> {
  _$LoginUserRequestModelCopyWithImpl(this._self, this._then);

  final LoginUserRequestModel _self;
  final $Res Function(LoginUserRequestModel) _then;

/// Create a copy of LoginUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? password = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginUserRequestModel].
extension LoginUserRequestModelPatterns on LoginUserRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginUserRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginUserRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginUserRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginUserRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginUserRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginUserRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "email")  String? email, @JsonKey(name: "password")  String? password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginUserRequestModel() when $default != null:
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "email")  String? email, @JsonKey(name: "password")  String? password)  $default,) {final _that = this;
switch (_that) {
case _LoginUserRequestModel():
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "email")  String? email, @JsonKey(name: "password")  String? password)?  $default,) {final _that = this;
switch (_that) {
case _LoginUserRequestModel() when $default != null:
return $default(_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginUserRequestModel implements LoginUserRequestModel {
  const _LoginUserRequestModel({@JsonKey(name: "email") this.email, @JsonKey(name: "password") this.password});
  factory _LoginUserRequestModel.fromJson(Map<String, dynamic> json) => _$LoginUserRequestModelFromJson(json);

@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "password") final  String? password;

/// Create a copy of LoginUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginUserRequestModelCopyWith<_LoginUserRequestModel> get copyWith => __$LoginUserRequestModelCopyWithImpl<_LoginUserRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginUserRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginUserRequestModel&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginUserRequestModel(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginUserRequestModelCopyWith<$Res> implements $LoginUserRequestModelCopyWith<$Res> {
  factory _$LoginUserRequestModelCopyWith(_LoginUserRequestModel value, $Res Function(_LoginUserRequestModel) _then) = __$LoginUserRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "email") String? email,@JsonKey(name: "password") String? password
});




}
/// @nodoc
class __$LoginUserRequestModelCopyWithImpl<$Res>
    implements _$LoginUserRequestModelCopyWith<$Res> {
  __$LoginUserRequestModelCopyWithImpl(this._self, this._then);

  final _LoginUserRequestModel _self;
  final $Res Function(_LoginUserRequestModel) _then;

/// Create a copy of LoginUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? password = freezed,}) {
  return _then(_LoginUserRequestModel(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
