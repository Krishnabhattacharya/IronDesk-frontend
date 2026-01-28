import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/screen/dashboard/attendance_viewmodel.dart';

import 'package:irondesk/view/screen/dashboard/employee_tabs/employee_home_view.dart';
import 'package:irondesk/view/screen/dashboard/employee_tabs/attendance_view.dart';
import 'package:irondesk/view/screen/dashboard/employee_tabs/leave_view.dart';
import 'package:irondesk/view/screen/dashboard/employee_tabs/salary_view.dart';
import 'package:irondesk/view/screen/dashboard/employee_tabs/profile_view.dart';
import 'package:irondesk/view/widgets/glass_bottom_nav.dart';
import 'package:irondesk/view/widgets/max_width_wrapper.dart';
import 'package:irondesk/view/widgets/glass_side_nav.dart';

final employeeNavIndexProvider = StateProvider<int>((ref) => 0);

class EmployeeDashboard extends ConsumerStatefulWidget {
  const EmployeeDashboard({super.key});

  @override
  ConsumerState<EmployeeDashboard> createState() => _EmployeeDashboardState();
}

class _EmployeeDashboardState extends ConsumerState<EmployeeDashboard>
    with BaseScreenView {
  late EmployeeViewModel employeeViewModel;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(employeeNavIndexProvider.notifier).state = 0;
      employeeViewModel = ref.read(ViewModelProvider.employeeVM);
      employeeViewModel.attachView(this);
      await employeeViewModel.getAttendanceHistory();
      await employeeViewModel.getTodayAttendence();
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(employeeNavIndexProvider);

    final List<Widget> pages = [
      const EmployeeHomeView(),
      const AttendanceView(),
      const LeaveView(),
      const SalaryView(),
      const ProfileView(),
    ];

    final isWideScreen = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      extendBody: !isWideScreen,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFE0EAFC), Color(0xFFCFDEF3), Color(0xFFE2E2E2)],
            stops: [0.2, 0.5, 0.9],
          ),
        ),
        child: isWideScreen
            ? Row(
                children: [
                  GlassSideNav(
                    selectedIndex: selectedIndex,
                    onTabSelected: (index) {
                      ref.read(employeeNavIndexProvider.notifier).state = index;
                    },
                  ),
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
                  SafeArea(
                    bottom: false,
                    child: MaxWidthWrapper(
                      child: IndexedStack(
                        index: selectedIndex,
                        children: pages,
                      ),
                    ),
                  ),
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

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
}
