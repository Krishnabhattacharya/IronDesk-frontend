// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_company_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterCompanyResponseModel {

@JsonKey(name: "statusCode") int? get statusCode;@JsonKey(name: "data") Data? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "success") bool? get success;
/// Create a copy of RegisterCompanyResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterCompanyResponseModelCopyWith<RegisterCompanyResponseModel> get copyWith => _$RegisterCompanyResponseModelCopyWithImpl<RegisterCompanyResponseModel>(this as RegisterCompanyResponseModel, _$identity);

  /// Serializes this RegisterCompanyResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterCompanyResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'RegisterCompanyResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $RegisterCompanyResponseModelCopyWith<$Res>  {
  factory $RegisterCompanyResponseModelCopyWith(RegisterCompanyResponseModel value, $Res Function(RegisterCompanyResponseModel) _then) = _$RegisterCompanyResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$RegisterCompanyResponseModelCopyWithImpl<$Res>
    implements $RegisterCompanyResponseModelCopyWith<$Res> {
  _$RegisterCompanyResponseModelCopyWithImpl(this._self, this._then);

  final RegisterCompanyResponseModel _self;
  final $Res Function(RegisterCompanyResponseModel) _then;

/// Create a copy of RegisterCompanyResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_self.copyWith(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of RegisterCompanyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterCompanyResponseModel].
extension RegisterCompanyResponseModelPatterns on RegisterCompanyResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterCompanyResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterCompanyResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterCompanyResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RegisterCompanyResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterCompanyResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterCompanyResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "statusCode")  int? statusCode, @JsonKey(name: "data")  Data? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "success")  bool? success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterCompanyResponseModel() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "statusCode")  int? statusCode, @JsonKey(name: "data")  Data? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "success")  bool? success)  $default,) {final _that = this;
switch (_that) {
case _RegisterCompanyResponseModel():
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "statusCode")  int? statusCode, @JsonKey(name: "data")  Data? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "success")  bool? success)?  $default,) {final _that = this;
switch (_that) {
case _RegisterCompanyResponseModel() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterCompanyResponseModel implements RegisterCompanyResponseModel {
  const _RegisterCompanyResponseModel({@JsonKey(name: "statusCode") this.statusCode, @JsonKey(name: "data") this.data, @JsonKey(name: "message") this.message, @JsonKey(name: "success") this.success});
  factory _RegisterCompanyResponseModel.fromJson(Map<String, dynamic> json) => _$RegisterCompanyResponseModelFromJson(json);

@override@JsonKey(name: "statusCode") final  int? statusCode;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "success") final  bool? success;

/// Create a copy of RegisterCompanyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterCompanyResponseModelCopyWith<_RegisterCompanyResponseModel> get copyWith => __$RegisterCompanyResponseModelCopyWithImpl<_RegisterCompanyResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterCompanyResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterCompanyResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'RegisterCompanyResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$RegisterCompanyResponseModelCopyWith<$Res> implements $RegisterCompanyResponseModelCopyWith<$Res> {
  factory _$RegisterCompanyResponseModelCopyWith(_RegisterCompanyResponseModel value, $Res Function(_RegisterCompanyResponseModel) _then) = __$RegisterCompanyResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$RegisterCompanyResponseModelCopyWithImpl<$Res>
    implements _$RegisterCompanyResponseModelCopyWith<$Res> {
  __$RegisterCompanyResponseModelCopyWithImpl(this._self, this._then);

  final _RegisterCompanyResponseModel _self;
  final $Res Function(_RegisterCompanyResponseModel) _then;

/// Create a copy of RegisterCompanyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_RegisterCompanyResponseModel(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of RegisterCompanyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

@JsonKey(name: "user") User? get user;@JsonKey(name: "company") Company? get company;@JsonKey(name: "accessToken") String? get accessToken;@JsonKey(name: "refreshToken") String? get refreshToken;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.user, user) || other.user == user)&&(identical(other.company, company) || other.company == company)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,company,accessToken,refreshToken);

@override
String toString() {
  return 'Data(user: $user, company: $company, accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "user") User? user,@JsonKey(name: "company") Company? company,@JsonKey(name: "accessToken") String? accessToken,@JsonKey(name: "refreshToken") String? refreshToken
});


