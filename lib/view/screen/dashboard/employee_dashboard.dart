import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import 'package:irondesk/view/screen/dashboard/employee_tabs/employee_home_view.dart';
import 'package:irondesk/view/screen/dashboard/employee_tabs/attendance_view.dart';
import 'package:irondesk/view/screen/dashboard/employee_tabs/leave_view.dart';
import 'package:irondesk/view/screen/dashboard/employee_tabs/salary_view.dart';
import 'package:irondesk/view/screen/dashboard/employee_tabs/profile_view.dart';
import 'package:irondesk/view/widgets/glass_bottom_nav.dart';
import 'package:irondesk/view/widgets/max_width_wrapper.dart';
import 'package:irondesk/view/widgets/glass_side_nav.dart';

// Provider for Bottom Nav Index
final employeeNavIndexProvider = StateProvider<int>((ref) => 0);

class EmployeeDashboard extends ConsumerWidget {
  const EmployeeDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(employeeNavIndexProvider);

    final List<Widget> pages = [
      const EmployeeHomeView(),
      const AttendanceView(),
      const LeaveView(),
      const SalaryView(),
      const ProfileView(), 
    ];





// ... existing code ...

    final isWideScreen = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      extendBody: !isWideScreen, // Only extend body for floating bottom nav
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
               Color(0xFFE0EAFC), // Light Blue
               Color(0xFFCFDEF3), // Light Grey-Blue
               Color(0xFFE2E2E2), // Very Light Grey
            ],
            stops: [0.2, 0.5, 0.9],
          ),
        ),
        child: isWideScreen
            ? Row(
                children: [
                  // 1. Side Navigation (Desktop)
                  GlassSideNav(
                    selectedIndex: selectedIndex,
                    onTabSelected: (index) {
                      ref.read(employeeNavIndexProvider.notifier).state = index;
                    },
                  ),
                  // 2. Body Content (Desktop)
                  Expanded(
                    child: SafeArea(
                      child: MaxWidthWrapper(
                        maxWidth: 1000,
                        child: IndexedStack(
                          index: selectedIndex,
                          children: pages,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Stack(
                children: [
                  // 2. Body Content (Mobile)
                  SafeArea(
                    bottom: false,
                    child: MaxWidthWrapper(
                      child: IndexedStack(
                        index: selectedIndex,
                        children: pages,
                      ),
                    ),
                  ),
                  
                  // 3. Floating Glass Nav (Mobile)
                  GlassBottomNav(
                    selectedIndex: selectedIndex,
                    onTabSelected: (index) {
                      ref.read(employeeNavIndexProvider.notifier).state = index;
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
