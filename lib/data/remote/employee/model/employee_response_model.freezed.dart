// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeResponseModel {

@JsonKey(name: "statusCode") int? get statusCode;@JsonKey(name: "data") List<Datum>? get data;@JsonKey(name: "message") String? get message;@JsonKey(name: "success") bool? get success;
/// Create a copy of EmployeeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeResponseModelCopyWith<EmployeeResponseModel> get copyWith => _$EmployeeResponseModelCopyWithImpl<EmployeeResponseModel>(this as EmployeeResponseModel, _$identity);

  /// Serializes this EmployeeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(data),message,success);

@override
String toString() {
  return 'EmployeeResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $EmployeeResponseModelCopyWith<$Res>  {
  factory $EmployeeResponseModelCopyWith(EmployeeResponseModel value, $Res Function(EmployeeResponseModel) _then) = _$EmployeeResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") List<Datum>? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});




}
/// @nodoc
class _$EmployeeResponseModelCopyWithImpl<$Res>
    implements $EmployeeResponseModelCopyWith<$Res> {
  _$EmployeeResponseModelCopyWithImpl(this._self, this._then);

  final EmployeeResponseModel _self;
  final $Res Function(EmployeeResponseModel) _then;

/// Create a copy of EmployeeResponseModel
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


/// Adds pattern-matching-related methods to [EmployeeResponseModel].
extension EmployeeResponseModelPatterns on EmployeeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeResponseModel() when $default != null:
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
case _EmployeeResponseModel() when $default != null:
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
case _EmployeeResponseModel():
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
case _EmployeeResponseModel() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeResponseModel implements EmployeeResponseModel {
  const _EmployeeResponseModel({@JsonKey(name: "statusCode") this.statusCode, @JsonKey(name: "data") final  List<Datum>? data, @JsonKey(name: "message") this.message, @JsonKey(name: "success") this.success}): _data = data;
  factory _EmployeeResponseModel.fromJson(Map<String, dynamic> json) => _$EmployeeResponseModelFromJson(json);

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

/// Create a copy of EmployeeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeResponseModelCopyWith<_EmployeeResponseModel> get copyWith => __$EmployeeResponseModelCopyWithImpl<_EmployeeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeResponseModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(_data),message,success);

@override
String toString() {
  return 'EmployeeResponseModel(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$EmployeeResponseModelCopyWith<$Res> implements $EmployeeResponseModelCopyWith<$Res> {
  factory _$EmployeeResponseModelCopyWith(_EmployeeResponseModel value, $Res Function(_EmployeeResponseModel) _then) = __$EmployeeResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "statusCode") int? statusCode,@JsonKey(name: "data") List<Datum>? data,@JsonKey(name: "message") String? message,@JsonKey(name: "success") bool? success
});




}
/// @nodoc
class __$EmployeeResponseModelCopyWithImpl<$Res>
    implements _$EmployeeResponseModelCopyWith<$Res> {
  __$EmployeeResponseModelCopyWithImpl(this._self, this._then);

  final _EmployeeResponseModel _self;
  final $Res Function(_EmployeeResponseModel) _then;

/// Create a copy of EmployeeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_EmployeeResponseModel(
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

@JsonKey(name: "_id") String? get id;@JsonKey(name: "employeeId") EmployeeId? get employeeId;@JsonKey(name: "designation") String? get designation;@JsonKey(name: "department") String? get department;@JsonKey(name: "shift") String? get shift;@JsonKey(name: "imageUrl") String? get imageUrl;@JsonKey(name: "createdAt") DateTime? get createdAt;@JsonKey(name: "__v") int? get v;@JsonKey(name: "company") String? get company;
/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumCopyWith<Datum> get copyWith => _$DatumCopyWithImpl<Datum>(this as Datum, _$identity);

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,designation,department,shift,imageUrl,createdAt,v,company);

@override
String toString() {
  return 'Datum(id: $id, employeeId: $employeeId, designation: $designation, department: $department, shift: $shift, imageUrl: $imageUrl, createdAt: $createdAt, v: $v, company: $company)';
}


}

