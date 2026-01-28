// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_attendence_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodayAttendenceResponseModel {

@JsonKey(name: "statusCode") int? get statusCode;@JsonKey(name: "data") Data? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "success") bool? get success;
/// Create a copy of TodayAttendenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayAttendenceResponseModelCopyWith<TodayAttendenceResponseModel> get copyWith => _$TodayAttendenceResponseModelCopyWithImpl<TodayAttendenceResponseModel>(this as TodayAttendenceResponseModel, _$identity);

  /// Serializes this TodayAttendenceResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayAttendenceResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'TodayAttendenceResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $TodayAttendenceResponseModelCopyWith<$Res>  {
  factory $TodayAttendenceResponseModelCopyWith(TodayAttendenceResponseModel value, $Res Function(TodayAttendenceResponseModel) _then) = _$TodayAttendenceResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$TodayAttendenceResponseModelCopyWithImpl<$Res>
    implements $TodayAttendenceResponseModelCopyWith<$Res> {
  _$TodayAttendenceResponseModelCopyWithImpl(this._self, this._then);

  final TodayAttendenceResponseModel _self;
  final $Res Function(TodayAttendenceResponseModel) _then;

/// Create a copy of TodayAttendenceResponseModel
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
/// Create a copy of TodayAttendenceResponseModel
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


/// Adds pattern-matching-related methods to [TodayAttendenceResponseModel].
extension TodayAttendenceResponseModelPatterns on TodayAttendenceResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodayAttendenceResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodayAttendenceResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodayAttendenceResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _TodayAttendenceResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodayAttendenceResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _TodayAttendenceResponseModel() when $default != null:
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
case _TodayAttendenceResponseModel() when $default != null:
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
case _TodayAttendenceResponseModel():
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
case _TodayAttendenceResponseModel() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodayAttendenceResponseModel implements TodayAttendenceResponseModel {
  const _TodayAttendenceResponseModel({@JsonKey(name: "statusCode") this.statusCode, @JsonKey(name: "data") this.data, @JsonKey(name: "message") this.message, @JsonKey(name: "success") this.success});
  factory _TodayAttendenceResponseModel.fromJson(Map<String, dynamic> json) => _$TodayAttendenceResponseModelFromJson(json);

@override@JsonKey(name: "statusCode") final  int? statusCode;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "success") final  bool? success;

/// Create a copy of TodayAttendenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodayAttendenceResponseModelCopyWith<_TodayAttendenceResponseModel> get copyWith => __$TodayAttendenceResponseModelCopyWithImpl<_TodayAttendenceResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodayAttendenceResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodayAttendenceResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'TodayAttendenceResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$TodayAttendenceResponseModelCopyWith<$Res> implements $TodayAttendenceResponseModelCopyWith<$Res> {
  factory _$TodayAttendenceResponseModelCopyWith(_TodayAttendenceResponseModel value, $Res Function(_TodayAttendenceResponseModel) _then) = __$TodayAttendenceResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$TodayAttendenceResponseModelCopyWithImpl<$Res>
    implements _$TodayAttendenceResponseModelCopyWith<$Res> {
  __$TodayAttendenceResponseModelCopyWithImpl(this._self, this._then);

  final _TodayAttendenceResponseModel _self;
  final $Res Function(_TodayAttendenceResponseModel) _then;

/// Create a copy of TodayAttendenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_TodayAttendenceResponseModel(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of TodayAttendenceResponseModel
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

@JsonKey(name: "checkInLocation") CheckInLocation? get checkInLocation;@JsonKey(name: "_id") String? get id;@JsonKey(name: "employeeId") String? get employeeId;@JsonKey(name: "date") DateTime? get date;@JsonKey(name: "checkInTime") DateTime? get checkInTime;@JsonKey(name: "checkOutTime") DateTime? get checkOutTime;@JsonKey(name: "method") String? get method;@JsonKey(name: "status") String? get status;@JsonKey(name: "isVerified") bool? get isVerified;@JsonKey(name: "verificationStatus") String? get verificationStatus;@JsonKey(name: "createdAt") DateTime? get createdAt;@JsonKey(name: "updatedAt") DateTime? get updatedAt;@JsonKey(name: "__v") int? get v;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkInLocation,id,employeeId,date,checkInTime,checkOutTime,method,status,isVerified,verificationStatus,createdAt,updatedAt,v);

@override
String toString() {
  return 'Data(checkInLocation: $checkInLocation, id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, method: $method, status: $status, isVerified: $isVerified, verificationStatus: $verificationStatus, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "checkInLocation") CheckInLocation? checkInLocation,@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") String? employeeId,@JsonKey(name: "date") DateTime? date,@JsonKey(name: "checkInTime") DateTime? checkInTime,@JsonKey(name: "checkOutTime") DateTime? checkOutTime,@JsonKey(name: "method") String? method,@JsonKey(name: "status") String? status,@JsonKey(name: "isVerified") bool? isVerified,@JsonKey(name: "verificationStatus") String? verificationStatus,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v
});


