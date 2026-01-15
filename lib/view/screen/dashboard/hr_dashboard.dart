import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/core/constants.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/view/screen/dashboard/hr_tabs/hr_home_view.dart';
// import 'package:irondesk/view/screen/dashboard/hr_tabs/pending_users_view.dart';

class HRDashboard extends StatefulWidget {
  const HRDashboard({super.key});

  @override
  State<HRDashboard> createState() => _HRDashboardState();
}

class _HRDashboardState extends State<HRDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HRHomeView(),
    const Center(child: Text("Pending Users (TODO)")), // PendingUsersView()
    const Center(child: Text("Employees (TODO)")),
    const Center(child: Text("Attendance (TODO)")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9),
      appBar: AppBar(
        title: Text("HR Portal", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.indigo)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
           IconButton(
            icon: const Icon(Icons.logout, color: Colors.indigo),
            onPressed: () {
              SharedPrefsService.remove("user_type");
               SharedPrefsService.remove(AppConstants.token);
              context.goNamed(AppRoute.loginView.name);
            },
          )
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) => setState(() => _selectedIndex = index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.dashboard), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person_add), label: 'Users'),
          NavigationDestination(icon: Icon(Icons.people), label: 'Staff'),
          NavigationDestination(icon: Icon(Icons.calendar_today), label: 'Attd'),
        ],
      ),
    );
  }
}
