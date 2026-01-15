import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/services/enums/user_type.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class RegisterView extends StatefulWidget {
  final UserType userType;
  const RegisterView({super.key, this.userType = UserType.client});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           // Background
           Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xFFE0EAFC), Color(0xFFCFDEF3)]),
            ),
          ),
          
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  Text("Create Account", style: GoogleFonts.montserrat(fontSize: 24.sp, fontWeight: FontWeight.bold)),
                  Gap(10.h),
                  Text("Join us as ${widget.userType.name}", style: TextStyle(color: Colors.grey)),
                  Gap(30.h),
                  
                  GlassContainer(
                    width: 1.sw,
                    padding: EdgeInsets.all(20.w),
                    opacity: 0.6,
                    child: Column(
                      children: [
                        _buildTextField("Full Name", Icons.person),
                        Gap(15.h),
                        _buildTextField("Email", Icons.email, controller: _emailController),
                        Gap(15.h),
                        _buildTextField("Password", Icons.lock, controller: _passController, obscure: true),
                        Gap(25.h),
                        
                        SizedBox(
                          width: double.infinity,
                          height: 50.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                            onPressed: () {
                              // Perform Registration logic (Call VM)
                              // For flow demo: Go back to Login or Dashboard
                              context.goNamed(AppRoute.loginView.name);
                            },
                            child: Text("Sign Up", style: TextStyle(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                  
                  Gap(20.h),
                  TextButton(
                    onPressed: () => context.goNamed(AppRoute.loginView.name),
                    child: Text("Already have an account? Login"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTextField(String hint, IconData icon, {TextEditingController? controller, bool obscure = false}) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
        prefixIcon: Icon(icon, color: Colors.indigo),
      ),
    );
  }
}
