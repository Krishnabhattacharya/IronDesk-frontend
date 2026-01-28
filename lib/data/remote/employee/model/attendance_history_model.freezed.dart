// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceHistoryResponse {

@JsonKey(name: "statusCode") int? get statusCode;@JsonKey(name: "data") List<AttendanceRecord>? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "success") bool? get success;
/// Create a copy of AttendanceHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryResponseCopyWith<AttendanceHistoryResponse> get copyWith => _$AttendanceHistoryResponseCopyWithImpl<AttendanceHistoryResponse>(this as AttendanceHistoryResponse, _$identity);

  /// Serializes this AttendanceHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(data),message,success);

@override
String toString() {
  return 'AttendanceHistoryResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryResponseCopyWith<$Res>  {
  factory $AttendanceHistoryResponseCopyWith(AttendanceHistoryResponse value, $Res Function(AttendanceHistoryResponse) _then) = _$AttendanceHistoryResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") List<AttendanceRecord>? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});




}
/// @nodoc
class _$AttendanceHistoryResponseCopyWithImpl<$Res>
    implements $AttendanceHistoryResponseCopyWith<$Res> {
  _$AttendanceHistoryResponseCopyWithImpl(this._self, this._then);

  final AttendanceHistoryResponse _self;
  final $Res Function(AttendanceHistoryResponse) _then;

/// Create a copy of AttendanceHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_self.copyWith(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecord>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceHistoryResponse].
extension AttendanceHistoryResponsePatterns on AttendanceHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "statusCode")  int? statusCode, @JsonKey(name: "data")  List<AttendanceRecord>? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "success")  bool? success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "statusCode")  int? statusCode, @JsonKey(name: "data")  List<AttendanceRecord>? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "success")  bool? success)  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "statusCode")  int? statusCode, @JsonKey(name: "data")  List<AttendanceRecord>? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "success")  bool? success)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryResponse() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceHistoryResponse implements AttendanceHistoryResponse {
  const _AttendanceHistoryResponse({@JsonKey(name: "statusCode") this.statusCode, @JsonKey(name: "data") final  List<AttendanceRecord>? data, @JsonKey(name: "message") this.message, @JsonKey(name: "success") this.success}): _data = data;
  factory _AttendanceHistoryResponse.fromJson(Map<String, dynamic> json) => _$AttendanceHistoryResponseFromJson(json);

@override@JsonKey(name: "statusCode") final  int? statusCode;
 final  List<AttendanceRecord>? _data;
@override@JsonKey(name: "data") List<AttendanceRecord>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "success") final  bool? success;

/// Create a copy of AttendanceHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryResponseCopyWith<_AttendanceHistoryResponse> get copyWith => __$AttendanceHistoryResponseCopyWithImpl<_AttendanceHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(_data),message,success);

@override
String toString() {
  return 'AttendanceHistoryResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryResponseCopyWith<$Res> implements $AttendanceHistoryResponseCopyWith<$Res> {
  factory _$AttendanceHistoryResponseCopyWith(_AttendanceHistoryResponse value, $Res Function(_AttendanceHistoryResponse) _then) = __$AttendanceHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") List<AttendanceRecord>? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});




}
/// @nodoc
class __$AttendanceHistoryResponseCopyWithImpl<$Res>
    implements _$AttendanceHistoryResponseCopyWith<$Res> {
  __$AttendanceHistoryResponseCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryResponse _self;
  final $Res Function(_AttendanceHistoryResponse) _then;

/// Create a copy of AttendanceHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_AttendanceHistoryResponse(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecord>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$AttendanceRecord {

@JsonKey(name: "checkInLocation") Location? get checkInLocation;@JsonKey(name: "checkOutLocation") Location? get checkOutLocation;@JsonKey(name: "isVerified") bool? get isVerified;@JsonKey(name: "verificationStatus") String? get verificationStatus;@JsonKey(name: "_id") String? get id;@JsonKey(name: "employeeId") String? get employeeId;@JsonKey(name: "date") String? get date;@JsonKey(name: "checkInTime") DateTime? get checkInTime;@JsonKey(name: "checkOutTime") DateTime? get checkOutTime;@JsonKey(name: "method") String? get method;@JsonKey(name: "status") String? get status;@JsonKey(name: "createdAt") DateTime? get createdAt;@JsonKey(name: "updatedAt") DateTime? get updatedAt;@JsonKey(name: "__v") int? get v;
/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceRecordCopyWith<AttendanceRecord> get copyWith => _$AttendanceRecordCopyWithImpl<AttendanceRecord>(this as AttendanceRecord, _$identity);

  /// Serializes this AttendanceRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceRecord&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkInLocation,checkOutLocation,isVerified,verificationStatus,id,employeeId,date,checkInTime,checkOutTime,method,status,createdAt,updatedAt,v);

@override
String toString() {
  return 'AttendanceRecord(checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, isVerified: $isVerified, verificationStatus: $verificationStatus, id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, method: $method, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $AttendanceRecordCopyWith<$Res>  {
  factory $AttendanceRecordCopyWith(AttendanceRecord value, $Res Function(AttendanceRecord) _then) = _$AttendanceRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "checkInLocation") Location? checkInLocation,@JsonKey(name: "checkOutLocation") Location? checkOutLocation,@JsonKey(name: "isVerified") bool? isVerified,@JsonKey(name: "verificationStatus") String? verificationStatus,@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") String? employeeId,@JsonKey(name: "date") String? date,@JsonKey(name: "checkInTime") DateTime? checkInTime,@JsonKey(name: "checkOutTime") DateTime? checkOutTime,@JsonKey(name: "method") String? method,@JsonKey(name: "status") String? status,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v
});


