import 'package:dartz/dartz.dart';
import 'package:irondesk/core/exceptions.dart';
import 'package:irondesk/core/endpoints.dart';
import 'package:irondesk/core/api_client.dart';
import 'package:irondesk/data/remote/requests/models/attendance_request_model.dart';
import 'package:irondesk/data/remote/requests/models/leave_request_model.dart';
import 'package:irondesk/data/remote/requests/requests_repo.dart';
import 'package:irondesk/utils/logger.dart';

// class RequestsRepoImpl implements RequestsRepo {
//   final ApiClient _apiService;

//   RequestsRepoImpl(this._apiService);

//   @override
//   Future<Either<ApiException, List<LeaveRequestModel>>>
//   getLeaveRequests() async {
//     try {
//       final response = await _apiService.get(EndPoints.getLeaveRequests);
//       // Assuming response.data is List or { data: List }
//       final list = ((response.data as Map<String, dynamic>)['data'] as List)
//           .map((e) => LeaveRequestModel.fromJson(e))
//           .toList();
//       return right(list);
//     } catch (e) {
//       Logger.printError("Get Leave Requests Error: $e");
//       // MOCK DATA FOR DEMO if API fails (since backend might not exist)
//       return right([
//         LeaveRequestModel(
//           id: "1",
//           employeeName: "John Doe",
//           leaveType: "Sick Leave",
//           startDate: DateTime.now().add(const Duration(days: 1)),
//           endDate: DateTime.now().add(const Duration(days: 2)),
//           reason: "Not feeling well",
//           status: "Pending",
//           appliedAt: DateTime.now(),
//         ),
//         LeaveRequestModel(
//           id: "2",
//           employeeName: "Jane Smith",
//           leaveType: "Casual Leave",
//           startDate: DateTime.now().add(const Duration(days: 5)),
//           endDate: DateTime.now().add(const Duration(days: 6)),
//           reason: "Personal work",
//           status: "Pending",
//           appliedAt: DateTime.now(),
//         ),
//       ]);
//       // return left(ApiException(e.toString()));
//     }
//   }

//   @override
//   Future<Either<ApiException, List<AttendanceRequestModel>>>
//   getAttendanceRequests() async {
//     try {
//       final response = await _apiService.get(EndPoints.getAttendanceRequests);
//       final list = ((response.data as Map<String, dynamic>)['data'] as List)
//           .map((e) => AttendanceRequestModel.fromJson(e))
//           .toList();
//       return right(list);
//     } catch (e) {
//       Logger.printError("Get Attendance Requests Error: $e");
//       // MOCK DATA FOR DEMO
//       return right([
//         AttendanceRequestModel(
//           id: "1",
//           employeeName: "Mike Ross",
//           date: DateTime.now().subtract(const Duration(days: 1)),
//           requestedCheckIn: "09:00 AM",
//           requestedCheckOut: "06:00 PM",
//           reason: "Forgot to punch out",
//           status: "Pending",
//           requestedAt: DateTime.now(),
//         ),
//       ]);
//       // return left(ApiException(e.toString()));
//     }
//   }

//   @override
//   Future<Either<ApiException, bool>> updateAttendanceStatus(
//     String id,
//     String status,
//   ) async {
//     try {
//       await _apiService.put("${EndPoints.updateAttendanceStatus}/$id", {
//         "status": status,
//       });
//       return right(true);
//     } catch (e) {
//       Logger.printError("Update Attendance Status Error: $e");
//       return left(ApiException(e.toString()));
//     }
//   }

//   @override
//   Future<Either<ApiException, bool>> updateLeaveStatus(
//     String id,
//     String status,
//   ) async {
//     try {
//       await _apiService.put("${EndPoints.updateLeaveStatus}/$id", {
//         "status": status,
//       });
//       return right(true);
//     } catch (e) {
//       Logger.printError("Update Leave Status Error: $e");
//       return left(ApiException(e.toString()));
//     }
//   }
// }
