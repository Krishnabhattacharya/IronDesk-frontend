// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_out_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckOutResponseModel {

@JsonKey(name: "statusCode") int? get statusCode;@JsonKey(name: "data") Data? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "success") bool? get success;
/// Create a copy of CheckOutResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckOutResponseModelCopyWith<CheckOutResponseModel> get copyWith => _$CheckOutResponseModelCopyWithImpl<CheckOutResponseModel>(this as CheckOutResponseModel, _$identity);

  /// Serializes this CheckOutResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckOutResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'CheckOutResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $CheckOutResponseModelCopyWith<$Res>  {
  factory $CheckOutResponseModelCopyWith(CheckOutResponseModel value, $Res Function(CheckOutResponseModel) _then) = _$CheckOutResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$CheckOutResponseModelCopyWithImpl<$Res>
    implements $CheckOutResponseModelCopyWith<$Res> {
  _$CheckOutResponseModelCopyWithImpl(this._self, this._then);

  final CheckOutResponseModel _self;
  final $Res Function(CheckOutResponseModel) _then;

/// Create a copy of CheckOutResponseModel
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
/// Create a copy of CheckOutResponseModel
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


/// Adds pattern-matching-related methods to [CheckOutResponseModel].
extension CheckOutResponseModelPatterns on CheckOutResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckOutResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckOutResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckOutResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckOutResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckOutResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckOutResponseModel() when $default != null:
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
case _CheckOutResponseModel() when $default != null:
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
case _CheckOutResponseModel():
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
case _CheckOutResponseModel() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckOutResponseModel implements CheckOutResponseModel {
  const _CheckOutResponseModel({@JsonKey(name: "statusCode") this.statusCode, @JsonKey(name: "data") this.data, @JsonKey(name: "message") this.message, @JsonKey(name: "success") this.success});
  factory _CheckOutResponseModel.fromJson(Map<String, dynamic> json) => _$CheckOutResponseModelFromJson(json);

@override@JsonKey(name: "statusCode") final  int? statusCode;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "success") final  bool? success;

/// Create a copy of CheckOutResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckOutResponseModelCopyWith<_CheckOutResponseModel> get copyWith => __$CheckOutResponseModelCopyWithImpl<_CheckOutResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckOutResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckOutResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'CheckOutResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$CheckOutResponseModelCopyWith<$Res> implements $CheckOutResponseModelCopyWith<$Res> {
  factory _$CheckOutResponseModelCopyWith(_CheckOutResponseModel value, $Res Function(_CheckOutResponseModel) _then) = __$CheckOutResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$CheckOutResponseModelCopyWithImpl<$Res>
    implements _$CheckOutResponseModelCopyWith<$Res> {
  __$CheckOutResponseModelCopyWithImpl(this._self, this._then);

  final _CheckOutResponseModel _self;
  final $Res Function(_CheckOutResponseModel) _then;

/// Create a copy of CheckOutResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_CheckOutResponseModel(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of CheckOutResponseModel
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

@JsonKey(name: "checkInLocation") CheckLocation? get checkInLocation;@JsonKey(name: "checkOutLocation") CheckLocation? get checkOutLocation;@JsonKey(name: "_id") String? get id;@JsonKey(name: "employeeId") String? get employeeId;@JsonKey(name: "date") DateTime? get date;@JsonKey(name: "checkInTime") DateTime? get checkInTime;@JsonKey(name: "method") String? get method;@JsonKey(name: "status") String? get status;@JsonKey(name: "isVerified") bool? get isVerified;@JsonKey(name: "verificationStatus") String? get verificationStatus;@JsonKey(name: "createdAt") DateTime? get createdAt;@JsonKey(name: "updatedAt") DateTime? get updatedAt;@JsonKey(name: "__v") int? get v;@JsonKey(name: "checkOutTime") DateTime? get checkOutTime;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkInLocation,checkOutLocation,id,employeeId,date,checkInTime,method,status,isVerified,verificationStatus,createdAt,updatedAt,v,checkOutTime);

@override
String toString() {
  return 'Data(checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, method: $method, status: $status, isVerified: $isVerified, verificationStatus: $verificationStatus, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, checkOutTime: $checkOutTime)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "checkInLocation") CheckLocation? checkInLocation,@JsonKey(name: "checkOutLocation") CheckLocation? checkOutLocation,@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") String? employeeId,@JsonKey(name: "date") DateTime? date,@JsonKey(name: "checkInTime") DateTime? checkInTime,@JsonKey(name: "method") String? method,@JsonKey(name: "status") String? status,@JsonKey(name: "isVerified") bool? isVerified,@JsonKey(name: "verificationStatus") String? verificationStatus,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v,@JsonKey(name: "checkOutTime") DateTime? checkOutTime
});


