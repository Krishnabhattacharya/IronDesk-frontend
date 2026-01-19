import 'package:irondesk/core/exceptions.dart';
import 'package:irondesk/data/remote/auth/model/login_user_request_model.dart';
import 'package:irondesk/data/remote/auth/model/login_user_response_model.dart';
import 'package:irondesk/data/remote/auth/model/register_user_request_model.dart';
  import 'package:irondesk/data/remote/auth/model/register_user_response_model.dart';
import 'package:irondesk/data/remote/auth/model/update_user_Details_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<ApiException, LoginUserResponseModel>> login(LoginUserRequestModel loginRequest);
  Future<Either<ApiException, bool>> updateUserToken(UserTokenUpdate token);
Future<Either<ApiException, bool>> removeUser();
Future<Either<ApiException, RegisterUserResponseModel>> registerUser(RegisterUserRequestModel registerUserRequestModel);
}

