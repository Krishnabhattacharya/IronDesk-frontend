// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_employee_attendence_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllEmployeeAttendenceResponseModel {

@JsonKey(name: "statusCode") int? get statusCode;@JsonKey(name: "data") List<Datum>? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "success") bool? get success;
/// Create a copy of AllEmployeeAttendenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllEmployeeAttendenceResponseModelCopyWith<AllEmployeeAttendenceResponseModel> get copyWith => _$AllEmployeeAttendenceResponseModelCopyWithImpl<AllEmployeeAttendenceResponseModel>(this as AllEmployeeAttendenceResponseModel, _$identity);

  /// Serializes this AllEmployeeAttendenceResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllEmployeeAttendenceResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(data),message,success);

@override
String toString() {
  return 'AllEmployeeAttendenceResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $AllEmployeeAttendenceResponseModelCopyWith<$Res>  {
  factory $AllEmployeeAttendenceResponseModelCopyWith(AllEmployeeAttendenceResponseModel value, $Res Function(AllEmployeeAttendenceResponseModel) _then) = _$AllEmployeeAttendenceResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") List<Datum>? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});




}
/// @nodoc
class _$AllEmployeeAttendenceResponseModelCopyWithImpl<$Res>
    implements $AllEmployeeAttendenceResponseModelCopyWith<$Res> {
  _$AllEmployeeAttendenceResponseModelCopyWithImpl(this._self, this._then);

  final AllEmployeeAttendenceResponseModel _self;
  final $Res Function(AllEmployeeAttendenceResponseModel) _then;

/// Create a copy of AllEmployeeAttendenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_self.copyWith(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Datum>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AllEmployeeAttendenceResponseModel].
extension AllEmployeeAttendenceResponseModelPatterns on AllEmployeeAttendenceResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllEmployeeAttendenceResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllEmployeeAttendenceResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllEmployeeAttendenceResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AllEmployeeAttendenceResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllEmployeeAttendenceResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AllEmployeeAttendenceResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "statusCode")  int? statusCode, @JsonKey(name: "data")  List<Datum>? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "success")  bool? success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllEmployeeAttendenceResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "statusCode")  int? statusCode, @JsonKey(name: "data")  List<Datum>? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "success")  bool? success)  $default,) {final _that = this;
switch (_that) {
case _AllEmployeeAttendenceResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "statusCode")  int? statusCode, @JsonKey(name: "data")  List<Datum>? data, @JsonKey(name: "message")  String? message, @JsonKey(name: "success")  bool? success)?  $default,) {final _that = this;
switch (_that) {
case _AllEmployeeAttendenceResponseModel() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllEmployeeAttendenceResponseModel implements AllEmployeeAttendenceResponseModel {
  const _AllEmployeeAttendenceResponseModel({@JsonKey(name: "statusCode") this.statusCode, @JsonKey(name: "data") final  List<Datum>? data, @JsonKey(name: "message") this.message, @JsonKey(name: "success") this.success}): _data = data;
  factory _AllEmployeeAttendenceResponseModel.fromJson(Map<String, dynamic> json) => _$AllEmployeeAttendenceResponseModelFromJson(json);

@override@JsonKey(name: "statusCode") final  int? statusCode;
 final  List<Datum>? _data;
@override@JsonKey(name: "data") List<Datum>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "success") final  bool? success;

/// Create a copy of AllEmployeeAttendenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllEmployeeAttendenceResponseModelCopyWith<_AllEmployeeAttendenceResponseModel> get copyWith => __$AllEmployeeAttendenceResponseModelCopyWithImpl<_AllEmployeeAttendenceResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllEmployeeAttendenceResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllEmployeeAttendenceResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(_data),message,success);

@override
String toString() {
  return 'AllEmployeeAttendenceResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$AllEmployeeAttendenceResponseModelCopyWith<$Res> implements $AllEmployeeAttendenceResponseModelCopyWith<$Res> {
  factory _$AllEmployeeAttendenceResponseModelCopyWith(_AllEmployeeAttendenceResponseModel value, $Res Function(_AllEmployeeAttendenceResponseModel) _then) = __$AllEmployeeAttendenceResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") List<Datum>? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});




}
/// @nodoc
class __$AllEmployeeAttendenceResponseModelCopyWithImpl<$Res>
    implements _$AllEmployeeAttendenceResponseModelCopyWith<$Res> {
  __$AllEmployeeAttendenceResponseModelCopyWithImpl(this._self, this._then);

  final _AllEmployeeAttendenceResponseModel _self;
  final $Res Function(_AllEmployeeAttendenceResponseModel) _then;

/// Create a copy of AllEmployeeAttendenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_AllEmployeeAttendenceResponseModel(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Datum>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$Datum {

@JsonKey(name: "checkInLocation") CheckLocation? get checkInLocation;@JsonKey(name: "checkOutLocation") CheckLocation? get checkOutLocation;@JsonKey(name: "_id") String? get id;@JsonKey(name: "employeeId") DatumEmployeeId? get employeeId;@JsonKey(name: "date") DateTime? get date;@JsonKey(name: "checkInTime") DateTime? get checkInTime;@JsonKey(name: "method") String? get method;@JsonKey(name: "status") String? get status;@JsonKey(name: "createdAt") DateTime? get createdAt;@JsonKey(name: "updatedAt") DateTime? get updatedAt;@JsonKey(name: "__v") int? get v;@JsonKey(name: "checkOutTime") DateTime? get checkOutTime;
/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumCopyWith<Datum> get copyWith => _$DatumCopyWithImpl<Datum>(this as Datum, _$identity);

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Datum&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkInLocation,checkOutLocation,id,employeeId,date,checkInTime,method,status,createdAt,updatedAt,v,checkOutTime);

@override
String toString() {
  return 'Datum(checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, method: $method, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, checkOutTime: $checkOutTime)';
}


}

/// @nodoc
abstract mixin class $DatumCopyWith<$Res>  {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) _then) = _$DatumCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "checkInLocation") CheckLocation? checkInLocation,@JsonKey(name: "checkOutLocation") CheckLocation? checkOutLocation,@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") DatumEmployeeId? employeeId,@JsonKey(name: "date") DateTime? date,@JsonKey(name: "checkInTime") DateTime? checkInTime,@JsonKey(name: "method") String? method,@JsonKey(name: "status") String? status,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v,@JsonKey(name: "checkOutTime") DateTime? checkOutTime
});


