import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/screen/dashboard/employee_dashboard.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:flutter_animate/flutter_animate.dart';

class EmployeeHomeView extends ConsumerWidget {
  const EmployeeHomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "IronDesk",
            style: GoogleFonts.montserrat(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xFF102E76),
            ),
          ),
          Gap(12.h),
          GlassContainer(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.w),
            color: Colors.white,
            opacity: 0.7,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today",
                          style: GoogleFonts.inter(
                            color: Colors.grey[600],
                            fontSize: 14.sp,
                          ),
                        ),
                        Gap(4.h),
                        Row(
                          children: [
                            Icon(Icons.cancel, color: Colors.red, size: 20.sp),
                            Gap(6.w),
                            Text(
                              "Not Checked In",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.blue,
                            size: 20.sp,
                          ),
                          Gap(4.h),
                          Text(
                            "09:00 - 18:00",
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(20.h),
                Divider(color: Colors.grey.withOpacity(0.3)),
                Gap(20.h),
                SizedBox(
                  width: double.infinity,
                  height: 55.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                    ),
                    onPressed: () {
                      context.pushNamed(AppRoute.attendanceCheckIn.name);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: Colors.white),
                        Gap(10.w),
                        Text(
                          "Check In Now",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().shimmer(duration: 2.seconds, delay: 1.seconds),
              ],
            ),
          ),

          Gap(20.h),

          // Summary Cards Grid
          LayoutBuilder(
            builder: (context, constraints) {
              return GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.w,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 1.2,
                children: [
                  _buildSummaryCard(
                    Icons.calendar_today,
                    "Attendance",
                    "20/26",
                    Colors.orange,
                    () => ref.read(employeeNavIndexProvider.notifier).state = 1,
                  ),
                  _buildSummaryCard(
                    Icons.beach_access,
                    "Leave Bal",
                    "8 Days",
                    Colors.teal,
                    () => ref.read(employeeNavIndexProvider.notifier).state = 2,
                  ),
                  _buildSummaryCard(
                    Icons.monetization_on,
                    "Salary",
                    "\$4,500",
                    Colors.green,
                    () => ref.read(employeeNavIndexProvider.notifier).state = 3,
                  ),
                  _buildSummaryCard(
                    Icons.inventory_2,
                    "Inventory",
                    "3 Items",
                    Colors.purple,
                    () => context.pushNamed(AppRoute.myInventory.name),
                  ),
                ],
              );
            },
          ),

          Gap(20.h),
          Text(
            "Quick Actions",
            style: GoogleFonts.montserrat(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(12.h),

          // Apply Leave Action
          InkWell(
            onTap: () => context.pushNamed(AppRoute.applyLeave.name),
            child: GlassContainer(
              height: 80.h,
              width: double.infinity,
              color: Colors.white,
              opacity: 0.6,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.indigo.shade50,
                    child: Icon(Icons.add_task, color: Colors.indigo),
                  ),
                  Gap(15.w),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Apply for Leave",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          "Sick, Casual, or Paid leave",
                          style: GoogleFonts.inter(
                            color: Colors.grey,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),
          ),
          Gap(100.h),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(
    IconData icon,
    String title,
    String value,
    Color color,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: GlassContainer(
        color: Colors.white,
        opacity: 0.15, // More subtle
        border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.5),
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.3),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(icon, color: color, size: 22.sp),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: GoogleFonts.outfit(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF102E76),
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 11.sp,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
