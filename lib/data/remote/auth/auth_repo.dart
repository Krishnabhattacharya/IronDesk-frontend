import 'package:irondesk/core/exceptions.dart';
import 'package:irondesk/data/remote/auth/model/seller_dealer_common/login_model.dart';
import 'package:irondesk/data/remote/auth/model/user/update_user_Details_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<ApiException, LoginResponseModel>> login(LoginRequestModel loginRequest);
  Future<Either<ApiException, bool>> updateUserToken(UserTokenUpdate token);
  Future<Either<ApiException, bool>> removeUser();
  
  // Keep existing potentially useful methods but comment out broken types if needed
  // Future<Either<ApiException, GeneralResponse>> forgotPassword(String email);
  // Future<Either<ApiException, ProfileResponse>> verifyOtp(String otp);
  // ...
}