$CheckLocationCopyWith<$Res>? get checkInLocation;$CheckLocationCopyWith<$Res>? get checkOutLocation;$DatumEmployeeIdCopyWith<$Res>? get employeeId;

}
/// @nodoc
class _$DatumCopyWithImpl<$Res>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._self, this._then);

  final Datum _self;
  final $Res Function(Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? id = freezed,Object? employeeId = freezed,Object? date = freezed,Object? checkInTime = freezed,Object? method = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,Object? checkOutTime = freezed,}) {
  return _then(_self.copyWith(
checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as CheckLocation?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as CheckLocation?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as DatumEmployeeId?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Datum
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
}/// Create a copy of Datum
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
}/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DatumEmployeeIdCopyWith<$Res>? get employeeId {
    if (_self.employeeId == null) {
    return null;
  }

  return $DatumEmployeeIdCopyWith<$Res>(_self.employeeId!, (value) {
    return _then(_self.copyWith(employeeId: value));
  });
}
}


/// Adds pattern-matching-related methods to [Datum].
extension DatumPatterns on Datum {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Datum value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Datum() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Datum value)  $default,){
final _that = this;
switch (_that) {
case _Datum():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Datum value)?  $default,){
final _that = this;
switch (_that) {
case _Datum() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "checkInLocation")  CheckLocation? checkInLocation, @JsonKey(name: "checkOutLocation")  CheckLocation? checkOutLocation, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  DatumEmployeeId? employeeId, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.checkInLocation,_that.checkOutLocation,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.method,_that.status,_that.createdAt,_that.updatedAt,_that.v,_that.checkOutTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "checkInLocation")  CheckLocation? checkInLocation, @JsonKey(name: "checkOutLocation")  CheckLocation? checkOutLocation, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  DatumEmployeeId? employeeId, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime)  $default,) {final _that = this;
switch (_that) {
case _Datum():
return $default(_that.checkInLocation,_that.checkOutLocation,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.method,_that.status,_that.createdAt,_that.updatedAt,_that.v,_that.checkOutTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "checkInLocation")  CheckLocation? checkInLocation, @JsonKey(name: "checkOutLocation")  CheckLocation? checkOutLocation, @JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  DatumEmployeeId? employeeId, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "checkInTime")  DateTime? checkInTime, @JsonKey(name: "method")  String? method, @JsonKey(name: "status")  String? status, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "checkOutTime")  DateTime? checkOutTime)?  $default,) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.checkInLocation,_that.checkOutLocation,_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.method,_that.status,_that.createdAt,_that.updatedAt,_that.v,_that.checkOutTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Datum implements Datum {
  const _Datum({@JsonKey(name: "checkInLocation") this.checkInLocation, @JsonKey(name: "checkOutLocation") this.checkOutLocation, @JsonKey(name: "_id") this.id, @JsonKey(name: "employeeId") this.employeeId, @JsonKey(name: "date") this.date, @JsonKey(name: "checkInTime") this.checkInTime, @JsonKey(name: "method") this.method, @JsonKey(name: "status") this.status, @JsonKey(name: "createdAt") this.createdAt, @JsonKey(name: "updatedAt") this.updatedAt, @JsonKey(name: "__v") this.v, @JsonKey(name: "checkOutTime") this.checkOutTime});
  factory _Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

@override@JsonKey(name: "checkInLocation") final  CheckLocation? checkInLocation;
@override@JsonKey(name: "checkOutLocation") final  CheckLocation? checkOutLocation;
@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "employeeId") final  DatumEmployeeId? employeeId;
@override@JsonKey(name: "date") final  DateTime? date;
@override@JsonKey(name: "checkInTime") final  DateTime? checkInTime;
@override@JsonKey(name: "method") final  String? method;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt") final  DateTime? updatedAt;
@override@JsonKey(name: "__v") final  int? v;
@override@JsonKey(name: "checkOutTime") final  DateTime? checkOutTime;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DatumCopyWith<_Datum> get copyWith => __$DatumCopyWithImpl<_Datum>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DatumToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Datum&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkInLocation,checkOutLocation,id,employeeId,date,checkInTime,method,status,createdAt,updatedAt,v,checkOutTime);

