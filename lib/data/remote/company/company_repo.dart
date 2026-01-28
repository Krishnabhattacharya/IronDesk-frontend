import 'package:dartz/dartz.dart';
import 'package:irondesk/core/exceptions.dart';
import 'package:irondesk/data/remote/company/model/all_employee_attendence_response_model.dart';
import 'package:irondesk/data/remote/company/model/company_basic_details_model.dart';
import 'package:irondesk/data/remote/company/model/pending_user_response_model.dart';
import 'package:irondesk/data/remote/company/model/register_company_request_model.dart';
import 'package:irondesk/data/remote/company/model/register_company_response_model.dart';

abstract class CompanyRepo {
  Future<Either<ApiException, RegisterCompanyResponseModel>> registerCompany(
    RegisterCompanyRequestModel registerCompanyRequestModel,
  );
  Future<Either<ApiException, PendingUserResponseModel>> getPendingUsers();
  Future<Either<ApiException, AllEmployeeAttendenceResponseModel>>
  getEmployeeAttendence();
  Future<Either<ApiException, Unit>> postCurrentLocation(
    Map<String, dynamic> data,
  );
  Future<Either<ApiException, CompanyBasicDetailsModel>>
  getCompanyBasicDetails();
}
