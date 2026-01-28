import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/data/remote/employee/model/attendance_history_model.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:intl/intl.dart';

class AttendanceView extends ConsumerWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employeeViewModel = ref.watch(ViewModelProvider.employeeVM);
    final history = employeeViewModel.attendanceHistory;
    final now = DateTime.now();
    final daysInMonth = DateUtils.getDaysInMonth(now.year, now.month);

    // Calculate stats
    final presentDays = history.where((r) {
      if (r.date == null) return false;
      try {
        final date = DateTime.parse(r.date!);
        return date.month == now.month &&
            date.year == now.year &&
            (r.status == 'PRESENT' || r.status == 'LATE');
      } catch (e) {
        return false;
      }
    }).length;

    final percentage = (daysInMonth > 0)
        ? (presentDays / daysInMonth * 100).toInt()
        : 0;

    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GlassContainer(
            padding: EdgeInsets.all(20.w),
            color: Colors.indigo,
            opacity: 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Attendance",
                      style: GoogleFonts.montserrat(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      DateFormat('MMM yyyy').format(now),
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "$percentage% Present",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Gap(20.h),

          Text(
            "Month View",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          Gap(10.h),
          GlassContainer(
            width: double.infinity,
            padding: EdgeInsets.all(16.w),
            color: Colors.white,
            opacity: 0.15,
            border: Border.all(
              color: Colors.white.withOpacity(0.3),
              width: 1.5,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
                      .map(
                        (d) => Text(
                          d,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                      .toList(),
                ),
                Gap(15.h),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 7,
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 8.w,
                  children: List.generate(daysInMonth, (index) {
                    final day = index + 1;
                    final currentDate = DateTime(now.year, now.month, day);

                    // Determine status logic
                    // 0 = Empty/Default, 1 = Present, 2 = Late (if implemented), 3 = Absent

                    int status = 0;

                    // Find record for this day
                    final record = history.firstWhere((r) {
                      if (r.date == null) return false;
                      try {
                        final rDate = DateTime.parse(r.date!).toLocal();
                        return rDate.year == currentDate.year &&
                            rDate.month == currentDate.month &&
                            rDate.day == currentDate.day;
                      } catch (e) {
                        return false;
                      }
                    }, orElse: () => const AttendanceRecord());

                    if (record.status == 'PRESENT') {
                      status = 1;
                    } else if (record.status == 'LATE') {
                      status = 2;
                    } else if (record.status == 'ABSENT') {
                      status = 3;
                    }

                    Color color = Colors.white.withOpacity(0.1);
                    Color textColor = Colors.white70;

                    if (status == 1) {
                      color = Colors.green.withOpacity(0.3);
                      textColor = Colors.white;
                    } else if (status == 2) {
                      color = Colors.amber.withOpacity(0.3);
                      textColor = Colors.white;
                    } else if (status == 3) {
                      color = Colors.red.withOpacity(0.3);
                      textColor = Colors.white;
                    }

                    return Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "$day",
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Gap(15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildLegend("Present", Colors.green),
                    _buildLegend("Late", Colors.amber),
                    _buildLegend("Absent", Colors.red),
                  ],
                ),
              ],
            ),
          ),

          Gap(20.h),

          Text(
            "Recent Logs",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          Gap(10.h),

          employeeViewModel.loading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: history.length,
                  itemBuilder: (context, index) {
                    final record = history[index];
                    final checkIn = record.checkInTime?.toLocal();
                    final checkOut = record.checkOutTime?.toLocal();

                    String timeRange = "--:--";
                    if (checkIn != null) {
                      timeRange = DateFormat('hh:mm a').format(checkIn);
                      if (checkOut != null) {
                        timeRange +=
                            " - ${DateFormat('hh:mm a').format(checkOut)}";
                      } else {
                        timeRange += " - Ongoing";
                      }
                    }

                    String durationStr = "--";
                    if (checkIn != null && checkOut != null) {
                      final duration = checkOut.difference(checkIn);
                      final hours = duration.inHours;
                      final minutes = duration.inMinutes % 60;
                      durationStr = "${hours}h ${minutes}m";
                    }

                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: GlassContainer(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 12.h,
                        ),
                        color: Colors.white,
                        opacity: 0.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.w),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(
                                    Icons.login,
                                    color: Colors.blue,
                                    size: 20.sp,
                                  ),
                                ),
                                Gap(12.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      record.date != null
                                          ? DateFormat('MMM dd, yyyy').format(
                                              DateTime.parse(
                                                record.date!,
                                              ).toLocal(),
                                            )
                                          : "Unknown Date",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      timeRange,
                                      style: GoogleFonts.inter(
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 4.h,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                durationStr,
                                style: TextStyle(
                                  color: Colors.green[800],
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }

  Widget _buildLegend(String label, Color color) {
    return Row(
      children: [
        CircleAvatar(radius: 4, backgroundColor: color),
        Gap(5.w),
        Text(
          label,
          style: TextStyle(fontSize: 12.sp, color: Colors.grey[700]),
        ),
      ],
    );
  }
}