@override
String toString() {
  return 'Datum(checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, method: $method, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, checkOutTime: $checkOutTime)';
}


}

/// @nodoc
abstract mixin class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) _then) = __$DatumCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "checkInLocation") CheckLocation? checkInLocation,@JsonKey(name: "checkOutLocation") CheckLocation? checkOutLocation,@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") DatumEmployeeId? employeeId,@JsonKey(name: "date") DateTime? date,@JsonKey(name: "checkInTime") DateTime? checkInTime,@JsonKey(name: "method") String? method,@JsonKey(name: "status") String? status,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v,@JsonKey(name: "checkOutTime") DateTime? checkOutTime
});


@override $CheckLocationCopyWith<$Res>? get checkInLocation;@override $CheckLocationCopyWith<$Res>? get checkOutLocation;@override $DatumEmployeeIdCopyWith<$Res>? get employeeId;

}
/// @nodoc
class __$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(this._self, this._then);

  final _Datum _self;
  final $Res Function(_Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? id = freezed,Object? employeeId = freezed,Object? date = freezed,Object? checkInTime = freezed,Object? method = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,Object? checkOutTime = freezed,}) {
  return _then(_Datum(
checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as CheckLocation?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as CheckLocation?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as DatumEmployeeId?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Datum
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
}/// Create a copy of Datum
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
}/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DatumEmployeeIdCopyWith<$Res>? get employeeId {
    if (_self.employeeId == null) {
    return null;
  }

  return $DatumEmployeeIdCopyWith<$Res>(_self.employeeId!, (value) {
    return _then(_self.copyWith(employeeId: value));
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


/// @nodoc
mixin _$DatumEmployeeId {

@JsonKey(name: "_id") String? get id;@JsonKey(name: "employeeId") EmployeeIdEmployeeId? get employeeId;@JsonKey(name: "designation") String? get designation;@JsonKey(name: "department") String? get department;
/// Create a copy of DatumEmployeeId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumEmployeeIdCopyWith<DatumEmployeeId> get copyWith => _$DatumEmployeeIdCopyWithImpl<DatumEmployeeId>(this as DatumEmployeeId, _$identity);

  /// Serializes this DatumEmployeeId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatumEmployeeId&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,designation,department);

@override
String toString() {
  return 'DatumEmployeeId(id: $id, employeeId: $employeeId, designation: $designation, department: $department)';
}


}

/// @nodoc
abstract mixin class $DatumEmployeeIdCopyWith<$Res>  {
  factory $DatumEmployeeIdCopyWith(DatumEmployeeId value, $Res Function(DatumEmployeeId) _then) = _$DatumEmployeeIdCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") EmployeeIdEmployeeId? employeeId,@JsonKey(name: "designation") String? designation,@JsonKey(name: "department") String? department
});


$EmployeeIdEmployeeIdCopyWith<$Res>? get employeeId;

}
/// @nodoc
class _$DatumEmployeeIdCopyWithImpl<$Res>
    implements $DatumEmployeeIdCopyWith<$Res> {
  _$DatumEmployeeIdCopyWithImpl(this._self, this._then);

  final DatumEmployeeId _self;
  final $Res Function(DatumEmployeeId) _then;

/// Create a copy of DatumEmployeeId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? employeeId = freezed,Object? designation = freezed,Object? department = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as EmployeeIdEmployeeId?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DatumEmployeeId
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeIdEmployeeIdCopyWith<$Res>? get employeeId {
    if (_self.employeeId == null) {
    return null;
  }

  return $EmployeeIdEmployeeIdCopyWith<$Res>(_self.employeeId!, (value) {
    return _then(_self.copyWith(employeeId: value));
  });
}
}


/// Adds pattern-matching-related methods to [DatumEmployeeId].
extension DatumEmployeeIdPatterns on DatumEmployeeId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DatumEmployeeId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DatumEmployeeId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DatumEmployeeId value)  $default,){
final _that = this;
switch (_that) {
case _DatumEmployeeId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DatumEmployeeId value)?  $default,){
final _that = this;
switch (_that) {
case _DatumEmployeeId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  EmployeeIdEmployeeId? employeeId, @JsonKey(name: "designation")  String? designation, @JsonKey(name: "department")  String? department)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DatumEmployeeId() when $default != null:
return $default(_that.id,_that.employeeId,_that.designation,_that.department);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  EmployeeIdEmployeeId? employeeId, @JsonKey(name: "designation")  String? designation, @JsonKey(name: "department")  String? department)  $default,) {final _that = this;
switch (_that) {
case _DatumEmployeeId():
return $default(_that.id,_that.employeeId,_that.designation,_that.department);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  EmployeeIdEmployeeId? employeeId, @JsonKey(name: "designation")  String? designation, @JsonKey(name: "department")  String? department)?  $default,) {final _that = this;
switch (_that) {
case _DatumEmployeeId() when $default != null:
return $default(_that.id,_that.employeeId,_that.designation,_that.department);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DatumEmployeeId implements DatumEmployeeId {
  const _DatumEmployeeId({@JsonKey(name: "_id") this.id, @JsonKey(name: "employeeId") this.employeeId, @JsonKey(name: "designation") this.designation, @JsonKey(name: "department") this.department});
  factory _DatumEmployeeId.fromJson(Map<String, dynamic> json) => _$DatumEmployeeIdFromJson(json);

@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "employeeId") final  EmployeeIdEmployeeId? employeeId;
@override@JsonKey(name: "designation") final  String? designation;
@override@JsonKey(name: "department") final  String? department;

/// Create a copy of DatumEmployeeId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DatumEmployeeIdCopyWith<_DatumEmployeeId> get copyWith => __$DatumEmployeeIdCopyWithImpl<_DatumEmployeeId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DatumEmployeeIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DatumEmployeeId&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,designation,department);

@override
String toString() {
  return 'DatumEmployeeId(id: $id, employeeId: $employeeId, designation: $designation, department: $department)';
}


}

/// @nodoc
abstract mixin class _$DatumEmployeeIdCopyWith<$Res> implements $DatumEmployeeIdCopyWith<$Res> {
  factory _$DatumEmployeeIdCopyWith(_DatumEmployeeId value, $Res Function(_DatumEmployeeId) _then) = __$DatumEmployeeIdCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") EmployeeIdEmployeeId? employeeId,@JsonKey(name: "designation") String? designation,@JsonKey(name: "department") String? department
});