$LocationCopyWith<$Res>? get checkInLocation;$LocationCopyWith<$Res>? get checkOutLocation;

}
/// @nodoc
class _$AttendanceRecordCopyWithImpl<$Res>
    implements $AttendanceRecordCopyWith<$Res> {
  _$AttendanceRecordCopyWithImpl(this._self, this._then);

  final AttendanceRecord _self;
  final $Res Function(AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? isVerified = freezed,Object? verificationStatus = freezed,Object? id = freezed,Object? employeeId = freezed,Object? date = freezed,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? method = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(_self.copyWith(
checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as Location?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as Location?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
  });
}/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get checkOutLocation {
    if (_self.checkOutLocation == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.checkOutLocation!, (value) {
    return _then(_self.copyWith(checkOutLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceRecord].
extension AttendanceRecordPatterns on AttendanceRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceRecord value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceRecord value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "checkInLocation")  Location? checkInLocation, @JsonKey(name: "checkOutLocation")  Location? checkOutLocation, @JsonKey(name: "isVerified")  bool? isVerified, @JsonKey(name: "verificationStatus")  String? verificationStatus, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  String? employeeId, @JsonKey(name: "date")  String? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.checkInLocation,_that.checkOutLocation,_that.isVerified,_that.verificationStatus,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.method,_that.status,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "checkInLocation")  Location? checkInLocation, @JsonKey(name: "checkOutLocation")  Location? checkOutLocation, @JsonKey(name: "isVerified")  bool? isVerified, @JsonKey(name: "verificationStatus")  String? verificationStatus, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  String? employeeId, @JsonKey(name: "date")  String? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord():
return $default(_that.checkInLocation,_that.checkOutLocation,_that.isVerified,_that.verificationStatus,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.method,_that.status,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "checkInLocation")  Location? checkInLocation, @JsonKey(name: "checkOutLocation")  Location? checkOutLocation, @JsonKey(name: "isVerified")  bool? isVerified, @JsonKey(name: "verificationStatus")  String? verificationStatus, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  String? employeeId, @JsonKey(name: "date")  String? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.checkInLocation,_that.checkOutLocation,_that.isVerified,_that.verificationStatus,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.method,_that.status,_that.createdAt,_that.updatedAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceRecord implements AttendanceRecord {
  const _AttendanceRecord({@JsonKey(name: "checkInLocation") this.checkInLocation, @JsonKey(name: "checkOutLocation") this.checkOutLocation, @JsonKey(name: "isVerified") this.isVerified, @JsonKey(name: "verificationStatus") this.verificationStatus, @JsonKey(name: "_id") this.id, @JsonKey(name: "employeeId") this.employeeId, @JsonKey(name: "date") this.date, @JsonKey(name: "checkInTime") this.checkInTime, @JsonKey(name: "checkOutTime") this.checkOutTime, @JsonKey(name: "method") this.method, @JsonKey(name: "status") this.status, @JsonKey(name: "createdAt") this.createdAt, @JsonKey(name: "updatedAt") this.updatedAt, @JsonKey(name: "__v") this.v});
  factory _AttendanceRecord.fromJson(Map<String, dynamic> json) => _$AttendanceRecordFromJson(json);

@override@JsonKey(name: "checkInLocation") final  Location? checkInLocation;
@override@JsonKey(name: "checkOutLocation") final  Location? checkOutLocation;
@override@JsonKey(name: "isVerified") final  bool? isVerified;
@override@JsonKey(name: "verificationStatus") final  String? verificationStatus;
@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "employeeId") final  String? employeeId;
@override@JsonKey(name: "date") final  String? date;
@override@JsonKey(name: "checkInTime") final  DateTime? checkInTime;
@override@JsonKey(name: "checkOutTime") final  DateTime? checkOutTime;
@override@JsonKey(name: "method") final  String? method;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt") final  DateTime? updatedAt;
@override@JsonKey(name: "__v") final  int? v;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceRecordCopyWith<_AttendanceRecord> get copyWith => __$AttendanceRecordCopyWithImpl<_AttendanceRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceRecord&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkInLocation,checkOutLocation,isVerified,verificationStatus,id,employeeId,date,checkInTime,checkOutTime,method,status,createdAt,updatedAt,v);

@override
String toString() {
  return 'AttendanceRecord(checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, isVerified: $isVerified, verificationStatus: $verificationStatus, id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, method: $method, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$AttendanceRecordCopyWith<$Res> implements $AttendanceRecordCopyWith<$Res> {
  factory _$AttendanceRecordCopyWith(_AttendanceRecord value, $Res Function(_AttendanceRecord) _then) = __$AttendanceRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "checkInLocation") Location? checkInLocation,@JsonKey(name: "checkOutLocation") Location? checkOutLocation,@JsonKey(name: "isVerified") bool? isVerified,@JsonKey(name: "verificationStatus") String? verificationStatus,@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") String? employeeId,@JsonKey(name: "date") String? date,@JsonKey(name: "checkInTime") DateTime? checkInTime,@JsonKey(name: "checkOutTime") DateTime? checkOutTime,@JsonKey(name: "method") String? method,@JsonKey(name: "status") String? status,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v
});


