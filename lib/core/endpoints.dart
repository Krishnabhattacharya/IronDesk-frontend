import 'package:flutter/foundation.dart';

class EndPoints {
  static final String baseUrl = "https://iron-desk.vercel.app/api/v1/";

  static final String generateNewToken = "";
  //---------company
  static final String registerCompany = "company/register";
  //---------auth
  static final String login = "users/login";
  static final String forgotPassword = "auth/forgot-password";
  static final String verify = "auth/verify";
  static final String updatePassword = "user/update-password";
  static final String registerUser = "users/register";
  static final String deleteAccount = "user/removed-account";
  static final String getpendingUser = "users/pending";
  //---------employee
  static final String getAllEmployee = "employees";
  static final String updateEmployee = "employees"; // For update (PATCH/PUT)
  static final String updateWorkLocation = "attendance/locations";
  static final String getWorkLocation = "attendance/locations";
  static final String getCompanyDetails = "company/details";
  static final String checkIn = "attendance/check-in";
  static final String checkOut = "attendance/check-out";
  static final String todayAttendance = "attendance/today";
  //---------requests
  static final String getLeaveRequests = "leave/pending";
  static final String updateLeaveStatus = "leave/status"; // /{id}
  static final String getAttendanceRequests = "attendance/pending";
  static final String updateAttendanceStatus = "attendance/status"; // /{id}
  static final String getEmployeeAttendence = "attendance/my";
}