$CheckInLocationCopyWith<$Res>? get checkInLocation;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? checkInLocation = freezed,Object? id = freezed,Object? employeeId = freezed,Object? date = freezed,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? method = freezed,Object? status = freezed,Object? isVerified = freezed,Object? verificationStatus = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(_self.copyWith(
checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as CheckInLocation?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckInLocationCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $CheckInLocationCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "checkInLocation")  CheckInLocation? checkInLocation, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  String? employeeId, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "isVerified")  bool? isVerified, @JsonKey(name: "verificationStatus")  String? verificationStatus, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.checkInLocation,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.method,_that.status,_that.isVerified,_that.verificationStatus,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "checkInLocation")  CheckInLocation? checkInLocation, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  String? employeeId, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "isVerified")  bool? isVerified, @JsonKey(name: "verificationStatus")  String? verificationStatus, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.checkInLocation,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.method,_that.status,_that.isVerified,_that.verificationStatus,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "checkInLocation")  CheckInLocation? checkInLocation, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  String? employeeId, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "isVerified")  bool? isVerified, @JsonKey(name: "verificationStatus")  String? verificationStatus, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.checkInLocation,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.method,_that.status,_that.isVerified,_that.verificationStatus,_that.createdAt,_that.updatedAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "checkInLocation") this.checkInLocation, @JsonKey(name: "_id") this.id, @JsonKey(name: "employeeId") this.employeeId, @JsonKey(name: "date") this.date, @JsonKey(name: "checkInTime") this.checkInTime, @JsonKey(name: "checkOutTime") this.checkOutTime, @JsonKey(name: "method") this.method, @JsonKey(name: "status") this.status, @JsonKey(name: "isVerified") this.isVerified, @JsonKey(name: "verificationStatus") this.verificationStatus, @JsonKey(name: "createdAt") this.createdAt, @JsonKey(name: "updatedAt") this.updatedAt, @JsonKey(name: "__v") this.v});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "checkInLocation") final  CheckInLocation? checkInLocation;
@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "employeeId") final  String? employeeId;
@override@JsonKey(name: "date") final  DateTime? date;
@override@JsonKey(name: "checkInTime") final  DateTime? checkInTime;
@override@JsonKey(name: "checkOutTime") final  DateTime? checkOutTime;
@override@JsonKey(name: "method") final  String? method;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "isVerified") final  bool? isVerified;
@override@JsonKey(name: "verificationStatus") final  String? verificationStatus;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt") final  DateTime? updatedAt;
@override@JsonKey(name: "__v") final  int? v;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkInLocation,id,employeeId,date,checkInTime,checkOutTime,method,status,isVerified,verificationStatus,createdAt,updatedAt,v);

@override
String toString() {
  return 'Data(checkInLocation: $checkInLocation, id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, method: $method, status: $status, isVerified: $isVerified, verificationStatus: $verificationStatus, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "checkInLocation") CheckInLocation? checkInLocation,@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") String? employeeId,@JsonKey(name: "date") DateTime? date,@JsonKey(name: "checkInTime") DateTime? checkInTime,@JsonKey(name: "checkOutTime") DateTime? checkOutTime,@JsonKey(name: "method") String? method,@JsonKey(name: "status") String? status,@JsonKey(name: "isVerified") bool? isVerified,@JsonKey(name: "verificationStatus") String? verificationStatus,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v
});


@override $CheckInLocationCopyWith<$Res>? get checkInLocation;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? checkInLocation = freezed,Object? id = freezed,Object? employeeId = freezed,Object? date = freezed,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? method = freezed,Object? status = freezed,Object? isVerified = freezed,Object? verificationStatus = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(_Data(
checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as CheckInLocation?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckInLocationCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $CheckInLocationCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
  });
}
}


/// @nodoc
mixin _$CheckInLocation {

@JsonKey(name: "lat") double? get lat;@JsonKey(name: "lng") double? get lng;
/// Create a copy of CheckInLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckInLocationCopyWith<CheckInLocation> get copyWith => _$CheckInLocationCopyWithImpl<CheckInLocation>(this as CheckInLocation, _$identity);

  /// Serializes this CheckInLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckInLocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'CheckInLocation(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $CheckInLocationCopyWith<$Res>  {
  factory $CheckInLocationCopyWith(CheckInLocation value, $Res Function(CheckInLocation) _then) = _$CheckInLocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "lat") double? lat,@JsonKey(name: "lng") double? lng
});




}
/// @nodoc
class _$CheckInLocationCopyWithImpl<$Res>
    implements $CheckInLocationCopyWith<$Res> {
  _$CheckInLocationCopyWithImpl(this._self, this._then);

  final CheckInLocation _self;
  final $Res Function(CheckInLocation) _then;

/// Create a copy of CheckInLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_self.copyWith(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckInLocation].
extension CheckInLocationPatterns on CheckInLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckInLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckInLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckInLocation value)  $default,){
final _that = this;
switch (_that) {
case _CheckInLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckInLocation value)?  $default,){
final _that = this;
switch (_that) {
case _CheckInLocation() when $default != null:
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
case _CheckInLocation() when $default != null:
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
case _CheckInLocation():
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
case _CheckInLocation() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckInLocation implements CheckInLocation {
  const _CheckInLocation({@JsonKey(name: "lat") this.lat, @JsonKey(name: "lng") this.lng});
  factory _CheckInLocation.fromJson(Map<String, dynamic> json) => _$CheckInLocationFromJson(json);

@override@JsonKey(name: "lat") final  double? lat;
@override@JsonKey(name: "lng") final  double? lng;

/// Create a copy of CheckInLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckInLocationCopyWith<_CheckInLocation> get copyWith => __$CheckInLocationCopyWithImpl<_CheckInLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckInLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckInLocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'CheckInLocation(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$CheckInLocationCopyWith<$Res> implements $CheckInLocationCopyWith<$Res> {
  factory _$CheckInLocationCopyWith(_CheckInLocation value, $Res Function(_CheckInLocation) _then) = __$CheckInLocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "lat") double? lat,@JsonKey(name: "lng") double? lng
});




}
/// @nodoc
class __$CheckInLocationCopyWithImpl<$Res>
    implements _$CheckInLocationCopyWith<$Res> {
  __$CheckInLocationCopyWithImpl(this._self, this._then);

  final _CheckInLocation _self;
  final $Res Function(_CheckInLocation) _then;

/// Create a copy of CheckInLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_CheckInLocation(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
