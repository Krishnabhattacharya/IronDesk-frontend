import 'package:irondesk/core/core.dart';
import 'package:irondesk/data/remote/company/company_repo.dart';
import 'package:irondesk/data/remote/company/model/register_company_response_model.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/helper/base_view_model.dart';
import 'package:irondesk/data/remote/company/model/register_company_request_model.dart';
import 'package:irondesk/routes/app_routes.dart';

class AuthViewmodel extends BaseViewModel<BaseScreenView> {
  final CompanyRepo companyRepo;
  
  AuthViewmodel({required this.companyRepo});
  RegisterCompanyResponseModel _registerCompanyResponseModel =
      RegisterCompanyResponseModel();
  RegisterCompanyResponseModel get registerCompanyResponseModel =>
      _registerCompanyResponseModel;
  Future<void> registerCompany(
    RegisterCompanyRequestModel registerCompanyRequestModel,
  ) async {
    try {
      toggleLoading();
      final response = await companyRepo.registerCompany(
        registerCompanyRequestModel,
      );
      response.fold(
        (l) {
          view!.showErrorSnackBar(l.message);
        },
        (r) {
          _registerCompanyResponseModel = r;
          view!.showSuccessSnackBar("Company registered successfully");
          view!.navigateToScreen(AppRoute.hrDashboard);
          Logger.printInfo("end of function");
        },
      );
    } catch (e) {
      view!.showErrorSnackBar("Something went wrong");
    } finally {
      toggleLoading();
    }
  }


}
