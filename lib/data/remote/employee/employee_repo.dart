import 'package:dartz/dartz.dart';
import 'package:irondesk/core/exceptions.dart';
import 'package:irondesk/data/remote/employee/model/attendance_history_model.dart';
import 'package:irondesk/data/remote/employee/model/check_in_request_model.dart';
import 'package:irondesk/data/remote/employee/model/check_in_response_model.dart';
import 'package:irondesk/data/remote/employee/model/check_out_request_model.dart';
import 'package:irondesk/data/remote/employee/model/check_out_response_model.dart';
import 'package:irondesk/data/remote/employee/model/employee_response_model.dart';
import 'package:irondesk/data/remote/employee/model/today_attendence_response_model.dart';

abstract class EmployeeRepo {
  Future<Either<ApiException, EmployeeResponseModel>> getAllEmployee();
  Future<Either<ApiException, bool>> updateEmployee(
    String id,
    Map<String, dynamic> data,
  );
  Future<Either<ApiException, AttendanceHistoryResponse>>
  getAttendanceHistory();
  Future<Either<ApiException, CheckInResponseModel>> checkIn(
    CheckInRequestModel checkInRequestModel,
  );
  Future<Either<ApiException, TodayAttendenceResponseModel>> getTodayAttendence();
  Future<Either<ApiException, CheckOutResponseModel>> checkOut(CheckOutRequestModel checkOutRequestModel);
}