$CheckLocationCopyWith<$Res>? get checkInLocation;$CheckLocationCopyWith<$Res>? get checkOutLocation;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? id = freezed,Object? employeeId = freezed,Object? date = freezed,Object? checkInTime = freezed,Object? method = freezed,Object? status = freezed,Object? isVerified = freezed,Object? verificationStatus = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,Object? checkOutTime = freezed,}) {
  return _then(_self.copyWith(
checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as CheckLocation?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as CheckLocation?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckLocationCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $CheckLocationCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckLocationCopyWith<$Res>? get checkOutLocation {
    if (_self.checkOutLocation == null) {
    return null;
  }

  return $CheckLocationCopyWith<$Res>(_self.checkOutLocation!, (value) {
    return _then(_self.copyWith(checkOutLocation: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "checkInLocation")  CheckLocation? checkInLocation, @JsonKey(name: "checkOutLocation")  CheckLocation? checkOutLocation, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  String? employeeId, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "isVerified")  bool? isVerified, @JsonKey(name: "verificationStatus")  String? verificationStatus, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.checkInLocation,_that.checkOutLocation,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.method,_that.status,_that.isVerified,_that.verificationStatus,_that.createdAt,_that.updatedAt,_that.v,_that.checkOutTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "checkInLocation")  CheckLocation? checkInLocation, @JsonKey(name: "checkOutLocation")  CheckLocation? checkOutLocation, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  String? employeeId, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "isVerified")  bool? isVerified, @JsonKey(name: "verificationStatus")  String? verificationStatus, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.checkInLocation,_that.checkOutLocation,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.method,_that.status,_that.isVerified,_that.verificationStatus,_that.createdAt,_that.updatedAt,_that.v,_that.checkOutTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "checkInLocation")  CheckLocation? checkInLocation, @JsonKey(name: "checkOutLocation")  CheckLocation? checkOutLocation, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  String? employeeId, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "isVerified")  bool? isVerified, @JsonKey(name: "verificationStatus")  String? verificationStatus, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.checkInLocation,_that.checkOutLocation,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.method,_that.status,_that.isVerified,_that.verificationStatus,_that.createdAt,_that.updatedAt,_that.v,_that.checkOutTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "checkInLocation") this.checkInLocation, @JsonKey(name: "checkOutLocation") this.checkOutLocation, @JsonKey(name: "_id") this.id, @JsonKey(name: "employeeId") this.employeeId, @JsonKey(name: "date") this.date, @JsonKey(name: "checkInTime") this.checkInTime, @JsonKey(name: "method") this.method, @JsonKey(name: "status") this.status, @JsonKey(name: "isVerified") this.isVerified, @JsonKey(name: "verificationStatus") this.verificationStatus, @JsonKey(name: "createdAt") this.createdAt, @JsonKey(name: "updatedAt") this.updatedAt, @JsonKey(name: "__v") this.v, @JsonKey(name: "checkOutTime") this.checkOutTime});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "checkInLocation") final  CheckLocation? checkInLocation;
@override@JsonKey(name: "checkOutLocation") final  CheckLocation? checkOutLocation;
@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "employeeId") final  String? employeeId;
@override@JsonKey(name: "date") final  DateTime? date;
@override@JsonKey(name: "checkInTime") final  DateTime? checkInTime;
@override@JsonKey(name: "method") final  String? method;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "isVerified") final  bool? isVerified;
@override@JsonKey(name: "verificationStatus") final  String? verificationStatus;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt") final  DateTime? updatedAt;
@override@JsonKey(name: "__v") final  int? v;
@override@JsonKey(name: "checkOutTime") final  DateTime? checkOutTime;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkInLocation,checkOutLocation,id,employeeId,date,checkInTime,method,status,isVerified,verificationStatus,createdAt,updatedAt,v,checkOutTime);

