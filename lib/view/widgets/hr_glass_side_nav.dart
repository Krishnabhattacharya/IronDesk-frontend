import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HRGlassSideNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const HRGlassSideNav({
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
                 _buildNavItem(0, Icons.dashboard_rounded, "Overview"),
                 SizedBox(height: 20.h),
                 _buildNavItem(1, Icons.person_add_rounded, "Requests"),
                 SizedBox(height: 20.h),
                 _buildNavItem(2, Icons.people_alt_rounded, "Staff"),
                 SizedBox(height: 20.h),
                 _buildNavItem(3, Icons.calendar_month_rounded, "Attd"),
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
