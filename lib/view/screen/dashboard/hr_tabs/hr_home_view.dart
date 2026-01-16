import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:irondesk/core/constants.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HRHomeView extends ConsumerWidget {
  const HRHomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 100.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Admin Portal",
                    style: GoogleFonts.montserrat(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF102E76),
                    ),
                  ),
                  Text(
                    "Overview & Analytics",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                   SharedPrefsService.remove("user_type");
                   SharedPrefsService.remove(AppConstants.token);
                   context.goNamed(AppRoute.landing.name);
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  child: Icon(Icons.logout_rounded, color: Colors.indigo),
                ),
              ),
            ],
          ),
          
          Gap(25.h),
          
          // Stats Grid
          LayoutBuilder(
            builder: (context, constraints) {
               final isWide = constraints.maxWidth > 600;
               return GridView.count(
                crossAxisCount: isWide ? 4 : 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.w,
                childAspectRatio: isWide ? 1.4 : 1.1,
                children: [
                  _buildStatCard("Pending Users", "12", Icons.person_add, Colors.orange),
                  _buildStatCard("Total Staff", "145", Icons.people_alt, Colors.blue),
                  _buildStatCard("On Leave", "8", Icons.beach_access, Colors.purple),
                  _buildStatCard("Attendance", "92%", Icons.trending_up, Colors.green),
                ],
              );
            }
          ),
          
          Gap(30.h),
          
          // Department Distribution
          Text("Department Breakdown", style: GoogleFonts.montserrat(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          Gap(15.h),
          GlassContainer(
            height: 250.h,
            width: double.infinity,
            color: Colors.white,
            opacity: 0.6,
            padding: EdgeInsets.all(20.w),
            child: Row(
              children: [
                Expanded(
                  child: PieChart(
                    PieChartData(
                      sectionsSpace: 2,
                      centerSpaceRadius: 40,
                      sections: [
                        PieChartSectionData(
                          color: Colors.blue, value: 40, title: '40%', radius: 50,
                          titleStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                         PieChartSectionData(
                          color: Colors.purple, value: 30, title: '30%', radius: 50,
                          titleStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: Colors.orange, value: 20, title: '20%', radius: 50,
                          titleStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: Colors.green, value: 10, title: '10%', radius: 50,
                          titleStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildChartLegend("Engineering", Colors.blue),
                    _buildChartLegend("Design", Colors.purple),
                    _buildChartLegend("Marketing", Colors.orange),
                    _buildChartLegend("Operations", Colors.green),
                  ],
                )
              ],
            ),
          ),
          
          Gap(30.h),
          
          // Recent Activity
          Text("Recent Activity", style: GoogleFonts.montserrat(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          Gap(15.h),
          _buildActivityItem("John Doe requested Leave", "Sick Leave • 2 days", "10 min ago"),
          Gap(10.h),
          _buildActivityItem("Sarah Smith registered", "Frontend Dev • Waiting Approval", "1 hour ago"),
           Gap(10.h),
          _buildActivityItem("System Maintenance", "Scheduled for Sunday 2 AM", "2 hours ago"),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return GlassContainer(
      color: Colors.white,
      opacity: 0.6,
      border: Border.all(color: Colors.white.withOpacity(0.5)),
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 24.sp),
          ),
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value, style: GoogleFonts.outfit(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Color(0xFF102E76))),
              Text(title, style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.grey[700])),
            ],
          )
        ],
      ),
    ).animate().scale();
  }
  
  Widget _buildChartLegend(String label, Color color) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Container(width: 12.w, height: 12.w, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
          Gap(8.w),
          Text(label, style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
  
  Widget _buildActivityItem(String title, String subtitle, String time) {
    return GlassContainer(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      color: Colors.white,
      opacity: 0.5,
      child: Row(
        children: [
          Container(
            width: 40.w, height: 40.w,
            decoration: BoxDecoration(color: Colors.indigo.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.notifications_none, color: Colors.indigo),
          ),
          Gap(15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 14.sp)),
                Text(subtitle, style: GoogleFonts.inter(color: Colors.grey[700], fontSize: 12.sp)),
              ],
            ),
          ),
          Text(time, style: GoogleFonts.inter(color: Colors.grey, fontSize: 10.sp)),
        ],
      ),
    );
  }
}