$UserCopyWith<$Res>? get user;$CompanyCopyWith<$Res>? get company;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? company = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $CompanyCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "user")  User? user, @JsonKey(name: "company")  Company? company, @JsonKey(name: "accessToken")  String? accessToken, @JsonKey(name: "refreshToken")  String? refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.user,_that.company,_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "user")  User? user, @JsonKey(name: "company")  Company? company, @JsonKey(name: "accessToken")  String? accessToken, @JsonKey(name: "refreshToken")  String? refreshToken)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.user,_that.company,_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "user")  User? user, @JsonKey(name: "company")  Company? company, @JsonKey(name: "accessToken")  String? accessToken, @JsonKey(name: "refreshToken")  String? refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.user,_that.company,_that.accessToken,_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "user") this.user, @JsonKey(name: "company") this.company, @JsonKey(name: "accessToken") this.accessToken, @JsonKey(name: "refreshToken") this.refreshToken});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "user") final  User? user;
@override@JsonKey(name: "company") final  Company? company;
@override@JsonKey(name: "accessToken") final  String? accessToken;
@override@JsonKey(name: "refreshToken") final  String? refreshToken;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.user, user) || other.user == user)&&(identical(other.company, company) || other.company == company)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,company,accessToken,refreshToken);

@override
String toString() {
  return 'Data(user: $user, company: $company, accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "user") User? user,@JsonKey(name: "company") Company? company,@JsonKey(name: "accessToken") String? accessToken,@JsonKey(name: "refreshToken") String? refreshToken
});


@override $UserCopyWith<$Res>? get user;@override $CompanyCopyWith<$Res>? get company;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? company = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,}) {
  return _then(_Data(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $CompanyCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// @nodoc
mixin _$Company {

@JsonKey(name: "name") String? get name;@JsonKey(name: "email") String? get email;@JsonKey(name: "address") String? get address;@JsonKey(name: "_id") String? get id;@JsonKey(name: "createdAt") DateTime? get createdAt;@JsonKey(name: "updatedAt") DateTime? get updatedAt;@JsonKey(name: "__v") int? get v;
/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyCopyWith<Company> get copyWith => _$CompanyCopyWithImpl<Company>(this as Company, _$identity);

  /// Serializes this Company to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Company&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,address,id,createdAt,updatedAt,v);

@override
String toString() {
  return 'Company(name: $name, email: $email, address: $address, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $CompanyCopyWith<$Res>  {
  factory $CompanyCopyWith(Company value, $Res Function(Company) _then) = _$CompanyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email,@JsonKey(name: "address") String? address,@JsonKey(name: "_id") String? id,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v
});




}
/// @nodoc
class _$CompanyCopyWithImpl<$Res>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._self, this._then);

  final Company _self;
  final $Res Function(Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? email = freezed,Object? address = freezed,Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Company].
extension CompanyPatterns on Company {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Company value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Company() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Company value)  $default,){
final _that = this;
switch (_that) {
case _Company():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Company value)?  $default,){
final _that = this;
switch (_that) {
case _Company() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "address")  String? address, @JsonKey(name: "_id")  String? id, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.name,_that.email,_that.address,_that.id,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "address")  String? address, @JsonKey(name: "_id")  String? id, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)  $default,) {final _that = this;
switch (_that) {
case _Company():
return $default(_that.name,_that.email,_that.address,_that.id,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "address")  String? address, @JsonKey(name: "_id")  String? id, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)?  $default,) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.name,_that.email,_that.address,_that.id,_that.createdAt,_that.updatedAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Company implements Company {
  const _Company({@JsonKey(name: "name") this.name, @JsonKey(name: "email") this.email, @JsonKey(name: "address") this.address, @JsonKey(name: "_id") this.id, @JsonKey(name: "createdAt") this.createdAt, @JsonKey(name: "updatedAt") this.updatedAt, @JsonKey(name: "__v") this.v});
  factory _Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt") final  DateTime? updatedAt;
@override@JsonKey(name: "__v") final  int? v;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyCopyWith<_Company> get copyWith => __$CompanyCopyWithImpl<_Company>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Company&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,address,id,createdAt,updatedAt,v);

