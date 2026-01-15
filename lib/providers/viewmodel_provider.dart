import 'package:flutter_riverpod/legacy.dart';
import 'package:irondesk/providers/repository_provider.dart';
import 'package:irondesk/view/screen/auth/login_viewmodel.dart';

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

  // static final settingScreenViewModel = ChangeNotifierProvider(
  //   (ref) => SettingsScreenViewmodel(ref.read(authRepositoryProvider)),
  // );
  // static final forgotpasswordViewModel = ChangeNotifierProvider(
  //   (ref) => ForgotPasswordViewModel(ref.read(authRepositoryProvider)),
  // );
  // static final sellerAddCarViewModel = ChangeNotifierProvider(
  //   (ref) => SellerAddCarViewModel(
  //     ref.read(sellerAddCarRepositoryProvider),
  //     ref.read(sellerDealerCommonRepositoryProvider),
  //   ),
  // );
  // static final sellerDashBoardViewModel = ChangeNotifierProvider(
  //   (ref) => SellerDashBoardViewmodel(
  //     ref.read(sellerAddCarRepositoryProvider),
  //     ref.read(sellerDealerCommonRepositoryProvider),
  //     ref.read(socketServiceProvider),
  //   ),
  // );
  // static final dealerDashboardViewModel = ChangeNotifierProvider(
  //   (ref) => DealerDashboardViewModel(
  //     ref.read(dealerDashboardRepoProvider),
  //     ref.read(sellerDealerCommonRepositoryProvider),
  //   ),
  // );
}