/// @nodoc
abstract mixin class $DatumCopyWith<$Res>  {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) _then) = _$DatumCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") EmployeeId? employeeId,@JsonKey(name: "designation") String? designation,@JsonKey(name: "department") String? department,@JsonKey(name: "shift") String? shift,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "__v") int? v,@JsonKey(name: "company") String? company
});


$EmployeeIdCopyWith<$Res>? get employeeId;

}
/// @nodoc
class _$DatumCopyWithImpl<$Res>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._self, this._then);

  final Datum _self;
  final $Res Function(Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? employeeId = freezed,Object? designation = freezed,Object? department = freezed,Object? shift = freezed,Object? imageUrl = freezed,Object? createdAt = freezed,Object? v = freezed,Object? company = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as EmployeeId?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeIdCopyWith<$Res>? get employeeId {
    if (_self.employeeId == null) {
    return null;
  }

  return $EmployeeIdCopyWith<$Res>(_self.employeeId!, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  EmployeeId? employeeId, @JsonKey(name: "designation")  String? designation, @JsonKey(name: "department")  String? department, @JsonKey(name: "shift")  String? shift, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "company")  String? company)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.employeeId,_that.designation,_that.department,_that.shift,_that.imageUrl,_that.createdAt,_that.v,_that.company);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  EmployeeId? employeeId, @JsonKey(name: "designation")  String? designation, @JsonKey(name: "department")  String? department, @JsonKey(name: "shift")  String? shift, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "company")  String? company)  $default,) {final _that = this;
switch (_that) {
case _Datum():
return $default(_that.id,_that.employeeId,_that.designation,_that.department,_that.shift,_that.imageUrl,_that.createdAt,_that.v,_that.company);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "employeeId")  EmployeeId? employeeId, @JsonKey(name: "designation")  String? designation, @JsonKey(name: "department")  String? department, @JsonKey(name: "shift")  String? shift, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "company")  String? company)?  $default,) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.employeeId,_that.designation,_that.department,_that.shift,_that.imageUrl,_that.createdAt,_that.v,_that.company);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Datum implements Datum {
  const _Datum({@JsonKey(name: "_id") this.id, @JsonKey(name: "employeeId") this.employeeId, @JsonKey(name: "designation") this.designation, @JsonKey(name: "department") this.department, @JsonKey(name: "shift") this.shift, @JsonKey(name: "imageUrl") this.imageUrl, @JsonKey(name: "createdAt") this.createdAt, @JsonKey(name: "__v") this.v, @JsonKey(name: "company") this.company});
  factory _Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "employeeId") final  EmployeeId? employeeId;
@override@JsonKey(name: "designation") final  String? designation;
@override@JsonKey(name: "department") final  String? department;
@override@JsonKey(name: "shift") final  String? shift;
@override@JsonKey(name: "imageUrl") final  String? imageUrl;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;
@override@JsonKey(name: "__v") final  int? v;
@override@JsonKey(name: "company") final  String? company;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,designation,department,shift,imageUrl,createdAt,v,company);

@override
String toString() {
  return 'Datum(id: $id, employeeId: $employeeId, designation: $designation, department: $department, shift: $shift, imageUrl: $imageUrl, createdAt: $createdAt, v: $v, company: $company)';
}


}

/// @nodoc
abstract mixin class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) _then) = __$DatumCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "employeeId") EmployeeId? employeeId,@JsonKey(name: "designation") String? designation,@JsonKey(name: "department") String? department,@JsonKey(name: "shift") String? shift,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "__v") int? v,@JsonKey(name: "company") String? company
});


