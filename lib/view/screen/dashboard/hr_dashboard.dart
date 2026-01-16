import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/core/constants.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/view/screen/dashboard/hr_tabs/hr_home_view.dart';
import 'package:irondesk/view/screen/dashboard/hr_tabs/pending_users_view.dart';
import 'package:irondesk/view/widgets/hr_glass_bottom_nav.dart';
import 'package:irondesk/view/widgets/hr_glass_side_nav.dart';
import 'package:irondesk/view/widgets/max_width_wrapper.dart';

class HRDashboard extends StatefulWidget {
  const HRDashboard({super.key});

  @override
  State<HRDashboard> createState() => _HRDashboardState();
}

class _HRDashboardState extends State<HRDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HRHomeView(),
    const PendingUsersView(), 
    const Center(child: Text("Employees Directory (Coming Soon)")),
    const Center(child: Text("Attendance Logs (Coming Soon)")),
  ];

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width > 800;
    
    return Scaffold(
      extendBody: !isWideScreen,
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
                  // Side Nav (Web)
                  HRGlassSideNav(
                    selectedIndex: _selectedIndex,
                    onTabSelected: (index) => setState(() => _selectedIndex = index),
                  ),
                  
                  // Body
                  Expanded(
                    child: SafeArea(
                       child: MaxWidthWrapper(
                        maxWidth: 1000,
                        child: IndexedStack(
                          index: _selectedIndex,
                          children: _pages,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Stack(
                children: [
                  // Body (Mobile)
                  SafeArea(
                    bottom: false,
                    child: MaxWidthWrapper(
                      child: IndexedStack(
                        index: _selectedIndex,
                        children: _pages,
                      ),
                    ),
                  ),
                  
                  // Bottom Nav (Mobile)
                  HRGlassBottomNav(
                    selectedIndex: _selectedIndex,
                    onTabSelected: (index) => setState(() => _selectedIndex = index),
                  ),
                ],
              ),
      ),
    );
  }
}
