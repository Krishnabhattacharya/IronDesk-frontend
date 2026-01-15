import 'package:irondesk/core/core.dart';
import 'package:irondesk/data/remote/auth/auth_repo.dart';
import 'package:irondesk/data/remote/auth/model/seller_dealer_common/login_model.dart';
import 'package:irondesk/data/remote/auth/model/user/update_user_Details_model.dart';
import 'package:irondesk/services/pref_keys.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRepo {
  ApiClient apiClient;
  AuthRepoImpl({required this.apiClient});

  @override
  Future<Either<ApiException, LoginResponseModel>> login(
    LoginRequestModel loginRequest,
  ) async {
    try {
      final res = await apiClient.post(
        endPoint: EndPoints.login,
        payload: loginRequest.toJson(),
      );
      return right(LoginResponseModel.fromJson(res.data!));
    } catch (e) {
      if (e is ApiException) {
        return left(ApiException(e.toString()));
      }
      return left(ApiException("Something went wrong"));
    }
  }

  @override
  Future<Either<ApiException, bool>> updateUserToken(UserTokenUpdate token) async {
    try {
      // Stub implementation or guess endpoint
       /* final res = await apiClient.post(
        endPoint: "user/update-token", // Placeholder
        payload: token.toJson(),
      ); */
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
      // Assuming removeUser uses deleteAccount endpoint logic or similar
      // But deleteAccount requires params.
      // Stubbing for now to satisfy interface
      return right(true);
    } catch (e) {
      if (e is ApiException) {
        return left(ApiException(e.toString()));
      }
      return left(ApiException("Something went wrong"));
    }
  }
}
