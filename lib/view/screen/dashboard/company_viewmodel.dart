import 'package:irondesk/data/remote/company/company_repo.dart';
import 'package:irondesk/data/remote/company/model/pending_user_response_model.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/helper/base_view_model.dart';

class CompanyViewModel extends BaseViewModel<BaseScreenView> {
  final CompanyRepo companyRepo;
  CompanyViewModel(this.companyRepo);
  PendingUserResponseModel _getPendingUsersResponseModel =
      PendingUserResponseModel();
  PendingUserResponseModel get getPendingUsersResponseModel =>
      _getPendingUsersResponseModel;
  Future<void> getPendingUsers() async {
    toggleLoading();
    final result = await companyRepo.getPendingUsers();
    result.fold(
      (failure) {
        view?.showErrorSnackBar(failure.message);
      },
      (success) {
        _getPendingUsersResponseModel = success;
        view?.showSuccessSnackBar("Get Pending Users Successfully");
      },
    );
    toggleLoading();
  }
}
