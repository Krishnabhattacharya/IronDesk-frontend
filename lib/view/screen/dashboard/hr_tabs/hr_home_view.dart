import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class HRHomeView extends StatelessWidget {
  const HRHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Overview", style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.bold)),
          Gap(15.h),
          
          // KPI Grid
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.5,
            children: [
              _buildKPICard("Pending Users", "12", Colors.orange),
              _buildKPICard("Total Employees", "145", Colors.blue),
              _buildKPICard("Attendance", "92%", Colors.green),
              _buildKPICard("Alerts", "3", Colors.red),
            ],
          ),
          
          Gap(25.h),
          
          Text("Department Distribution", style: GoogleFonts.montserrat(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          Gap(10.h),
          // Pie Chart
          SizedBox(
            height: 200.h,
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(color: Colors.blue, value: 40, title: "Tech", radius: 50),
                  PieChartSectionData(color: Colors.red, value: 30, title: "HR", radius: 50),
                  PieChartSectionData(color: Colors.green, value: 15, title: "Ops", radius: 50),
                  PieChartSectionData(color: Colors.orange, value: 15, title: "Sales", radius: 50),
                ],
                centerSpaceRadius: 40,
              ),
            ),
          ),
          
          Gap(25.h),
          
           Text("Attendance Trend", style: GoogleFonts.montserrat(fontSize: 18.sp, fontWeight: FontWeight.bold)),
           Gap(10.h),
           // Line Chart Placeholder (Simple Container for now to save complexity)
           GlassContainer(
             height: 200.h,
             color: Colors.white,
             opacity: 0.5,
             child: Center(child: Text("Line Chart Here")),
           ),
        ],
      ),
    );
  }

  Widget _buildKPICard(String title, String value, Color color) {
    return GlassContainer(
      color: color,
      opacity: 0.1,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value, style: GoogleFonts.inter(fontSize: 28.sp, fontWeight: FontWeight.bold, color: color)),
          Text(title, style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.grey[700])),
        ],
      ),
    );
  }
}
