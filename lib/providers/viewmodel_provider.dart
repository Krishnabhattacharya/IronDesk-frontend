import 'package:flutter_riverpod/legacy.dart';
import 'package:irondesk/providers/repository_provider.dart';
import 'package:irondesk/view/screen/auth/auth_viewmodel.dart';
import 'package:irondesk/view/screen/auth/login_viewmodel.dart';
import 'package:irondesk/view/screen/dashboard/attendance_viewmodel.dart';
import 'package:irondesk/view/screen/dashboard/company_viewmodel.dart';
import 'package:irondesk/view/screen/dashboard/requests_viewmodel.dart';

import '../utils/utils.dart';

abstract class ViewModelProvider {
  // static final apiClient = Provider((ref) => ApiClient(ref));

  // static final authRepo = Provider((ref) => AuthRepoImpl(ref.read(apiClient)));

  // static final splashVM = ChangeNotifierProvider(
  //   (ref) => SplashViewModel(ref.read(authRepositoryProvider)),
  // );

  // static final dealerRegistrationVM = ChangeNotifierProvider(
  //   (ref) => DealerRegistrationViewModel(ref.read(authRepositoryProvider)),
  // );
  // static final salerRegisterVM = ChangeNotifierProvider(
  //   (ref) => SallerRegisterViewModel(
  //     ref.read(authRepositoryProvider),
  //     ref.read(registerNotifierProvider),
  //     ref.read(loginVM),
  //     ref.read(splashVM),
  //   ),
  // );
  static final loginVM = ChangeNotifierProvider(
    (ref) => LoginViewModel(ref.read(authRepositoryProvider)),
  );
  static final authVM = ChangeNotifierProvider(
    (ref) => AuthViewmodel(companyRepo: ref.read(companyRepoProvider)),
  );
  static final companyVM = ChangeNotifierProvider(
    (ref) => CompanyViewModel(
      ref.read(companyRepoProvider),
      ref.read(employeeRepoProvider),
    ),
  );

  static final attendanceVM = ChangeNotifierProvider(
    (ref) => AttendanceViewModel(ref.read(employeeRepoProvider)),
  );

  // static final requestsVM = ChangeNotifierProvider(
  //   (ref) => RequestsViewModel(ref.read(requestsRepoProvider)),
  // );
}
