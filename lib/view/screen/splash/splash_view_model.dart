import 'package:irondesk/helper/base_view_model.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/services/pref_keys.dart' hide UserType;
import 'package:irondesk/services/enums/user_type.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';

class SplashViewModel extends BaseViewModel<BaseScreenView> {
  
  void initSplash(context) async {
    // Wait for animation or min splash time
    await Future.delayed(const Duration(seconds: 3));
    
    // Check Token
    final token = SharedPreferenceService.getString(PrefKeys.accessToken.name);
    final userTypeStr = SharedPreferenceService.getString("user_type"); // Assuming saved as string name
    
    if (token != null && token.isNotEmpty && userTypeStr != null) {
      // Navigate based on role
      if (userTypeStr == "employee") {
        GoRouter.of(context).goNamed(AppRoute.employeeDashboard.name);
      } else if (userTypeStr == "hr") {
        GoRouter.of(context).goNamed(AppRoute.hrDashboard.name);
      } else if (userTypeStr == "admin") {
         GoRouter.of(context).goNamed(AppRoute.adminDashboard.name);
      } else if (userTypeStr == "client" || userTypeStr == "user") {
        GoRouter.of(context).goNamed(AppRoute.waitingDashboard.name);
      } else {
        // Unknown, go to landing
        GoRouter.of(context).goNamed(AppRoute.landing.name);
      }
    } else {
      // No token, go to Landing
      GoRouter.of(context).goNamed(AppRoute.landing.name);
    }
  }
}