@override
String toString() {
  return 'Data(checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, method: $method, status: $status, isVerified: $isVerified, verificationStatus: $verificationStatus, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, checkOutTime: $checkOutTime)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "checkInLocation") CheckLocation? checkInLocation,@JsonKey(name: "checkOutLocation") CheckLocation? checkOutLocation,@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") String? employeeId,@JsonKey(name: "date") DateTime? date,@JsonKey(name: "checkInTime") DateTime? checkInTime,@JsonKey(name: "method") String? method,@JsonKey(name: "status") String? status,@JsonKey(name: "isVerified") bool? isVerified,@JsonKey(name: "verificationStatus") String? verificationStatus,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v,@JsonKey(name: "checkOutTime") DateTime? checkOutTime
});


@override $CheckLocationCopyWith<$Res>? get checkInLocation;@override $CheckLocationCopyWith<$Res>? get checkOutLocation;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? id = freezed,Object? employeeId = freezed,Object? date = freezed,Object? checkInTime = freezed,Object? method = freezed,Object? status = freezed,Object? isVerified = freezed,Object? verificationStatus = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,Object? checkOutTime = freezed,}) {
  return _then(_Data(
checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as CheckLocation?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as CheckLocation?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckLocationCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $CheckLocationCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckLocationCopyWith<$Res>? get checkOutLocation {
    if (_self.checkOutLocation == null) {
    return null;
  }

  return $CheckLocationCopyWith<$Res>(_self.checkOutLocation!, (value) {
    return _then(_self.copyWith(checkOutLocation: value));
  });
}
}


/// @nodoc
mixin _$CheckLocation {

@JsonKey(name: "lat") double? get lat;@JsonKey(name: "lng") double? get lng;
/// Create a copy of CheckLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckLocationCopyWith<CheckLocation> get copyWith => _$CheckLocationCopyWithImpl<CheckLocation>(this as CheckLocation, _$identity);

  /// Serializes this CheckLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckLocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'CheckLocation(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $CheckLocationCopyWith<$Res>  {
  factory $CheckLocationCopyWith(CheckLocation value, $Res Function(CheckLocation) _then) = _$CheckLocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "lat") double? lat,@JsonKey(name: "lng") double? lng
});




}
/// @nodoc
class _$CheckLocationCopyWithImpl<$Res>
    implements $CheckLocationCopyWith<$Res> {
  _$CheckLocationCopyWithImpl(this._self, this._then);

  final CheckLocation _self;
  final $Res Function(CheckLocation) _then;

/// Create a copy of CheckLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_self.copyWith(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckLocation].
extension CheckLocationPatterns on CheckLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckLocation value)  $default,){
final _that = this;
switch (_that) {
case _CheckLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckLocation value)?  $default,){
final _that = this;
switch (_that) {
case _CheckLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "lat")  double? lat, @JsonKey(name: "lng")  double? lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckLocation() when $default != null:
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "lat")  double? lat, @JsonKey(name: "lng")  double? lng)  $default,) {final _that = this;
switch (_that) {
case _CheckLocation():
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "lat")  double? lat, @JsonKey(name: "lng")  double? lng)?  $default,) {final _that = this;
switch (_that) {
case _CheckLocation() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckLocation implements CheckLocation {
  const _CheckLocation({@JsonKey(name: "lat") this.lat, @JsonKey(name: "lng") this.lng});
  factory _CheckLocation.fromJson(Map<String, dynamic> json) => _$CheckLocationFromJson(json);

@override@JsonKey(name: "lat") final  double? lat;
@override@JsonKey(name: "lng") final  double? lng;

/// Create a copy of CheckLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckLocationCopyWith<_CheckLocation> get copyWith => __$CheckLocationCopyWithImpl<_CheckLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckLocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'CheckLocation(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$CheckLocationCopyWith<$Res> implements $CheckLocationCopyWith<$Res> {
  factory _$CheckLocationCopyWith(_CheckLocation value, $Res Function(_CheckLocation) _then) = __$CheckLocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "lat") double? lat,@JsonKey(name: "lng") double? lng
});




}
/// @nodoc
class __$CheckLocationCopyWithImpl<$Res>
    implements _$CheckLocationCopyWith<$Res> {
  __$CheckLocationCopyWithImpl(this._self, this._then);

  final _CheckLocation _self;
  final $Res Function(_CheckLocation) _then;

/// Create a copy of CheckLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_CheckLocation(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