@override
String toString() {
  return 'Company(name: $name, email: $email, address: $address, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) _then) = __$CompanyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email,@JsonKey(name: "address") String? address,@JsonKey(name: "_id") String? id,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v
});




}
/// @nodoc
class __$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(this._self, this._then);

  final _Company _self;
  final $Res Function(_Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? email = freezed,Object? address = freezed,Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(_Company(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$User {

@JsonKey(name: "_id") String? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "email") String? get email;@JsonKey(name: "role") String? get role;@JsonKey(name: "isActive") bool? get isActive;@JsonKey(name: "approvals") List<dynamic>? get approvals;@JsonKey(name: "requests") List<dynamic>? get requests;@JsonKey(name: "company") String? get company;@JsonKey(name: "createdAt") DateTime? get createdAt;@JsonKey(name: "updatedAt") DateTime? get updatedAt;@JsonKey(name: "__v") int? get v;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.approvals, approvals)&&const DeepCollectionEquality().equals(other.requests, requests)&&(identical(other.company, company) || other.company == company)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,role,isActive,const DeepCollectionEquality().hash(approvals),const DeepCollectionEquality().hash(requests),company,createdAt,updatedAt,v);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, role: $role, isActive: $isActive, approvals: $approvals, requests: $requests, company: $company, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email,@JsonKey(name: "role") String? role,@JsonKey(name: "isActive") bool? isActive,@JsonKey(name: "approvals") List<dynamic>? approvals,@JsonKey(name: "requests") List<dynamic>? requests,@JsonKey(name: "company") String? company,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? role = freezed,Object? isActive = freezed,Object? approvals = freezed,Object? requests = freezed,Object? company = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,approvals: freezed == approvals ? _self.approvals : approvals // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,requests: freezed == requests ? _self.requests : requests // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "role")  String? role, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "approvals")  List<dynamic>? approvals, @JsonKey(name: "requests")  List<dynamic>? requests, @JsonKey(name: "company")  String? company, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role,_that.isActive,_that.approvals,_that.requests,_that.company,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "role")  String? role, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "approvals")  List<dynamic>? approvals, @JsonKey(name: "requests")  List<dynamic>? requests, @JsonKey(name: "company")  String? company, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.email,_that.role,_that.isActive,_that.approvals,_that.requests,_that.company,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "role")  String? role, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "approvals")  List<dynamic>? approvals, @JsonKey(name: "requests")  List<dynamic>? requests, @JsonKey(name: "company")  String? company, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role,_that.isActive,_that.approvals,_that.requests,_that.company,_that.createdAt,_that.updatedAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: "_id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "email") this.email, @JsonKey(name: "role") this.role, @JsonKey(name: "isActive") this.isActive, @JsonKey(name: "approvals") final  List<dynamic>? approvals, @JsonKey(name: "requests") final  List<dynamic>? requests, @JsonKey(name: "company") this.company, @JsonKey(name: "createdAt") this.createdAt, @JsonKey(name: "updatedAt") this.updatedAt, @JsonKey(name: "__v") this.v}): _approvals = approvals,_requests = requests;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "role") final  String? role;
@override@JsonKey(name: "isActive") final  bool? isActive;
 final  List<dynamic>? _approvals;
@override@JsonKey(name: "approvals") List<dynamic>? get approvals {
  final value = _approvals;
  if (value == null) return null;
  if (_approvals is EqualUnmodifiableListView) return _approvals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _requests;
@override@JsonKey(name: "requests") List<dynamic>? get requests {
  final value = _requests;
  if (value == null) return null;
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "company") final  String? company;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt") final  DateTime? updatedAt;
@override@JsonKey(name: "__v") final  int? v;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._approvals, _approvals)&&const DeepCollectionEquality().equals(other._requests, _requests)&&(identical(other.company, company) || other.company == company)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,role,isActive,const DeepCollectionEquality().hash(_approvals),const DeepCollectionEquality().hash(_requests),company,createdAt,updatedAt,v);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, role: $role, isActive: $isActive, approvals: $approvals, requests: $requests, company: $company, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email,@JsonKey(name: "role") String? role,@JsonKey(name: "isActive") bool? isActive,@JsonKey(name: "approvals") List<dynamic>? approvals,@JsonKey(name: "requests") List<dynamic>? requests,@JsonKey(name: "company") String? company,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? role = freezed,Object? isActive = freezed,Object? approvals = freezed,Object? requests = freezed,Object? company = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,approvals: freezed == approvals ? _self._approvals : approvals // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,requests: freezed == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
