import 'dart:developer';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:irondesk/services/enums/user_type.dart';
import 'package:irondesk/view/screen/auth/login_view.dart';
import 'package:irondesk/view/screen/auth/register_view.dart';

import 'package:irondesk/view/screen/splash/splash_view.dart';
import 'package:irondesk/view/screen/dashboard/waiting_dashboard.dart';
import 'package:irondesk/view/screen/dashboard/hr_dashboard.dart';
import 'package:irondesk/view/screen/dashboard/employee_dashboard.dart';
import 'package:irondesk/view/screen/attendance/attendance_checkin_view.dart';
import 'package:irondesk/view/screen/dashboard/hr_tabs/convert_to_employee_view.dart';
import 'package:irondesk/view/screen/dashboard/activation/employee_activation_view.dart';
import 'package:irondesk/view/screen/dashboard/inventory/my_inventory_view.dart'; 
import 'package:irondesk/view/screen/dashboard/employee_tabs/apply_leave_view.dart';

enum AppRoute {
  splash,
  loginView,
  registerView,
  hrDashboard,
  employeeDashboard,
  attendanceCheckIn,
  convertToEmployee,
  employeeActivation,
  myInventory,
  applyLeave,
  forgetPasswordScreen, waitingDashboard, adminDashboard,
}

final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
  ),
    GoRoute(
    path: '/employeeActivation',
    name: AppRoute.employeeActivation.name,
    builder: (context, state) => const EmployeeActivationView(),
  ),
   GoRoute(
    path: '/myInventory',
    name: AppRoute.myInventory.name,
    builder: (context, state) => const MyInventoryView(),
  ),
   GoRoute(
    path: '/applyLeave',
    name: AppRoute.applyLeave.name,
    builder: (context, state) => const ApplyLeaveView(),
  ),
  // ... (keep existing) ...

  GoRoute(
    path: '/convertToEmployee',
    name: AppRoute.convertToEmployee.name,
    builder: (context, state) {
      final userData = state.extra as Map<String, String>?;
      return ConvertToEmployeeView(userData: userData);
    },
  ),


  GoRoute(
    path: '/login',
    name: AppRoute.loginView.name,
    builder: (context, state) => const LoginView(),
  ),
  GoRoute(
    path: '/register',
    name: AppRoute.registerView.name,
    builder: (context, state) {
      final userType = state.extra as UserType?;
      return RegisterView(userType: userType ?? UserType.client);
    },
  ),
  
  // Dashboards
  GoRoute(
    path: '/hrDashboard',
    name: AppRoute.hrDashboard.name,
    builder: (context, state) => const HRDashboard(),
  ),
  GoRoute(
    path: '/employeeDashboard',
    name: AppRoute.employeeDashboard.name,
    builder: (context, state) => const EmployeeDashboard(),
  ),
  GoRoute(
    path: '/waitingDashboard',
    name: AppRoute.waitingDashboard.name,
    builder: (context, state) => const WaitingDashboard(),
  ),
  GoRoute(
    path: '/adminDashboard',
    name: AppRoute.adminDashboard.name,
    builder: (context, state) => const Scaffold(body: Center(child: Text("Admin Dashboard (TODO)"))),
  ),
  
  // Features
  GoRoute(
    path: '/attendanceCheckIn',
    name: AppRoute.attendanceCheckIn.name,
    builder: (context, state) => const AttendanceCheckInView(),
  ),
  
   GoRoute(
    path: '/forgotPassword',
    name: AppRoute.forgetPasswordScreen.name,
    builder: (context, state) => Container(), 
  ),
];

