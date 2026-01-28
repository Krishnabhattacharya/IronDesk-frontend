import 'package:irondesk/data/remote/requests/models/attendance_request_model.dart';
import 'package:irondesk/data/remote/requests/models/leave_request_model.dart';
import 'package:irondesk/data/remote/requests/requests_repo.dart';
import 'package:irondesk/helper/base_view_model.dart';

// class RequestsViewModel extends BaseViewModel {
//   final RequestsRepo _repo;

//   RequestsViewModel(this._repo);

//   List<LeaveRequestModel> _leaves = [];
//   List<LeaveRequestModel> get leaves => _leaves;

//   List<AttendanceRequestModel> _attendanceConfigs = []; // attendanceRequests
//   List<AttendanceRequestModel> get attendanceRequests => _attendanceConfigs;

//   Future<void> getLeaveRequests() async {
//     toggleLoading();
//     final result = await _repo.getLeaveRequests();
//     result.fold((error) => view?.showErrorSnackBar(error.message), (data) {
//       _leaves = data;
//       notifyListeners();
//     });
//     toggleLoading();
//   }

//   Future<void> getAttendanceRequests() async {
//     toggleLoading();
//     final result = await _repo.getAttendanceRequests();
//     result.fold((error) => view?.showErrorSnackBar(error.message), (data) {
//       _attendanceConfigs = data;
//       notifyListeners();
//     });
//     toggleLoading();
//   }

//   Future<void> updateLeaveStatus(String id, String status) async {
//     toggleLoading();
//     final result = await _repo.updateLeaveStatus(id, status);
//     result.fold((error) => view?.showErrorSnackBar(error.message), (success) {
//       view?.showSuccessSnackBar("Leave $status successfully");
//       getLeaveRequests(); // Refresh
//     });
//     toggleLoading();
//   }

//   Future<void> updateAttendanceStatus(String id, String status) async {
//     toggleLoading();
//     final result = await _repo.updateAttendanceStatus(id, status);
//     result.fold((error) => view?.showErrorSnackBar(error.message), (success) {
//       view?.showSuccessSnackBar("Attendance Request $status successfully");
//       getAttendanceRequests(); // Refresh
//     });
//     toggleLoading();
//   }
// }
