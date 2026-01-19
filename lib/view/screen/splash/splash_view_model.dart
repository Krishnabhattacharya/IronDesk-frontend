import 'package:irondesk/helper/base_view_model.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/services/pref_keys.dart' hide UserType;
import 'package:go_router/go_router.dart';
import 'dart:async';

import 'package:irondesk/utils/logger.dart';

class SplashViewModel extends BaseViewModel<BaseScreenView> {
  void initSplash(context) async {
    await Future.delayed(const Duration(seconds: 3));

    final token = SharedPreferenceService.getString(PrefKeys.accessToken.name);
    final userTypeStr = SharedPreferenceService.getString("user_type");
    Logger.printInfo("User Type: '$userTypeStr'");
    Logger.printInfo("Token: '$token'");

    if (token != null && token.isNotEmpty && userTypeStr != null) {
      if (userTypeStr == "EMPLOYEE") {
        Logger.printInfo("Navigating to EMPLOYEE dashboard");
        GoRouter.of(context).goNamed(AppRoute.employeeDashboard.name);
      } else if (userTypeStr == "HR") {
        Logger.printInfo("Navigating to HR dashboard");
        GoRouter.of(context).goNamed(AppRoute.hrDashboard.name);
      } else if (userTypeStr == "ADMIN") {
        Logger.printInfo("Navigating to ADMIN dashboard");
        GoRouter.of(context).goNamed(AppRoute.adminDashboard.name);
      } else if (userTypeStr == "USER" || userTypeStr == "USER") {
        Logger.printInfo("Navigating to WAITING dashboard");
        GoRouter.of(context).goNamed(AppRoute.waitingDashboard.name);
      } else {
        Logger.printInfo("Unknown user type, navigating to LANDING");
        GoRouter.of(context).goNamed(AppRoute.landing.name);
      }
    } else {
      Logger.printInfo("Token missing or empty, navigating to LANDING");
      GoRouter.of(context).goNamed(AppRoute.landing.name);
    }
  }
}
