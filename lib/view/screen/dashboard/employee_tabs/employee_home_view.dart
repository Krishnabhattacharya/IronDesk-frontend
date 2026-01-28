import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/screen/dashboard/employee_dashboard.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:irondesk/view/widgets/attendance_timer.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fl_chart/fl_chart.dart';

class EmployeeHomeView extends ConsumerWidget {
  const EmployeeHomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employeeViewModel = ref.watch(ViewModelProvider.employeeVM);
    final attendance = employeeViewModel.todayAttendence.data;

    final hasCheckedIn = attendance?.checkInTime != null;
    final hasCheckedOut = attendance?.checkOutTime != null;

    IconData statusIcon;
    Color statusColor;
    String statusText;

    if (!hasCheckedIn && !hasCheckedOut) {
      statusIcon = Icons.cancel;
      statusColor = Colors.red;
      statusText = "Not Checked In";
    } else if (hasCheckedIn && !hasCheckedOut) {
      statusIcon = Icons.check_circle;
      statusColor = Colors.green;
      statusText = "Checked In";
    } else {
      statusIcon = Icons.check_circle_outline;
      statusColor = Colors.blue;
      statusText = "Day Completed";
    }

    String buttonText;
    Color buttonColor;
    VoidCallback? onPressed;

    if (!hasCheckedIn && !hasCheckedOut) {
      buttonText = "Check In Now";
      buttonColor = Colors.indigo;
      onPressed = () => context.pushNamed(AppRoute.attendanceCheckIn.name);
    } else if (hasCheckedIn && !hasCheckedOut) {
      buttonText = "Check Out Now";
      buttonColor = Colors.red;
      onPressed = () => context.pushNamed(AppRoute.attendanceCheckIn.name);
    } else {
      buttonText = "Attendance Completed";
      buttonColor = Colors.grey;
      onPressed = null;
    }

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
              color: const Color(0xFF102E76),
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
                            Icon(statusIcon, color: statusColor, size: 20.sp),
                            Gap(6.w),
                            Text(
                              statusText,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                                color: statusColor,
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
                          hasCheckedIn && !hasCheckedOut
                              ? AttendanceTimer(
                                  checkInTime: attendance?.checkInTime,
                                )
                              : Text(
                                  "--:--",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
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
                          backgroundColor: buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: onPressed == null ? 0 : 4,
                        ),
                        onPressed: onPressed,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: Colors.white),
                            Gap(10.w),
                            Text(
                              buttonText,
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .animate(target: onPressed == null ? 0 : 1)
                    .shimmer(duration: 2.seconds, delay: 1.seconds),
              ],
            ),
          ),
          Gap(20.h),
          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 600;
              return GridView.count(
                crossAxisCount: isWide ? 4 : 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.w,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: isWide ? 1.4 : 1.2,
                children: [
                  _buildSummaryCard(
                    Icons.calendar_today,
                    "Attendance",
                    employeeViewModel.attendanceHistory.length.toString(),
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
          Gap(20.h),
          Text(
            "Team Distribution",
            style: GoogleFonts.montserrat(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(12.h),
          _buildDeveloperChart(),
          Gap(20.h),
          Text(
            "Upcoming Holidays",
            style: GoogleFonts.montserrat(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(12.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildHolidayCard("Republic Day", "26 Jan", Colors.orange),
                _buildHolidayCard("Holi", "25 Mar", Colors.pink),
                _buildHolidayCard("Good Friday", "29 Mar", Colors.purple),
                _buildHolidayCard("Eid al-Fitr", "11 Apr", Colors.green),
              ],
            ),
          ),
          Gap(20.h),
          Text(
            "Announcements",
            style: GoogleFonts.montserrat(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(12.h),
          _buildAnnouncementsSection(),
          Gap(100.h),
        ],
      ),
    );
  }

  Widget _buildDeveloperChart() {
    return GlassContainer(
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
                    color: Colors.blue,
                    value: 40,
                    title: '40%',
                    radius: 50,
                    titleStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    color: Colors.purple,
                    value: 30,
                    title: '30%',
                    radius: 50,
                    titleStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    color: Colors.orange,
                    value: 20,
                    title: '20%',
                    radius: 50,
                    titleStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    color: Colors.green,
                    value: 10,
                    title: '10%',
                    radius: 50,
                    titleStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildChartLegend("Web Dev", Colors.blue),
              _buildChartLegend("App Dev", Colors.purple),
              _buildChartLegend("AI/ML", Colors.orange),
              _buildChartLegend("Backend", Colors.green),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChartLegend(String label, Color color) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Container(
            width: 12.w,
            height: 12.w,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          Gap(8.w),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHolidayCard(String title, String date, Color color) {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: GlassContainer(
        width: 140.w,
        padding: EdgeInsets.all(16.w),
        color: color,
        opacity: 0.1,
        border: Border.all(color: color.withOpacity(0.3)),
        child: Column(
          children: [
            Text(
              date,
              style: GoogleFonts.outfit(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Gap(4.h),
            Text(
              title,
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnnouncementsSection() {
    return Column(
      children: [
        _buildAnnouncementItem(
          "New HR Policy Update",
          "Effectively immediately, all leave requests...",
          true,
        ),
        Gap(10.h),
        _buildAnnouncementItem(
          "Q1 Townhall Meeting",
          "Join us this Friday for the quarterly...",
          false,
        ),
        Gap(10.h),
        _buildAnnouncementItem(
          "Server Maintenance",
          "Servers will be down on Sunday 2 AM...",
          false,
        ),
      ],
    );
  }

  Widget _buildAnnouncementItem(String title, String subtitle, bool isNew) {
    return GlassContainer(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      color: Colors.white,
      opacity: 0.6,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: Colors.indigo.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.campaign, color: Colors.indigo, size: 24.sp),
          ),
          Gap(15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    if (isNew) ...[
                      Gap(8.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          "NEW",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.inter(
                    color: Colors.grey[700],
                    fontSize: 12.sp,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
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
        opacity: 0.15,
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
                    color: const Color(0xFF102E76),
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
