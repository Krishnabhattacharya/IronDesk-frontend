import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:irondesk/core/core.dart';
import 'package:irondesk/data/remote/auth/model/seller_dealer_common/login_model.dart';
import 'package:irondesk/data/remote/auth/model/user/update_user_Details_model.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/services/enums/user_type.dart';
import 'package:irondesk/services/shared_preference_service.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/view/screen/auth/login_viewmodel.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/widgets/max_width_wrapper.dart';

// Providers for local UI state (avoiding setState)
final passwordVisibilityProvider = StateProvider.autoDispose<bool>(
  (ref) => false,
);
final rememberMeProvider = StateProvider<bool>((ref) => false);

class LoginView extends ConsumerStatefulWidget {
  static const String route = '/login';
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> with BaseScreenView {
  late LoginViewModel loginViewModel;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loginViewModel = ref.read(ViewModelProvider.loginVM);
      loginViewModel.attachView(this);
      _loadSavedCredentials();
    });
  }

  Future<void> _loadSavedCredentials() async {
    final savedEmail = SharedPrefsService.getString(
      AppConstants.userRememberMeEmail,
    );
    final savedPassword = SharedPrefsService.getString(
      AppConstants.userRememberMePassword,
    );

    if (savedEmail != null && savedPassword != null) {
      _emailController.text = savedEmail;
      _passwordController.text = savedPassword;
      ref.read(rememberMeProvider.notifier).state = true;
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(ViewModelProvider.loginVM);
    final isPasswordVisible = ref.watch(passwordVisibilityProvider);
    final rememberMe = ref.watch(rememberMeProvider);

    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFE0EAFC), Color(0xFFCFDEF3)],
              ),
            ),
          ),

          // Background Blobs (Optional for effect)
          Positioned(
            top: -50,
            right: -50,
            child:
                Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                    )
                    .animate()
                    .scale(duration: 2.seconds, curve: Curves.easeInOut)
                    .fadeIn(),
          ),


// ... existing imports/code ...

          Center(
            child: MaxWidthWrapper(
              maxWidth: 600, // Smaller for login
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  // Logo
                  Icon(
                    Icons.camera,
                    size: 60.h,
                    color: Color(0xFF102E76),
                  ).animate().slideY(begin: -0.5, end: 0, duration: 600.ms),
                  Gap(10.h),
                  Text(
                    "Welcome Back",
                    style: GoogleFonts.montserrat(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF102E76),
                    ),
                  ).animate().fadeIn(delay: 200.ms),

                  Gap(30.h),

                  // Login Form Card
                  GlassContainer(
                    width: 1.sw,
                    padding: EdgeInsets.all(24.w),
                    blur: 15,
                    opacity: 0.6,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.inter(
                              color: Color(0xFF555555),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Gap(8.h),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: "Enter your email",
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                            validator: (value) =>
                                value!.isEmpty ? "Email required" : null,
                          ),

                          Gap(20.h),

                          Text(
                            "Password",
                            style: GoogleFonts.inter(
                              color: Color(0xFF555555),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Gap(8.h),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(Icons.lock_outline),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  ref
                                          .read(
                                            passwordVisibilityProvider.notifier,
                                          )
                                          .state =
                                      !isPasswordVisible;
                                },
                              ),
                            ),
                            validator: (value) =>
                                value!.isEmpty ? "Password required" : null,
                          ),

                          Gap(10.h),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: rememberMe,
                                      onChanged: (val) {
                                        ref
                                                .read(
                                                  rememberMeProvider.notifier,
                                                )
                                                .state =
                                            val ?? false;
                                      },
                                    ),
                                    Text("Remember me"),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.pushNamed(
                                      AppRoute.forgetPasswordScreen.name,
                                    );
                                  },
                                  child: Text("Forgot Password?"),
                                ),
                              ],
                            ),
                          ),

                          Gap(20.h),

                          SizedBox(
                            width: double.infinity,
                            height: 50.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF102E76),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: viewModel.loading
                                  ? null
                                  : () => _handleLogin(viewModel),
                              child: viewModel.loading
                                  ? CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
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
                  ).animate().slideY(begin: 0.5, end: 0, duration: 600.ms),

                  Gap(20.h),

                  // Register Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(
                            AppRoute.registerView.name,
                            extra: UserType.client,
                          );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Color(0xFF102E76),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleLogin(LoginViewModel viewModel) async {
    if (!_formKey.currentState!.validate()) return;

    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    // Handle Remember Me
    if (ref.read(rememberMeProvider)) {
      await SharedPrefsService.setString(
        AppConstants.userRememberMeEmail,
        email,
      );
      await SharedPrefsService.setString(
        AppConstants.userRememberMePassword,
        password,
      );
    } else {
      await SharedPrefsService.remove(AppConstants.userRememberMeEmail);
      await SharedPrefsService.remove(AppConstants.userRememberMePassword);
    }

    // Call Login (Ignored for manual testing)
    // final success = await viewModel.login(
    //   LoginRequestModel(email: email, password: password),
    // );

    // MANUAL TESTING OVERRIDE
    // Change this string to: "employee", "hr", "admin", "convertToEmployee", "employeeActivation", "client"
    final role = "employee"; 
    
    final routeName = role == "convertToEmployee"
        ? AppRoute.convertToEmployee.name
        : role == "employeeActivation"
        ? AppRoute.employeeActivation.name
        : role == "employee"
        ? AppRoute.employeeDashboard.name
        : role == "hr"
        ? AppRoute.hrDashboard.name
        : role == "admin"
        ? AppRoute.adminDashboard.name
        : AppRoute.waitingDashboard.name;

    context.goNamed(routeName);
  }

  @override
  void showSnackBar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color ?? Theme.of(context).primaryColor,
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
}
