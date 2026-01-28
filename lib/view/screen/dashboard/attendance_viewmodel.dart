import 'package:flutter/material.dart';
import 'package:irondesk/data/remote/employee/employee_repo.dart';
import 'package:irondesk/data/remote/employee/model/attendance_history_model.dart';
import 'package:irondesk/utils/utils.dart';

import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/helper/base_view_model.dart';

class AttendanceViewModel extends BaseViewModel<BaseScreenView> {
  final EmployeeRepo _employeeRepo;

  AttendanceViewModel(this._employeeRepo);

  bool get isLoading => loading;

  List<AttendanceRecord> _attendanceHistory = [];
  List<AttendanceRecord> get attendanceHistory => _attendanceHistory;

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
}
