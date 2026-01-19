import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassSideNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const GlassSideNav({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w, // Fixed width for sidebar
      height: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20,
            offset: const Offset(10, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white.withOpacity(0.6),
                width: 1.5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNavItem(0, Icons.home_rounded, "Home"),
                SizedBox(height: 20.h),
                _buildNavItem(1, Icons.calendar_month_rounded, "Attendance"),
                SizedBox(height: 20.h),
                _buildNavItem(2, Icons.beach_access_rounded, "Leave"),
                SizedBox(height: 20.h),
                _buildNavItem(3, Icons.attach_money_rounded, "Salary"),
                SizedBox(height: 20.h),
                _buildNavItem(4, Icons.person_rounded, "Profile"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onTabSelected(index),
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: isSelected ? Colors.indigo.withOpacity(0.15) : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 28.sp,
          color: isSelected ? Colors.indigo : Colors.grey.shade600,
        ),
      ),
    );
  }
}
