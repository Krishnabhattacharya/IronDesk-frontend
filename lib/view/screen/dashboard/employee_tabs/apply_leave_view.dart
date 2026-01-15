import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class ApplyLeaveView extends StatefulWidget {
  const ApplyLeaveView({super.key});

  @override
  State<ApplyLeaveView> createState() => _ApplyLeaveViewState();
}

class _ApplyLeaveViewState extends State<ApplyLeaveView> {
  String _selectedType = "Sick Leave";
  final _reasonController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9),
      appBar: AppBar(
        title: Text("Apply Leave", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.indigo)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.indigo), onPressed: () => context.pop()),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            GlassContainer(
              color: Colors.white,
              opacity: 0.9,
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Leave Details", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16.sp)),
                  Gap(20.h),
                  
                  _buildLabel("Leave Type"),
                  DropdownButtonFormField<String>(
                    value: _selectedType,
                    items: ["Sick Leave", "Casual Leave", "Privilege Leave", "Unpaid Leave"]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (val) => setState(() => _selectedType = val!),
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                  ),
                  
                  Gap(20.h),
                  
                  _buildLabel("Date Range"),
                  Row(
                    children: [
                      Expanded(child: _buildDateInput("Start Date", "Jan 20, 2024")),
                      Gap(10.w),
                      Expanded(child: _buildDateInput("End Date", "Jan 21, 2024")),
                    ],
                  ),
                  
                  Gap(20.h),
                  
                  _buildLabel("Reason"),
                  TextFormField(
                    controller: _reasonController,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Enter note for HR...",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  
                  Gap(30.h),
                  
                  SizedBox(
                    width: double.infinity,
                    height: 55.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () {
                         // Submit Logic
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Leave Request Submitted!")));
                         context.pop();
                      },
                      child: Text("Submit Request", style: TextStyle(color: Colors.white, fontSize: 16.sp)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Text(text, style: GoogleFonts.inter(fontWeight: FontWeight.w600, color: Colors.grey[800])),
    );
  }
  
  Widget _buildDateInput(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
        Gap(5.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[400]!),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(value),
              Icon(Icons.calendar_today, size: 16.sp, color: Colors.indigo),
            ],
          ),
        )
      ],
    );
  }
}
