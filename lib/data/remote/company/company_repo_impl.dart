import 'package:dartz/dartz.dart';
import 'package:irondesk/core/api_client.dart';
import 'package:irondesk/core/endpoints.dart';
import 'package:irondesk/core/exceptions.dart';
import 'package:irondesk/data/remote/company/company_repo.dart';
import 'package:irondesk/data/remote/company/model/pending_user_response_model.dart';
import 'package:irondesk/data/remote/company/model/register_company_request_model.dart';
import 'package:irondesk/data/remote/company/model/register_company_response_model.dart';

class CompanyRepoImpl extends CompanyRepo {
  ApiClient apiClient;
  CompanyRepoImpl({required this.apiClient});
  @override
  Future<Either<ApiException, RegisterCompanyResponseModel>> registerCompany(
    RegisterCompanyRequestModel registerCompanyRequestModel,
  ) async {
    try {
      final res = await apiClient.post(
        endPoint: EndPoints.registerCompany,
        payload: registerCompanyRequestModel.toJson(),
      );
      return right(RegisterCompanyResponseModel.fromJson(res.data!));
    } catch (e) {
      if (e is ApiException) {
        return left(ApiException(e.toString()));
      }
      return left(ApiException("Something went wrong"));
    }
  }

  @override
  Future<Either<ApiException, PendingUserResponseModel>>
  getPendingUsers() async {
    try {
      final res = await apiClient.get(EndPoints.getpendingUser);
      return right(PendingUserResponseModel.fromJson(res.data!));
    } catch (e) {
      if (e is ApiException) {
        return left(ApiException(e.toString()));
      }
      return left(ApiException("Something went wrong"));
    }
  }
}
