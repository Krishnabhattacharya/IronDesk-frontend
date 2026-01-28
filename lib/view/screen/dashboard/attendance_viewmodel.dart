import 'package:flutter/material.dart';
import 'package:irondesk/data/remote/employee/employee_repo.dart';
import 'package:irondesk/data/remote/employee/model/attendance_history_model.dart';
import 'package:irondesk/data/remote/employee/model/check_in_request_model.dart';
import 'package:irondesk/data/remote/employee/model/check_in_response_model.dart';
import 'package:irondesk/data/remote/employee/model/check_out_request_model.dart';
import 'package:irondesk/data/remote/employee/model/check_out_response_model.dart';
import 'package:irondesk/data/remote/employee/model/today_attendence_response_model.dart';
import 'package:irondesk/utils/utils.dart';

import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/helper/base_view_model.dart';

class EmployeeViewModel extends BaseViewModel<BaseScreenView> {
  final EmployeeRepo _employeeRepo;

  EmployeeViewModel(this._employeeRepo);

  bool get isLoading => loading;

  List<AttendanceRecord> _attendanceHistory = [];
  List<AttendanceRecord> get attendanceHistory => _attendanceHistory;
  CheckInResponseModel _checkInResponse = CheckInResponseModel();
  CheckInResponseModel get checkInResponse => _checkInResponse;
  CheckOutResponseModel _checkOutResponse = CheckOutResponseModel();
  CheckOutResponseModel get checkOutResponse => _checkOutResponse;
  bool _isCheckInSuccess = false;
  bool get isCheckInSuccess => _isCheckInSuccess;
  bool _isCheckOutSuccess = false;
  bool get isCheckOutSuccess => _isCheckOutSuccess;
  TodayAttendenceResponseModel _todayAttendence =
      TodayAttendenceResponseModel();
  TodayAttendenceResponseModel get todayAttendence => _todayAttendence;
  Future<void> getAttendanceHistory() async {
    toggleLoading();

    final result = await _employeeRepo.getAttendanceHistory();

    result.fold(
      (error) {
        debugPrint(error.toString());
        view?.showErrorSnackBar(error.toString());
      },
      (success) {
        if (success.data != null) {
          _attendanceHistory = success.data!;
        }
      },
    );

    toggleLoading();
  }

  Future<void> checkIn(CheckInRequestModel checkInRequestModel) async {
    toggleLoading();

    final result = await _employeeRepo.checkIn(checkInRequestModel);

    result.fold(
      (error) {
        debugPrint(error.toString());
        view?.showErrorSnackBar(error.message.toString());
        _isCheckInSuccess = false;
      },
      (success) async {
        if (success.data != null) {
          _checkInResponse = success;
          _isCheckInSuccess = true;
          await getTodayAttendence();
          await getAttendanceHistory();
        }
      },
    );

    toggleLoading();
  }

  Future<void> checkOut(CheckOutRequestModel checkOutRequestModel) async {
    toggleLoading();

    final result = await _employeeRepo.checkOut(checkOutRequestModel);

    result.fold(
      (error) {
        debugPrint(error.toString());
        view?.showErrorSnackBar(error.message.toString());
      },
      (success) async {
        if (success.data != null) {
          await getTodayAttendence();
          _checkOutResponse = success;
          _isCheckOutSuccess = true;
        }
      },
    );

    toggleLoading();
  }

  Future<void> getTodayAttendence() async {
    toggleLoading();

    final result = await _employeeRepo.getTodayAttendence();

    result.fold(
      (error) {
        debugPrint(error.toString());
        view?.showErrorSnackBar(error.toString());
      },
      (success) {
        if (success.data != null) {
          _todayAttendence = success;
        }
      },
    );

    toggleLoading();
  }
}
