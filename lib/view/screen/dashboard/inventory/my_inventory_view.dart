import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class MyInventoryView extends StatelessWidget {
  const MyInventoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9),
      appBar: AppBar(
        title: Text("My Inventory", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.indigo)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.indigo), onPressed: () => context.pop()),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20.w),
        itemCount: 3,
        itemBuilder: (context, index) {
          final items = [
             {"name": "MacBook Pro M2", "id": "AST-001", "status": "Good"},
             {"name": "Dell Monitor 27\"", "id": "AST-023", "status": "Good"},
             {"name": "Logitech Mouse", "id": "AST-099", "status": "Worn"},
          ];
          final item = items[index];
          
          return Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: GlassContainer(
              color: Colors.white,
              opacity: 0.8,
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                  Container(
                    width: 60.w,
                    height: 60.w,
                    decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.computer, color: Colors.grey),
                  ),
                  Gap(15.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item["name"]!, style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16.sp)),
                        Text("ID: ${item["id"]}", style: GoogleFonts.inter(color: Colors.grey[600], fontSize: 12.sp)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                    child: Text(item["status"]!, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 12.sp)),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
