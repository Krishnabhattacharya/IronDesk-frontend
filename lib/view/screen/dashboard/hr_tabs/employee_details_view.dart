import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/data/remote/employee/model/employee_response_model.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class EmployeeDetailsView extends ConsumerStatefulWidget {
  final Datum employee;
  const EmployeeDetailsView({super.key, required this.employee});

  @override
  ConsumerState<EmployeeDetailsView> createState() =>
      _EmployeeDetailsViewState();
}

class _EmployeeDetailsViewState extends ConsumerState<EmployeeDetailsView> {
  late TextEditingController _designationController;
  late TextEditingController _departmentController;
  late TextEditingController _shiftController;
  late TextEditingController _roleController;

  @override
  void initState() {
    super.initState();
    _designationController = TextEditingController(
      text: widget.employee.designation,
    );
    _departmentController = TextEditingController(
      text: widget.employee.department,
    );
    _shiftController = TextEditingController(text: widget.employee.shift);
    _roleController = TextEditingController(
      text: widget.employee.employeeId?.role,
    );
  }

  @override
  void dispose() {
    _designationController.dispose();
    _departmentController.dispose();
    _shiftController.dispose();
    _roleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = ref.watch(ViewModelProvider.companyVM);

    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9),
      appBar: AppBar(
        title: Text(
          "Employee Details",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.indigo),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            GlassContainer(
              color: Colors.white,
              opacity: 0.8,
              padding: EdgeInsets.all(20.w),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35.r,
                    backgroundColor: Colors.indigo.shade100,
                    backgroundImage: widget.employee.imageUrl != null
                        ? NetworkImage(widget.employee.imageUrl!)
                        : null,
                    child: widget.employee.imageUrl == null
                        ? Text(
                            widget.employee.employeeId?.name?[0] ?? "?",
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : null,
                  ),
                  Gap(20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.employee.employeeId?.name ?? "Unknown",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      Text(
                        widget.employee.employeeId?.email ?? "-",
                        style: GoogleFonts.inter(
                          color: Colors.grey[600],
                          fontSize: 14.sp,
                        ),
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
                  Text(
                    "Professional Information",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(color: Colors.grey[300]),
                  Gap(10.h),
                  _buildTextField("Designation", _designationController),
                  Gap(15.h),
                  _buildTextField("Department", _departmentController),
                  Gap(15.h),
                  _buildTextField("Shift", _shiftController),
                  Gap(15.h),
                  _buildTextField(
                    "Role",
                    _roleController,
                    readOnly: true,
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
                      onPressed: vm.loading
                          ? null
                          : () async {
                              Map<String, dynamic> data = {
                                "designation": _designationController.text,
                                "department": _departmentController.text,
                                "shift": _shiftController.text,
                              };

                              if (widget.employee.id != null) {
                                bool success = await vm.updateEmployee(
                                  widget.employee.id!,
                                  data,
                                );
                                if (success && mounted) {
                                  context.pop();
                                }
                              }
                            },
                      child: vm.loading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : Text(
                              "Save Changes",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                              ),
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

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    bool readOnly = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        Gap(8.h),
        TextFormField(
          controller: controller,
          readOnly: readOnly,
          decoration: InputDecoration(
            fillColor: readOnly ? Colors.grey[100] : Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
          ),
        ),
      ],
    );
  }
}
