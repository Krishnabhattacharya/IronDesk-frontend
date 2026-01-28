import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/data/remote/auth/model/login_user_response_model.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class ConvertToEmployeeView extends StatefulWidget {
  final User? userData;
  const ConvertToEmployeeView({super.key, this.userData});

  @override
  State<ConvertToEmployeeView> createState() => _ConvertToEmployeeViewState();
}

class _ConvertToEmployeeViewState extends State<ConvertToEmployeeView> {
  final _roleController = TextEditingController();
  String _selectedDept = "Engineering";
  String _selectedShift = "Morning (9-6)";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9),
      appBar: AppBar(
        title: Text(
          "Convert to Employee",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.indigo),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            GlassContainer(
              color: Colors.blue,
              opacity: 0.1,
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                  CircleAvatar(child: Text("U")),
                  Gap(15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.userData?.name ?? "User Name",
                        style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.userData?.email ?? "email@example.com",
                        style: GoogleFonts.inter(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Gap(20.h),

            GlassContainer(
              color: Colors.white,
              opacity: 0.9,
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLabel("Role / Designation"),
                  TextFormField(
                    controller: _roleController,
                    decoration: InputDecoration(
                      hintText: "e.g. Senior Technician",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  Gap(15.h),

                  _buildLabel("Department"),
                  DropdownButtonFormField<String>(
                    initialValue: _selectedDept,
                    items: ["Engineering", "Sales", "Operations", "HR"]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (val) => setState(() => _selectedDept = val!),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  Gap(15.h),

                  _buildLabel("Shift"),
                  DropdownButtonFormField<String>(
                    initialValue: _selectedShift,
                    items: ["Morning (9-6)", "Evening (2-11)", "Night (10-7)"]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (val) => setState(() => _selectedShift = val!),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  Gap(30.h),

                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Employee Created Successfully!"),
                          ),
                        );
                        context.pop();
                      },
                      child: Text(
                        "Confirm & Create Employee",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
