import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:irondesk/core/constants.dart' show AppConstants;
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class EmployeeDashboard extends StatelessWidget {
  const EmployeeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9),
      appBar: AppBar(
        title: Text("Employee", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.indigo)),
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            // Status Card
            GlassContainer(
              color: Colors.white,
              opacity: 0.9,
              padding: EdgeInsets.all(20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Today's Status", style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.grey)),
                      Gap(5.h),
                      Row(
                        children: [
                          Icon(Icons.cancel, color: Colors.red, size: 20),
                          Gap(5.w),
                          Text("Not Checked In", style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.red)),
                        ],
                      ),
                      Gap(10.h),
                      Text("Shift: 09:00 AM - 06:00 PM", style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.grey[700])),
                    ],
                  ),
                  
                  // Big Action Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      // Navigate to Check In
                      context.pushNamed('attendanceCheckIn'); // Need to add this route
                    },
                    child: Text("Check In", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            
            Gap(20.h),
            
            // Stats Grid
            Row(
              children: [
                Expanded(child: _buildInfoCard("Leave Balance", "12 Days", Colors.orange)),
                Gap(15.w),
                Expanded(child: _buildInfoCard("Tasks Pending", "5", Colors.blue)),
              ],
            ),
            
            Gap(20.h),
            
            // Actions Grid
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 15.h,
              children: [
                _buildActionCard(Icons.history, "Attendance History", () {}),
                _buildActionCard(Icons.inventory_2, "My Inventory", () {}),
                _buildActionCard(Icons.note_add, "Apply Leave", () {}),
                _buildActionCard(Icons.attach_money, "Salary Slip", () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value, Color color) {
    return GlassContainer(
      color: color,
      opacity: 0.1,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(value, style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.bold, color: color)),
          Text(title, style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.grey[700])),
        ],
      ),
    );
  }

  Widget _buildActionCard(IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: GlassContainer(
        color: Colors.white,
        opacity: 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(icon, size: 30, color: Colors.indigo),
             Gap(10.h),
             Text(title, style: GoogleFonts.inter(fontWeight: FontWeight.w500, color: Colors.indigo)),
          ],
        ),
      ),
    );
  }
}
