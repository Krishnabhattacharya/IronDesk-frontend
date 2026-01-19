import 'package:irondesk/core/core.dart';
import 'package:irondesk/data/remote/auth/auth_repo.dart';
import 'package:irondesk/data/remote/auth/model/login_user_request_model.dart';
import 'package:irondesk/data/remote/auth/model/login_user_response_model.dart';
import 'package:irondesk/data/remote/auth/model/register_user_request_model.dart';
import 'package:irondesk/data/remote/auth/model/register_user_response_model.dart';
import 'package:irondesk/data/remote/auth/model/update_user_Details_model.dart';

import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRepo {
  ApiClient apiClient;
  AuthRepoImpl({required this.apiClient});

  @override
  Future<Either<ApiException, LoginUserResponseModel>> login(
    LoginUserRequestModel loginRequest,
  ) async {
    try {
      final res = await apiClient.post(
        endPoint: EndPoints.login,
        payload: loginRequest.toJson(),
      );
      return right(LoginUserResponseModel.fromJson(res.data!));
    } catch (e) {
      if (e is ApiException) {
        return left(ApiException(e.toString()));
      }
      return left(ApiException("Something went wrong"));
    }
  }

  @override
  Future<Either<ApiException, bool>> updateUserToken(
    UserTokenUpdate token,
  ) async {
    try {
      return right(true);
    } catch (e) {
      if (e is ApiException) {
        return left(ApiException(e.toString()));
      }
      return left(ApiException("Something went wrong"));
    }
  }

  @override
  Future<Either<ApiException, bool>> removeUser() async {
    try {
      return right(true);
    } catch (e) {
      if (e is ApiException) {
        return left(ApiException(e.toString()));
      }
      return left(ApiException("Something went wrong"));
    }
  }

  @override
  Future<Either<ApiException, RegisterUserResponseModel>> registerUser(
    RegisterUserRequestModel registerUserRequestModel,
  ) async {
    try {
      final res = await apiClient.post(
        endPoint: EndPoints.registerUser,
        payload: registerUserRequestModel.toJson(),
      );
      return right(RegisterUserResponseModel.fromJson(res.data!));
    } catch (e) {
      if (e is ApiException) {
        return left(ApiException(e.toString()));
      }
      return left(ApiException("Something went wrong"));
    }
  }
}
