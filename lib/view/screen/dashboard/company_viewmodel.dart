import 'package:irondesk/data/remote/company/company_repo.dart';
import 'package:irondesk/data/remote/company/model/all_employee_attendence_response_model.dart';
import 'package:irondesk/data/remote/company/model/company_basic_details_model.dart';
import 'package:irondesk/data/remote/company/model/pending_user_response_model.dart';
import 'package:irondesk/data/remote/employee/employee_repo.dart';
import 'package:irondesk/data/remote/employee/model/employee_response_model.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/helper/base_view_model.dart';
import 'package:geolocator/geolocator.dart';

class CompanyViewModel extends BaseViewModel<BaseScreenView> {
  final CompanyRepo companyRepo;
  final EmployeeRepo employeeRepo;
  CompanyViewModel(this.companyRepo, this.employeeRepo);
  PendingUserResponseModel _getPendingUsersResponseModel =
      PendingUserResponseModel();
  PendingUserResponseModel get getPendingUsersResponseModel =>
      _getPendingUsersResponseModel;
  EmployeeResponseModel _getEmployeeListResponse = EmployeeResponseModel();
  EmployeeResponseModel get getEmployeeListResponse => _getEmployeeListResponse;
  AllEmployeeAttendenceResponseModel _getEmployeeAttendenceResponseModel =
      AllEmployeeAttendenceResponseModel();
  AllEmployeeAttendenceResponseModel get getEmployeeAttendenceResponseModel =>
      _getEmployeeAttendenceResponseModel;
  CompanyBasicDetailsModel _getCompanyBasicDetailsResponseModel =
      CompanyBasicDetailsModel();
  CompanyBasicDetailsModel get getCompanyBasicDetailsResponseModel =>
      _getCompanyBasicDetailsResponseModel;
  Future<void> getCompanyBasicDetails() async {
    toggleLoading();
    try {
      final result = await companyRepo.getCompanyBasicDetails();
      result.fold(
        (failure) {
          view?.showErrorSnackBar(failure.message);
        },
        (success) {
          _getCompanyBasicDetailsResponseModel = success;
          view?.showSuccessSnackBar("Get Company Basic Details Successfully");
        },
      );
    } catch (e) {
      view?.showErrorSnackBar(e.toString());
    } finally {
      toggleLoading();
    }
  }

  Future<void> getPendingUsers() async {
    toggleLoading();
    try {
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
    } catch (e) {
      view?.showErrorSnackBar(e.toString());
    } finally {
      toggleLoading();
    }
  }

  Future<void> getAllEmployee() async {
    toggleLoading();
    try {
      final result = await employeeRepo.getAllEmployee();
      result.fold(
        (failure) {
          view?.showErrorSnackBar(failure.message);
        },
        (success) {
          _getEmployeeListResponse = success;
          view?.showSuccessSnackBar("Get Employee List Successfully");
        },
      );
    } catch (e) {
      view?.showErrorSnackBar(e.toString());
    } finally {
      toggleLoading();
    }
  }

  Future<bool> updateEmployee(String id, Map<String, dynamic> data) async {
    bool success = false;
    toggleLoading();
    try {
      final result = await employeeRepo.updateEmployee(id, data);
      result.fold(
        (failure) {
          view?.showErrorSnackBar(failure.message);
        },
        (isSuccess) {
          success = isSuccess;
          view?.showSuccessSnackBar("Employee Updated Successfully");
          getAllEmployee(); // Refresh list
        },
      );
    } catch (e) {
      view?.showErrorSnackBar(e.toString());
    } finally {
      toggleLoading();
    }
    return success;
  }

  Future<void> getEmployeeAttendence() async {
    toggleLoading();
    try {
      final result = await companyRepo.getEmployeeAttendence();
      result.fold(
        (failure) {
          view?.showErrorSnackBar(failure.message);
        },
        (success) {
          _getEmployeeAttendenceResponseModel = success;
          view?.showSuccessSnackBar("Get Employee Attendence Successfully");
        },
      );
    } catch (e) {
      view?.showErrorSnackBar(e.toString());
    } finally {
      toggleLoading();
    }
  }

  Future<void> postCurrentLocation() async {
    final position = await getCurrentLocation();
    final data = {
      "latitude": position?.latitude,
      "longitude": position?.longitude,
      "name": getCompanyBasicDetailsResponseModel.data?.name ?? "",
      "radiusInMeters": 200,
    };
    toggleLoading();
    try {
      final result = await companyRepo.postCurrentLocation(data);
      result.fold(
        (failure) {
          view?.showErrorSnackBar(failure.message);
        },
        (success) {
          view?.showSuccessSnackBar("Post Current Location Successfully");
        },
      );
    } catch (e) {
      view?.showErrorSnackBar(e.toString());
    } finally {
      toggleLoading();
    }
  }

  Future<Position?> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      view?.showErrorSnackBar('Location services are disabled.');
      return null;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        view?.showErrorSnackBar('Location permissions are denied');
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      view?.showErrorSnackBar(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
      return null;
    }

    try {
      toggleLoading();
      return await Geolocator.getCurrentPosition();
    } catch (e) {
      view?.showErrorSnackBar("Error getting location: $e");
      return null;
    } finally {
      toggleLoading();
    }
  }
}
