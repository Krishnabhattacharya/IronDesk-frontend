import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/screen/dashboard/company_viewmodel.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class EmployeesDirectoryView extends ConsumerStatefulWidget {
  const EmployeesDirectoryView({super.key});

  @override
  ConsumerState<EmployeesDirectoryView> createState() =>
      _EmployeesDirectoryViewState();
}

class _EmployeesDirectoryViewState extends ConsumerState<EmployeesDirectoryView>
    with BaseScreenView {
  late CompanyViewModel companyViewModel;

  @override
  void initState() {
    super.initState();
    companyViewModel = ref.read(ViewModelProvider.companyVM);
    companyViewModel.attachView(this);
  }

  @override
  Widget build(BuildContext context) {
    final vm = ref.watch(ViewModelProvider.companyVM);

    return vm.loading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            padding: EdgeInsets.all(16.w),
            itemCount: vm.getEmployeeListResponse.data?.length ?? 0,
            itemBuilder: (context, index) {
              final employee = vm.getEmployeeListResponse.data?[index];
              final user = employee!.employeeId;

              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: GestureDetector(
                  onTap: () {
                    if (employee != null) {
                      context.pushNamed(
                        AppRoute.employeeDetails.name,
                        extra: employee,
                      );
                    }
                  },
                  child: GlassContainer(
                    color: Colors.white,
                    opacity: 0.8,
                    padding: EdgeInsets.all(16.w),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundImage:
                              employee.imageUrl != null &&
                                  employee.imageUrl!.isNotEmpty
                              ? NetworkImage(employee.imageUrl!)
                              : null,
                          backgroundColor: Colors.indigo.shade100,
                          child:
                              (employee.imageUrl == null ||
                                  employee.imageUrl!.isEmpty)
                              ? Text(
                                  (user?.name != null && user!.name!.isNotEmpty)
                                      ? user.name![0].toUpperCase()
                                      : "?",
                                  style: GoogleFonts.inter(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo,
                                  ),
                                )
                              : null,
                        ),
                        Gap(15.w),

               
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user?.name ?? "Unknown Name",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  color: Colors.black87,
                                ),
                              ),
                              Gap(4.h),
                              Row(
                                children: [
                                  Icon(
                                    Icons.work_outline,
                                    size: 14.sp,
                                    color: Colors.grey[700],
                                  ),
                                  Gap(5.w),
                                  Text(
                                    employee.designation ?? "No Designation",
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Gap(4.h),
                              Row(
                                children: [
                                  Icon(
                                    Icons.apartment,
                                    size: 14.sp,
                                    color: Colors.grey[700],
                                  ),
                                  Gap(5.w),
                                  Text(
                                    employee.department ?? "No Department",
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 5.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.indigo.withOpacity(0.2),
                            ),
                          ),
                          child: Text(
                            user?.role ?? "EMPLOYEE",
                            style: GoogleFonts.inter(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
}