@override $EmployeeIdCopyWith<$Res>? get employeeId;

}
/// @nodoc
class __$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(this._self, this._then);

  final _Datum _self;
  final $Res Function(_Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? employeeId = freezed,Object? designation = freezed,Object? department = freezed,Object? shift = freezed,Object? imageUrl = freezed,Object? createdAt = freezed,Object? v = freezed,Object? company = freezed,}) {
  return _then(_Datum(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as EmployeeId?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeIdCopyWith<$Res>? get employeeId {
    if (_self.employeeId == null) {
    return null;
  }

  return $EmployeeIdCopyWith<$Res>(_self.employeeId!, (value) {
    return _then(_self.copyWith(employeeId: value));
  });
}
}


/// @nodoc
mixin _$EmployeeId {

@JsonKey(name: "_id") String? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "email") String? get email;@JsonKey(name: "role") String? get role;@JsonKey(name: "isActive") bool? get isActive;@JsonKey(name: "approvals") List<dynamic>? get approvals;@JsonKey(name: "requests") List<dynamic>? get requests;@JsonKey(name: "createdAt") DateTime? get createdAt;@JsonKey(name: "updatedAt") DateTime? get updatedAt;@JsonKey(name: "__v") int? get v;@JsonKey(name: "refreshToken") String? get refreshToken;@JsonKey(name: "employee") String? get employee;@JsonKey(name: "company") String? get company;
/// Create a copy of EmployeeId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeIdCopyWith<EmployeeId> get copyWith => _$EmployeeIdCopyWithImpl<EmployeeId>(this as EmployeeId, _$identity);

  /// Serializes this EmployeeId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeId&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.approvals, approvals)&&const DeepCollectionEquality().equals(other.requests, requests)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,role,isActive,const DeepCollectionEquality().hash(approvals),const DeepCollectionEquality().hash(requests),createdAt,updatedAt,v,refreshToken,employee,company);

@override
String toString() {
  return 'EmployeeId(id: $id, name: $name, email: $email, role: $role, isActive: $isActive, approvals: $approvals, requests: $requests, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, refreshToken: $refreshToken, employee: $employee, company: $company)';
}


}

/// @nodoc
abstract mixin class $EmployeeIdCopyWith<$Res>  {
  factory $EmployeeIdCopyWith(EmployeeId value, $Res Function(EmployeeId) _then) = _$EmployeeIdCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email,@JsonKey(name: "role") String? role,@JsonKey(name: "isActive") bool? isActive,@JsonKey(name: "approvals") List<dynamic>? approvals,@JsonKey(name: "requests") List<dynamic>? requests,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v,@JsonKey(name: "refreshToken") String? refreshToken,@JsonKey(name: "employee") String? employee,@JsonKey(name: "company") String? company
});




}
/// @nodoc
class _$EmployeeIdCopyWithImpl<$Res>
    implements $EmployeeIdCopyWith<$Res> {
  _$EmployeeIdCopyWithImpl(this._self, this._then);

  final EmployeeId _self;
  final $Res Function(EmployeeId) _then;

/// Create a copy of EmployeeId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? role = freezed,Object? isActive = freezed,Object? approvals = freezed,Object? requests = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,Object? refreshToken = freezed,Object? employee = freezed,Object? company = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,approvals: freezed == approvals ? _self.approvals : approvals // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,requests: freezed == requests ? _self.requests : requests // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeId].
extension EmployeeIdPatterns on EmployeeId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeId value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeId value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "role")  String? role, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "approvals")  List<dynamic>? approvals, @JsonKey(name: "requests")  List<dynamic>? requests, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "refreshToken")  String? refreshToken, @JsonKey(name: "employee")  String? employee, @JsonKey(name: "company")  String? company)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeId() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role,_that.isActive,_that.approvals,_that.requests,_that.createdAt,_that.updatedAt,_that.v,_that.refreshToken,_that.employee,_that.company);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "role")  String? role, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "approvals")  List<dynamic>? approvals, @JsonKey(name: "requests")  List<dynamic>? requests, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "refreshToken")  String? refreshToken, @JsonKey(name: "employee")  String? employee, @JsonKey(name: "company")  String? company)  $default,) {final _that = this;
switch (_that) {
case _EmployeeId():
return $default(_that.id,_that.name,_that.email,_that.role,_that.isActive,_that.approvals,_that.requests,_that.createdAt,_that.updatedAt,_that.v,_that.refreshToken,_that.employee,_that.company);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "email")  String? email, @JsonKey(name: "role")  String? role, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "approvals")  List<dynamic>? approvals, @JsonKey(name: "requests")  List<dynamic>? requests, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt, @JsonKey(name: "__v")  int? v, @JsonKey(name: "refreshToken")  String? refreshToken, @JsonKey(name: "employee")  String? employee, @JsonKey(name: "company")  String? company)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeId() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role,_that.isActive,_that.approvals,_that.requests,_that.createdAt,_that.updatedAt,_that.v,_that.refreshToken,_that.employee,_that.company);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeId implements EmployeeId {
  const _EmployeeId({@JsonKey(name: "_id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "email") this.email, @JsonKey(name: "role") this.role, @JsonKey(name: "isActive") this.isActive, @JsonKey(name: "approvals") final  List<dynamic>? approvals, @JsonKey(name: "requests") final  List<dynamic>? requests, @JsonKey(name: "createdAt") this.createdAt, @JsonKey(name: "updatedAt") this.updatedAt, @JsonKey(name: "__v") this.v, @JsonKey(name: "refreshToken") this.refreshToken, @JsonKey(name: "employee") this.employee, @JsonKey(name: "company") this.company}): _approvals = approvals,_requests = requests;
  factory _EmployeeId.fromJson(Map<String, dynamic> json) => _$EmployeeIdFromJson(json);

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

@override@JsonKey(name: "createdAt") final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt") final  DateTime? updatedAt;
@override@JsonKey(name: "__v") final  int? v;
@override@JsonKey(name: "refreshToken") final  String? refreshToken;
@override@JsonKey(name: "employee") final  String? employee;
@override@JsonKey(name: "company") final  String? company;

/// Create a copy of EmployeeId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeIdCopyWith<_EmployeeId> get copyWith => __$EmployeeIdCopyWithImpl<_EmployeeId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeId&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._approvals, _approvals)&&const DeepCollectionEquality().equals(other._requests, _requests)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,role,isActive,const DeepCollectionEquality().hash(_approvals),const DeepCollectionEquality().hash(_requests),createdAt,updatedAt,v,refreshToken,employee,company);

@override
String toString() {
  return 'EmployeeId(id: $id, name: $name, email: $email, role: $role, isActive: $isActive, approvals: $approvals, requests: $requests, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, refreshToken: $refreshToken, employee: $employee, company: $company)';
}


}

/// @nodoc
abstract mixin class _$EmployeeIdCopyWith<$Res> implements $EmployeeIdCopyWith<$Res> {
  factory _$EmployeeIdCopyWith(_EmployeeId value, $Res Function(_EmployeeId) _then) = __$EmployeeIdCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "email") String? email,@JsonKey(name: "role") String? role,@JsonKey(name: "isActive") bool? isActive,@JsonKey(name: "approvals") List<dynamic>? approvals,@JsonKey(name: "requests") List<dynamic>? requests,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt,@JsonKey(name: "__v") int? v,@JsonKey(name: "refreshToken") String? refreshToken,@JsonKey(name: "employee") String? employee,@JsonKey(name: "company") String? company
});




}
/// @nodoc
class __$EmployeeIdCopyWithImpl<$Res>
    implements _$EmployeeIdCopyWith<$Res> {
  __$EmployeeIdCopyWithImpl(this._self, this._then);

  final _EmployeeId _self;
  final $Res Function(_EmployeeId) _then;

/// Create a copy of EmployeeId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? role = freezed,Object? isActive = freezed,Object? approvals = freezed,Object? requests = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,Object? refreshToken = freezed,Object? employee = freezed,Object? company = freezed,}) {
  return _then(_EmployeeId(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,approvals: freezed == approvals ? _self._approvals : approvals // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,requests: freezed == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
