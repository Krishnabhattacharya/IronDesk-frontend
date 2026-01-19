import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/core/constants.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        children: [
          Gap(20.h),
          // Profile Header
          CircleAvatar(
            radius: 50.r,
            backgroundColor: Colors.indigo.shade100,
            child: Text("KB", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.indigo)),
          ),
          Gap(15.h),
          Text("Krishna Bhattacharya", style: GoogleFonts.montserrat(fontSize: 22.sp, fontWeight: FontWeight.bold)),
          Text("Senior Technician | EMP001", style: GoogleFonts.inter(color: Colors.grey)),
          
          Gap(30.h),
          
          // Info Section
          GlassContainer(
            width: double.infinity,
            padding: EdgeInsets.all(20.w),
            color: Colors.white,
            opacity: 0.6,
            child: Column(
              children: [
                _buildInfoRow(Icons.business, "Department", "Engineering"),
                Divider(),
                _buildInfoRow(Icons.access_time, "Shift", "09:00 AM - 06:00 PM"),
                Divider(),
                _buildInfoRow(Icons.location_on, "Location", "Headquarters, NY"),
              ],
            ),
          ),
          
          Gap(20.h),
          
          // Settings Section
          GlassContainer(
            width: double.infinity,
            padding: EdgeInsets.all(20.w),
            color: Colors.white,
            opacity: 0.6,
            child: Column(
              children: [
                _buildActionRow(Icons.lock_outline, "Change Password", () {}),
                Divider(),
                _buildActionRow(Icons.logout, "Logout", () {
                   SharedPrefsService.remove("user_type");
                   SharedPrefsService.remove(AppConstants.token);
                   context.goNamed(AppRoute.loginView.name);
                }, isDestructive: true),
              ],
            ),
          ),
          
          Gap(40.h),
          Text("App Version 1.0.0", style: TextStyle(color: Colors.grey[400])),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          Gap(15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
                Text(value, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildActionRow(IconData icon, String label, VoidCallback onTap, {bool isDestructive = false}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          children: [
            Icon(icon, color: isDestructive ? Colors.red : Colors.black87),
            Gap(15.w),
            Expanded(child: Text(label, style: TextStyle(color: isDestructive ? Colors.red : Colors.black87, fontWeight: FontWeight.w600))),
            Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
