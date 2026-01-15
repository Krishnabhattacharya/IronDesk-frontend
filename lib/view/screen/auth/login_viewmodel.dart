import 'dart:developer';

import 'package:irondesk/core/core.dart';
import 'package:irondesk/data/remote/auth/auth_repo.dart';
import 'package:irondesk/data/remote/auth/model/seller_dealer_common/login_model.dart';
import 'package:irondesk/data/remote/auth/model/user/update_user_Details_model.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/helper/base_view_model.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/services/enums/user_type.dart';

class LoginViewModel extends BaseViewModel<BaseScreenView> {
  final AuthRepo authRepo;
  LoginViewModel(this.authRepo);

  LoginResponseModel _loginResponseModel = LoginResponseModel();
  LoginResponseModel get loginResponseModel => _loginResponseModel;

  // Login Method
  Future<bool> login(LoginRequestModel request) async {
    toggleLoading(); // Start loading
    final result = await authRepo.login(request);
    bool isSuccess = false;

    result.fold(
      (failure) {
        _loginResponseModel = LoginResponseModel();
        toggleLoading(); // Stop loading
        view?.showErrorSnackBar(
          failure.message,
         // color: const Color.fromARGB(255, 255, 119, 119),
        );
        log("Error from login-> ${failure.message}");
        isSuccess = false;
      },
      (success) {
        if (success.isSuccess == true &&
            success.data != null &&
            success.data!.user != null) {
          _loginResponseModel = success;
          
          // Save Tokens
          SharedPrefsService.setString(
            AppConstants.userIdPref,
            success.data!.user!.id!,
          );
          SharedPrefsService.setString(
            AppConstants.usertokenpref,
            success.data!.accessToken!,
          );
          SharedPrefsService.setString(
            AppConstants.userReftokenpref,
            success.data!.refreshToken!,
          );

          // Save User Type/Role consistently
          // API returns role string (e.g. "seller", "dealer", "admin")
          final role = success.data!.user!.role;
          SharedPrefsService.setString("user_type", role ?? "client");
          
          isSuccess = true;
        } else {
          view?.showErrorSnackBar(
            success.message ?? 'Login failed',
          );
          isSuccess = false;
        }

        toggleLoading(); // Stop loading
      },
    );
    return isSuccess;
  }

  // Determine route based on role
  String getDashboardRouteForRole(String? role) {
     if (role == "seller") {
        return "sellerDashboard"; // AppRoute.sellerDashboard.name
      } else if (role == "dealer") {
        return "dealerDashboard"; // AppRoute.dealerDashboard.name
      } else if (role == "admin") {
        return "dashboard"; // Placeholder
      }
      return "dealerDashboard"; // Default
  }

  Future<bool> updateUserToken(UserTokenUpdate toekn) async {
    bool isSuccess = false;
    // Don't toggle loading here to avoid UI flicker if background
    // toggleLoading(); 

    final result = await authRepo.updateUserToken(toekn);
    result.fold(
      (failure) {
        // view?.showSnackBar(failure.message); // Optional: don't show snackbar for background token update
        log("Error from update user token-> ${failure.message}");
      },
      (success) {
        isSuccess = true;
      },
    );
    // toggleLoading();

    return isSuccess;
  }

  Future<bool> removeUser() async {
    bool isSuccess = false;
    toggleLoading();

    final result = await authRepo.removeUser();
    result.fold(
      (failure) {
        view?.showErrorSnackBar(
          failure.message,
        );
      },
      (success) {
        isSuccess = true;
      },
    );
    toggleLoading();

    return isSuccess;
  }
}
