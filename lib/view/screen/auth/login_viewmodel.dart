import 'dart:developer';

import 'package:irondesk/core/core.dart';
import 'package:irondesk/services/pref_keys.dart'; // Added import
import 'package:irondesk/data/remote/auth/auth_repo.dart';
import 'package:irondesk/data/remote/auth/model/login_user_request_model.dart';
import 'package:irondesk/data/remote/auth/model/login_user_response_model.dart';
import 'package:irondesk/data/remote/auth/model/register_user_request_model.dart';
import 'package:irondesk/data/remote/auth/model/update_user_Details_model.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/helper/base_view_model.dart';
import 'package:irondesk/routes/app_routes.dart';

class LoginViewModel extends BaseViewModel<BaseScreenView> {
  final AuthRepo authRepo;
  LoginViewModel(this.authRepo);

  LoginUserResponseModel _loginResponseModel = LoginUserResponseModel();
  LoginUserResponseModel get loginResponseModel => _loginResponseModel;

  Future<bool> login(LoginUserRequestModel request) async {
    toggleLoading();
    final result = await authRepo.login(request);
    bool isSuccess = false;

    result.fold(
      (failure) {
        _loginResponseModel = LoginUserResponseModel();
        toggleLoading();
        view?.showErrorSnackBar(failure.message);
        log("Error from login-> ${failure.message}");
        isSuccess = false;
      },
      (success) {
        if (success.success == true &&
            success.data != null &&
            success.data!.user != null) {
          _loginResponseModel = success;

          SharedPrefsService.setString(
            PrefKeys.userId.name,
            success.data!.user!.id!,
          );
          SharedPrefsService.setString(
            PrefKeys.accessToken.name,
            success.data!.accessToken!,
          );
          Logger.printInfo(success.data!.accessToken ?? "na");
          SharedPrefsService.setString(
            PrefKeys.refreshToken.name,
            success.data!.refreshToken!,
          );

          final role = success.data!.user!.role;
          SharedPrefsService.setString("user_type", role ?? "client");

          isSuccess = true;
        } else {
          view?.showErrorSnackBar(success.message ?? 'Login failed');
          isSuccess = false;
        }

        toggleLoading();
      },
    );
    return isSuccess;
  }

  Future<void> registerUser(
    RegisterUserRequestModel registerUserRequestModel,
  ) async {
    try {
      toggleLoading();
      final result = await authRepo.registerUser(registerUserRequestModel);
      result.fold(
        (failure) {
          toggleLoading();
          view?.showErrorSnackBar(failure.message);
        },
        (success) {
          toggleLoading();
          view?.showSuccessSnackBar("Registeration Successfull");
        },
      );
    } catch (e) {
      view?.showErrorSnackBar(e.toString());
    } finally {
      toggleLoading();
    }
  }

  String getDashboardRouteForRole(String? role) {
    Logger.printInfo(role!);
    if (role == "EMPLOYEE" || role == "ENGINEER") {
      return AppRoute.employeeDashboard.name;
    } else if (role == "HR") {
      return AppRoute.hrDashboard.name;
    } else if (role == "ADMIN") {
      return AppRoute.hrDashboard.name;
    } else if (role == "USER") {
      return AppRoute.waitingDashboard.name;
    }
    return AppRoute.waitingDashboard.name;
  }

  Future<bool> updateUserToken(UserTokenUpdate toekn) async {
    bool isSuccess = false;
    final result = await authRepo.updateUserToken(toekn);
    result.fold(
      (failure) {
        log("Error from update user token-> ${failure.message}");
      },
      (success) {
        isSuccess = true;
      },
    );

    return isSuccess;
  }

  Future<bool> removeUser() async {
    bool isSuccess = false;
    toggleLoading();

    final result = await authRepo.removeUser();
    result.fold(
      (failure) {
        view?.showErrorSnackBar(failure.message);
      },
      (success) {
        isSuccess = true;
      },
    );
    toggleLoading();

    return isSuccess;
  }
}
