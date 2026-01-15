import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/core/constants.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'dart:ui';

class WaitingDashboard extends ConsumerWidget {
  static const String route = '/waitingDashboard';
  
  const WaitingDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9), // Light background
      appBar: AppBar(
        title: Text("Dashboard", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.indigo)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.indigo),
            onPressed: () {
              // Logout Logic
              SharedPrefsService.remove("user_type");
              SharedPrefsService.remove(AppConstants.token);
              context.goNamed(AppRoute.loginView.name);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            // Top Banner
            GlassContainer(
              color: Colors.orangeAccent,
              opacity: 0.2,
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                   Icon(Icons.hourglass_empty, color: Colors.orange[800], size: 30),
                   Gap(10.w),
                   Expanded(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "Approval Pending",
                           style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.orange[900]),
                         ),
                         Text(
                           "HR will review your request shortly.",
                           style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.orange[900]),
                         ),
                       ],
                     ),
                   )
                ],
              ),
            ),
            
            Gap(20.h),
            
            // Profile Card
            GlassContainer(
              color: Colors.white,
              opacity: 0.8,
              padding: EdgeInsets.all(20.w),
              child: Row(
                children: [
                  CircleAvatar(
                     radius: 30.r,
                     backgroundColor: Colors.indigo,
                     child: Text("U", style: TextStyle(color: Colors.white, fontSize: 24.sp)),
                  ),
                  Gap(15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Krishna Bhattacharya", style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.bold)),
                      Text("krishna@example.com", style: GoogleFonts.inter(color: Colors.grey)),
                      Gap(5.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Waiting Approval", style: TextStyle(color: Colors.orange[800], fontSize: 10.sp)),
                      )
                    ],
                  )
                ],
              ),
            ),
            
            Gap(20.h),
            
            // Timeline (Simplified)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTimelineStep(Icons.check_circle, "Registered", true),
                _buildTimelineStep(Icons.hourglass_top, "HR Approval", false, isActive: true),
                _buildTimelineStep(Icons.lock, "Access", false),
              ],
            ),
            
            Gap(30.h),
            
            // Disabled Feature Cards
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 15.h,
              children: [
                _buildDisabledCard(Icons.fingerprint, "Attendance"),
                _buildDisabledCard(Icons.inventory_2, "Inventory"),
                _buildDisabledCard(Icons.attach_money, "Salary"),
                _buildDisabledCard(Icons.bar_chart, "Stats"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineStep(IconData icon, String label, bool completed, {bool isActive = false}) {
    return Column(
      children: [
        Icon(
          icon,
          color: completed ? Colors.green : (isActive ? Colors.orange : Colors.grey),
          size: 30,
        ),
        Gap(5.h),
        Text(
          label,
          style: TextStyle(
            color: completed ? Colors.green : (isActive ? Colors.orange : Colors.grey),
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildDisabledCard(IconData icon, String title) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          // Content
          Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 40, color: Colors.indigo),
                Gap(10.h),
                Text(title, style: GoogleFonts.inter(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          // Blur Overlay
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              color: Colors.grey.withOpacity(0.1),
              alignment: Alignment.center,
              child: Icon(Icons.lock, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
