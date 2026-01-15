import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
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
                    Text("Attendance", style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text("Jan 2024", style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70)),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text("92% Present", style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: Colors.white)),
                )
              ],
            ),
          ),
          
          Gap(20.h),
          
          // Calendar Grid (Simulated)
          Text("Month View", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16.sp)),
          Gap(10.h),
          // Glass Calendar Grid
          GlassContainer(
            width: double.infinity,
            padding: EdgeInsets.all(16.w),
            color: Colors.white,
            opacity: 0.15,
            border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.5),
            child: Column(
              children: [
                // Week Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
                      .map((d) => Text(d, style: TextStyle(color: Colors.white70, fontSize: 12.sp, fontWeight: FontWeight.bold)))
                      .toList(),
                ),
                Gap(15.h),
                // Days Grid (Mock)
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 7,
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 8.w,
                  children: List.generate(31, (index) {
                    final day = index + 1;
                    // Mock status: 1=Present, 2=Late, 3=Absent, 0=Weekend/Future
                    int status = 1;
                    if (day % 7 == 0 || day % 7 == 6) status = 0; // Weekend
                    if (day == 5 || day == 18) status = 2; // Late
                    if (day == 12) status = 3; // Absent
                    
                    Color color = Colors.white.withOpacity(0.1);
                    Color textColor = Colors.white70;
                    
                    if (status == 1) { color = Colors.green.withOpacity(0.3); textColor = Colors.white; }
                    if (status == 2) { color = Colors.amber.withOpacity(0.3); textColor = Colors.white; }
                    if (status == 3) { color = Colors.red.withOpacity(0.3); textColor = Colors.white; }
                    
                    return Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white.withOpacity(0.1)),
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
                // Legend
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildLegend("Present", Colors.green),
                    _buildLegend("Late", Colors.amber),
                    _buildLegend("Absent", Colors.red),
                  ],
                )
              ],
            ),
          ),
          
          Gap(20.h),
          
          Text("Recent Logs", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16.sp)),
          Gap(10.h),
          
          // Logs List
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: GlassContainer(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
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
                             child: Icon(Icons.login, color: Colors.blue, size: 20.sp),
                           ),
                           Gap(12.w),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(DateFormat('MMM dd, yyyy').format(DateTime.now().subtract(Duration(days: index))), style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
                               Text("09:00 AM - 06:00 PM", style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.grey)),
                             ],
                           ),
                         ],
                       ),
                       Container(
                         padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                         decoration: BoxDecoration(
                           color: Colors.green.withOpacity(0.2),
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Text("9 hrs", style: TextStyle(color: Colors.green[800], fontSize: 12.sp, fontWeight: FontWeight.bold)),
                       )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
  
  Widget _buildLegend(String label, Color color) {
    return Row(
      children: [
        CircleAvatar(radius: 4, backgroundColor: color),
        Gap(5.w),
        Text(label, style: TextStyle(fontSize: 12.sp, color: Colors.grey[700])),
      ],
    );
  }
}
