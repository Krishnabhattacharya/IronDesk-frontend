import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/data/remote/company/model/register_company_request_model.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/screen/auth/auth_viewmodel.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:irondesk/view/widgets/max_width_wrapper.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CompanyRegisterView extends ConsumerStatefulWidget {
  const CompanyRegisterView({super.key});

  @override
  ConsumerState<CompanyRegisterView> createState() =>
      _CompanyRegisterViewState();
}

class _CompanyRegisterViewState extends ConsumerState<CompanyRegisterView>
    with BaseScreenView {
  final _formKey = GlobalKey<FormState>();

  late AuthViewmodel authVM;
  final _companyNameController = TextEditingController();
  final _adminNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  @override
  void initState() {
    super.initState();
    authVM = ref.read(ViewModelProvider.authVM);
    authVM.attachView(this);
  }

  @override
  Widget build(BuildContext context) {
    final authVM = ref.watch(ViewModelProvider.authVM);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFE0EAFC), Color(0xFFCFDEF3)],
              ),
            ),
          ),

          Center(
            child: MaxWidthWrapper(
              maxWidth: 600,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        BackButton(onPressed: () => context.pop()),
                        Expanded(
                          child: Text(
                            "Create Workspace",
                            style: GoogleFonts.montserrat(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF102E76),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(width: 48), // Balance Bac kButton
                      ],
                    ),

                    Gap(30.h),

                    GlassContainer(
                      padding: EdgeInsets.all(24.w),
                      color: Colors.white,
                      opacity: 0.8,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Company Details",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo,
                              ),
                            ),
                            Gap(15.h),
                            _buildTextField(
                              "Company Name",
                              _companyNameController,
                              Icons.business,
                            ),

                            Gap(25.h),

                            Text(
                              "Admin Information",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo,
                              ),
                            ),
                            Gap(15.h),
                            _buildTextField(
                              "Admin Full Name",
                              _adminNameController,
                              Icons.person,
                            ),
                            Gap(15.h),
                            _buildTextField(
                              "Email Address",
                              _emailController,
                              Icons.email,
                            ),
                            Gap(15.h),
                            _buildTextField(
                              "Password",
                              _passwordController,
                              Icons.lock,
                              isPassword: true,
                            ),
                            Gap(15.h),

                            _buildTextField(
                              "Address",
                              _addressController,
                              Icons.location_on,
                            ),
                            Gap(15.h),
                            _buildTextField(
                              "Phone Number (Optional)",
                              _phoneController,
                              Icons.phone,
                            ),

                            Gap(30.h),

                            SizedBox(
                              width: double.infinity,
                              height: 55.h,
                              child: ElevatedButton(
                                onPressed: authVM.loading
                                    ? null
                                    : _handleRegister,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: authVM.loading
                                    ? CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : Text(
                                        "Register Company",
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animate().fadeIn().slideY(begin: 0.1, end: 0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller,
    IconData icon, {
    bool isPassword = false,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      validator: (value) {
        if (!label.contains("Optional") && (value == null || value.isEmpty)) {
          return "$label is required";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.indigo.shade300),
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.indigo),
        ),
      ),
    );
  }

  void _handleRegister() async {
    final registerCompanyRequestModel = RegisterCompanyRequestModel(
      companyName: _companyNameController.text,
      adminName: _adminNameController.text,
      adminEmail: _emailController.text,
      adminPassword: _passwordController.text,
      address: _addressController.text,
      companyEmail: _emailController.text,
    );
    await authVM.registerCompany(registerCompanyRequestModel);
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }
}