@override $EmployeeIdEmployeeIdCopyWith<$Res>? get employeeId;

}
/// @nodoc
class __$DatumEmployeeIdCopyWithImpl<$Res>
    implements _$DatumEmployeeIdCopyWith<$Res> {
  __$DatumEmployeeIdCopyWithImpl(this._self, this._then);

  final _DatumEmployeeId _self;
  final $Res Function(_DatumEmployeeId) _then;

/// Create a copy of DatumEmployeeId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? employeeId = freezed,Object? designation = freezed,Object? department = freezed,}) {
  return _then(_DatumEmployeeId(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as EmployeeIdEmployeeId?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DatumEmployeeId
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeIdEmployeeIdCopyWith<$Res>? get employeeId {
    if (_self.employeeId == null) {
    return null;
  }

  return $EmployeeIdEmployeeIdCopyWith<$Res>(_self.employeeId!, (value) {
    return _then(_self.copyWith(employeeId: value));
  });
}
}


/// @nodoc
mixin _$EmployeeIdEmployeeId {

@JsonKey(name: "_id") String? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "email") String? get email;
/// Create a copy of EmployeeIdEmployeeId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeIdEmployeeIdCopyWith<EmployeeIdEmployeeId> get copyWith => _$EmployeeIdEmployeeIdCopyWithImpl<EmployeeIdEmployeeId>(this as EmployeeIdEmployeeId, _$identity);

  /// Serializes this EmployeeIdEmployeeId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeIdEmployeeId&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'EmployeeIdEmployeeId(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class $EmployeeIdEmployeeIdCopyWith<$Res>  {
  factory $EmployeeIdEmployeeIdCopyWith(EmployeeIdEmployeeId value, $Res Function(EmployeeIdEmployeeId) _then) = _$EmployeeIdEmployeeIdCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email
});




}
/// @nodoc
class _$EmployeeIdEmployeeIdCopyWithImpl<$Res>
    implements $EmployeeIdEmployeeIdCopyWith<$Res> {
  _$EmployeeIdEmployeeIdCopyWithImpl(this._self, this._then);

  final EmployeeIdEmployeeId _self;
  final $Res Function(EmployeeIdEmployeeId) _then;

/// Create a copy of EmployeeIdEmployeeId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeIdEmployeeId].
extension EmployeeIdEmployeeIdPatterns on EmployeeIdEmployeeId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeIdEmployeeId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeIdEmployeeId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeIdEmployeeId value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeIdEmployeeId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeIdEmployeeId value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeIdEmployeeId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeIdEmployeeId() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email)  $default,) {final _that = this;
switch (_that) {
case _EmployeeIdEmployeeId():
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeIdEmployeeId() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeIdEmployeeId implements EmployeeIdEmployeeId {
  const _EmployeeIdEmployeeId({@JsonKey(name: "_id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "email") this.email});
  factory _EmployeeIdEmployeeId.fromJson(Map<String, dynamic> json) => _$EmployeeIdEmployeeIdFromJson(json);

@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "email") final  String? email;

/// Create a copy of EmployeeIdEmployeeId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeIdEmployeeIdCopyWith<_EmployeeIdEmployeeId> get copyWith => __$EmployeeIdEmployeeIdCopyWithImpl<_EmployeeIdEmployeeId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeIdEmployeeIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeIdEmployeeId&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'EmployeeIdEmployeeId(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmployeeIdEmployeeIdCopyWith<$Res> implements $EmployeeIdEmployeeIdCopyWith<$Res> {
  factory _$EmployeeIdEmployeeIdCopyWith(_EmployeeIdEmployeeId value, $Res Function(_EmployeeIdEmployeeId) _then) = __$EmployeeIdEmployeeIdCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email
});




}
/// @nodoc
class __$EmployeeIdEmployeeIdCopyWithImpl<$Res>
    implements _$EmployeeIdEmployeeIdCopyWith<$Res> {
  __$EmployeeIdEmployeeIdCopyWithImpl(this._self, this._then);

  final _EmployeeIdEmployeeId _self;
  final $Res Function(_EmployeeIdEmployeeId) _then;

/// Create a copy of EmployeeIdEmployeeId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,}) {
  return _then(_EmployeeIdEmployeeId(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
