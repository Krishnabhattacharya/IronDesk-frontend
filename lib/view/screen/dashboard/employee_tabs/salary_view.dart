import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class SalaryView extends StatelessWidget {
  const SalaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Current Month", style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.bold)),
          Gap(15.h),
          
          // Salary Overview Card
          GlassContainer(
            width: double.infinity,
            padding: EdgeInsets.all(20.w),
    
            //  gradient: const LinearGradient(colors: [Color(0xFF11998e), Color(0xFF38ef7d)]),
            
            color: Colors.green, // Fallback
            opacity: 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Net Pay", style: GoogleFonts.inter(color: Colors.white70)),
                Gap(5.h),
                Text("\$4,500.00", style: GoogleFonts.inter(fontSize: 32.sp, fontWeight: FontWeight.bold, color: Colors.white)),
                Gap(20.h),
                Divider(color: Colors.white30),
                Gap(10.h),
                _buildRow("Base Salary", "\$4,000", Colors.white),
                _buildRow("Allowances", "+\$800", Colors.white),
                _buildRow("Deductions", "-\$300", Colors.white),
              ],
            ),
          ),
          
          Gap(30.h),
          Text("Payslip History", style: GoogleFonts.montserrat(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          Gap(15.h),
          
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            separatorBuilder: (c, i) => Gap(10.h),
            itemBuilder: (context, index) {
              final months = ["December 2023", "November 2023", "October 2023", "September 2023"];
              return GlassContainer(
                padding: EdgeInsets.all(16.w),
                color: Colors.white,
                opacity: 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.indigo.withOpacity(0.1), shape: BoxShape.circle),
                          child: Icon(Icons.description, color: Colors.indigo),
                        ),
                        Gap(15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(months[index], style: GoogleFonts.inter(fontWeight: FontWeight.bold)),
                            Text("\$4,500.00", style: GoogleFonts.inter(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
  
  Widget _buildRow(String label, String value, Color color) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: GoogleFonts.inter(color: color.withOpacity(0.8))),
          Text(value, style: GoogleFonts.inter(fontWeight: FontWeight.w600, color: color)),
        ],
      ),
    );
  }
}