@override $LocationCopyWith<$Res>? get checkInLocation;@override $LocationCopyWith<$Res>? get checkOutLocation;

}
/// @nodoc
class __$AttendanceRecordCopyWithImpl<$Res>
    implements _$AttendanceRecordCopyWith<$Res> {
  __$AttendanceRecordCopyWithImpl(this._self, this._then);

  final _AttendanceRecord _self;
  final $Res Function(_AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? isVerified = freezed,Object? verificationStatus = freezed,Object? id = freezed,Object? employeeId = freezed,Object? date = freezed,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? method = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(_AttendanceRecord(
checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as Location?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as Location?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
  });
}/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get checkOutLocation {
    if (_self.checkOutLocation == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.checkOutLocation!, (value) {
    return _then(_self.copyWith(checkOutLocation: value));
  });
}
}


/// @nodoc
mixin _$Location {

@JsonKey(name: "lat") double? get lat;@JsonKey(name: "lng") double? get lng;
/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationCopyWith<Location> get copyWith => _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Location&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Location(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res>  {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) = _$LocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "lat") double? lat,@JsonKey(name: "lng") double? lng
});




}
/// @nodoc
class _$LocationCopyWithImpl<$Res>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_self.copyWith(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Location].
extension LocationPatterns on Location {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Location value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Location() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Location value)  $default,){
final _that = this;
switch (_that) {
case _Location():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Location value)?  $default,){
final _that = this;
switch (_that) {
case _Location() when $default != null:
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
case _Location() when $default != null:
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
case _Location():
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
case _Location() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Location implements Location {
  const _Location({@JsonKey(name: "lat") this.lat, @JsonKey(name: "lng") this.lng});
  factory _Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

@override@JsonKey(name: "lat") final  double? lat;
@override@JsonKey(name: "lng") final  double? lng;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCopyWith<_Location> get copyWith => __$LocationCopyWithImpl<_Location>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Location&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Location(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) = __$LocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "lat") double? lat,@JsonKey(name: "lng") double? lng
});




}
/// @nodoc
class __$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_Location(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
