import 'package:dartz/dartz.dart';
import 'package:irondesk/core/exceptions.dart';
import 'package:irondesk/data/remote/employee/model/attendance_history_model.dart';
import 'package:irondesk/data/remote/employee/model/employee_response_model.dart';

abstract class EmployeeRepo {
  Future<Either<ApiException, EmployeeResponseModel>> getAllEmployee();
  Future<Either<ApiException, bool>> updateEmployee(
    String id,
    Map<String, dynamic> data,
  );
  Future<Either<ApiException, AttendanceHistoryResponse>>
  getAttendanceHistory();
}
