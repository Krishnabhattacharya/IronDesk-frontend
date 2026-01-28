import 'package:dartz/dartz.dart';
import 'package:irondesk/core/api_client.dart';
import 'package:irondesk/core/endpoints.dart';
import 'package:irondesk/core/exceptions.dart';
import 'package:irondesk/data/remote/employee/employee_repo.dart'
    show EmployeeRepo;
import 'package:irondesk/data/remote/employee/model/attendance_history_model.dart';
import 'package:irondesk/data/remote/employee/model/employee_response_model.dart';
import 'package:irondesk/utils/logger.dart';

class EmployeeRepoImpl implements EmployeeRepo {
  final ApiClient _apiService;
  EmployeeRepoImpl(this._apiService);
  @override
  Future<Either<ApiException, EmployeeResponseModel>> getAllEmployee() async {
    try {
      final response = await _apiService.get(EndPoints.getAllEmployee);

      final employees = EmployeeResponseModel.fromJson(response.data!);
      return right(employees);
    } catch (e, s) {
      Logger.printError("Employee parsing error: $e");
      Logger.printError(s.toString());
      return left(ApiException("Failed to parse employees"));
    }
  }

  @override
  Future<Either<ApiException, bool>> updateEmployee(
    String id,
    Map<String, dynamic> data,
  ) async {
    try {
      // Assuming PUT/PATCH to "employees/$id"
      await _apiService.put("${EndPoints.updateEmployee}/$id", data);
      return right(true);
    } catch (e) {
      Logger.printError("Update Error: $e");
      return left(ApiException("Failed to update employee"));
    }
  }

  @override
  Future<Either<ApiException, AttendanceHistoryResponse>>
  getAttendanceHistory() async {
    try {
      final response = await _apiService.get(EndPoints.getEmployeeAttendence);
      final history = AttendanceHistoryResponse.fromJson(response.data!);
      return right(history);
    } catch (e) {
      Logger.printError("Attendance History Error: $e");
      return left(ApiException("Failed to fetch attendance history"));
    }
  }
}
