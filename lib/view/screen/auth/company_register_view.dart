import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:irondesk/view/widgets/max_width_wrapper.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CompanyRegisterView extends ConsumerStatefulWidget {
  const CompanyRegisterView({super.key});

  @override
  ConsumerState<CompanyRegisterView> createState() => _CompanyRegisterViewState();
}

class _CompanyRegisterViewState extends ConsumerState<CompanyRegisterView> {
  final _formKey = GlobalKey<FormState>();
  
  // Controllers
  final _companyNameController = TextEditingController();
  final _adminNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFE0EAFC),
                  Color(0xFFCFDEF3),
                ],
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
                    // Header
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
                        SizedBox(width: 48), // Balance BackButton
                      ],
                    ),
                    
                    Gap(30.h),
                    
                    // Form Card
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
                            _buildTextField("Company Name", _companyNameController, Icons.business),
                            
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
                            _buildTextField("Admin Full Name", _adminNameController, Icons.person),
                            Gap(15.h),
                            _buildTextField("Email Address", _emailController, Icons.email),
                            Gap(15.h),
                            _buildTextField("Password", _passwordController, Icons.lock, isPassword: true),
                            Gap(15.h),
                            _buildTextField("Phone Number (Optional)", _phoneController, Icons.phone),
                            
                            Gap(30.h),
                            
                            // Submit Button
                            SizedBox(
                              width: double.infinity,
                              height: 55.h,
                              child: ElevatedButton(
                                onPressed: _isLoading ? null : _handleRegister,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: _isLoading 
                                  ? CircularProgressIndicator(color: Colors.white)
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

  Widget _buildTextField(String label, TextEditingController controller, IconData icon, {bool isPassword = false}) {
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
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      
      // Simulate API call
      await Future.delayed(Duration(seconds: 2));
      
      setState(() => _isLoading = false);
      
      if (mounted) {
        // Navigate to Admin Dashboard (or Success Screen)
        // For now, let's go to Admin Dashboard
        context.goNamed(AppRoute.hrDashboard.name);
      }
    }
  }
}
