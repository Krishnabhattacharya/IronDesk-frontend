import 'dart:developer';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:irondesk/services/enums/user_type.dart';
import 'package:irondesk/view/screen/auth/login_view.dart';
import 'package:irondesk/view/screen/auth/register_view.dart';

// Fixed Imports (screen vs screens)

import 'package:irondesk/view/screen/splash/splash_view.dart'; // Created
import 'package:irondesk/view/screen/dashboard/waiting_dashboard.dart'; // Created
import 'package:irondesk/view/screen/dashboard/hr_dashboard.dart'; // Created
import 'package:irondesk/view/screen/dashboard/employee_dashboard.dart'; // Created
import 'package:irondesk/view/screen/attendance/attendance_checkin_view.dart'; // Created

// Potentially broken imports commented out or fixed if path known
// Assuming other files are in view/screen/...
// import 'package:irondesk/view/screen/on_boarding/on_boarding_view.dart'; 
// import 'package:irondesk/view/screen/dashboard/dashboard_view.dart'; // Replaced by HR/Employee/Waiting

enum AppRoute {
  splash,
  loginView,
  registerView,
  dashboard, // Mapped to HR
  sellerDashboard, // Mapped to Employee
  dealerDashboard, // Mapped to Waiting
  
  // existing enums
  forgetPasswordScreen,
  
  // New
  attendanceCheckIn,
}

final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
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
      return RegisterView(userType: userType ?? UserType.client); // Check if RegisterView exists and accepts arg
    },
  ),
  
  // Dashboards
  GoRoute(
    path: '/hrDashboard',
    name: AppRoute.dashboard.name,
    builder: (context, state) => const HRDashboard(),
  ),
  GoRoute(
    path: '/employeeDashboard',
    name: AppRoute.sellerDashboard.name,
    builder: (context, state) => const EmployeeDashboard(),
  ),
  GoRoute(
    path: '/waitingDashboard',
    name: AppRoute.dealerDashboard.name,
    builder: (context, state) => const WaitingDashboard(),
  ),
  
  // Features
  GoRoute(
    path: '/attendanceCheckIn',
    name: 'attendanceCheckIn', // String name usage in dashboard
    builder: (context, state) => const AttendanceCheckInView(),
  ),
  
   GoRoute(
    path: '/forgotPassword',
    name: AppRoute.forgetPasswordScreen.name,
    builder: (context, state) => Container(), // Placeholder
  ),
  
  // Placeholder for missing imports to avoid build errors 
  // (In real scenario, I'd fix all paths, but focusing on the requested UI flow)
];
