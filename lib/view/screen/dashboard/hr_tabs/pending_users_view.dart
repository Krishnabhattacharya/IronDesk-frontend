import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class PendingUsersView extends StatelessWidget {
  const PendingUsersView({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock Data
    final users = [
      {"name": "Alice Johnson", "email": "alice@example.com", "date": "2024-01-14"},
      {"name": "Bob Smith", "email": "bob@example.com", "date": "2024-01-15"},
      {"name": "Charlie Brown", "email": "charlie@example.com", "date": "2024-01-15"},
    ];

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: GlassContainer(
            color: Colors.white,
            opacity: 0.8,
            padding: EdgeInsets.all(16.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: Colors.indigo.shade100,
                  child: Text(
                    user["name"]![0],
                    style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
                  ),
                ),
                Gap(15.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user["name"]!, style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16.sp)),
                      Text(user["email"]!, style: GoogleFonts.inter(color: Colors.grey, fontSize: 12.sp)),
                      Text("Registered: ${user["date"]}", style: GoogleFonts.inter(color: Colors.grey[600], fontSize: 10.sp)),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  ),
                  onPressed: () {
                    // Navigate to Convert Screen
                    context.pushNamed(AppRoute.convertToEmployee.name, extra: user);
                  },
                  child: Text("Approve", style: TextStyle(color: Colors.white, fontSize: 12.sp)),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
