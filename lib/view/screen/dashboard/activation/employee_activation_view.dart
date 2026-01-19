import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class EmployeeActivationView extends StatelessWidget {
  const EmployeeActivationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Dynamic gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE0EAFC), Color(0xFFCFDEF3)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Success Icon with glow
                  Container(
                    width: 120.w,
                    height: 120.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.withOpacity(0.2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.4),
                          blurRadius: 40,
                          spreadRadius: 10,
                        )
                      ],
                    ),
                    child: Icon(Icons.check_circle_rounded, size: 80.w, color: Colors.green)
                        .animate()
                        .scale(duration: 600.ms, curve: Curves.elasticOut),
                  ),
                  Gap(30.h),
                  
                  // Text Content
                  Text(
                    "Account Activated!",
                    style: GoogleFonts.montserrat(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF102E76),
                    ),
                  ).animate().fadeIn(delay: 300.ms).slideY(begin: 0.2, end: 0),
                  
                  Gap(10.h),
                  
                  Text(
                    "Welcome, Krishna 👋\nYour employee profile is ready.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                  ).animate().fadeIn(delay: 500.ms),
                  
                  Gap(40.h),
                  
                  // Action Button
                  SizedBox(
                    width: double.infinity,
                    height: 55.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF102E76), // Brand color
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        elevation: 5,
                        shadowColor: Colors.indigo.withOpacity(0.4),
                      ),
                      onPressed: () {
                        context.goNamed(AppRoute.employeeDashboard.name);
                      },
                      child: Text(
                        "Go to Dashboard",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ).animate().slideY(begin: 1, end: 0, delay: 700.ms, duration: 600.ms),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
