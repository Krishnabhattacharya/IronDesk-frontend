import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:irondesk/view/widgets/max_width_wrapper.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFE0EAFC), // Light Blue
                  Color(0xFFCFDEF3), // Light Grey-Blue
                ],
              ),
            ),
          ),
          
          Center(
            child: MaxWidthWrapper(
              maxWidth: 800,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Illustration or Logo
                    Icon(
                      Icons.business_center_rounded,
                      size: 80.sp,
                      color: Colors.indigo.shade800,
                    ).animate().fadeIn().scale(duration: 600.ms),
                    
                    Gap(20.h),
                    
                    Text(
                      "Welcome to IronDesk",
                      style: GoogleFonts.montserrat(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF102E76),
                      ),
                      textAlign: TextAlign.center,
                    ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.2, end: 0),
                    
                    Gap(10.h),
                    
                    Text(
                      "The Complete Office Management Solution.\nManage attendance, leaves, payroll, and more.",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: Colors.grey[600],
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ).animate().fadeIn(delay: 400.ms),
                    
                    Gap(60.h),
                    
                    // Action Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Create Workspace Button
                        Expanded(
                          child: _buildActionCard(
                            context,
                            title: "Create Workspace",
                            subtitle: "Register your company and start managing your team.",
                            icon: Icons.add_business_rounded,
                            color: Colors.indigo,
                            onTap: () => context.pushNamed(AppRoute.registerCompany.name),
                          ),
                        ),
                        
                        Gap(20.w),
                        
                        // Login Button
                        Expanded(
                          child: _buildActionCard(
                            context,
                            title: "Login",
                            subtitle: "Already have an account? Sign in here.",
                            icon: Icons.login_rounded,
                            color: Colors.blue.shade700,
                            onTap: () => context.pushNamed(AppRoute.loginView.name),
                          ),
                        ),
                      ],
                    ).animate().fadeIn(delay: 600.ms).slideY(begin: 0.2, end: 0),
                    
                    Gap(40.h),
                    
                    Text(
                      "v1.0.0",
                      style: GoogleFonts.inter(color: Colors.grey[400], fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: GlassContainer(
        height: 220.h,
        padding: EdgeInsets.all(24.w),
        color: Colors.white,
        opacity: 0.6,
        border: Border.all(color: Colors.white.withOpacity(0.8), width: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 32.sp, color: color),
            ),
            Gap(20.h),
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFF102E76),
              ),
              textAlign: TextAlign.center,
            ),
            Gap(8.h),
            Text(
              subtitle,
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
