import 'package:flutter_riverpod/legacy.dart';
import 'package:gap/gap.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:irondesk/core/core.dart';
import 'package:irondesk/data/remote/auth/model/login_user_request_model.dart';

import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/services/enums/user_type.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/view/screen/auth/login_viewmodel.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/widgets/max_width_wrapper.dart';

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
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFE0EAFC), Color(0xFFCFDEF3)],
              ),
            ),
          ),
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

          Center(
            child: MaxWidthWrapper(
              maxWidth: 600,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                                              passwordVisibilityProvider
                                                  .notifier,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
    final loginRequest = LoginUserRequestModel(
      email: email,
      password: password,
    );
    final loginResponse = await viewModel.login(loginRequest);
    if (loginResponse) {
      final role = viewModel.getDashboardRouteForRole(
        viewModel.loginResponseModel.data?.user?.role ?? "",
      );

      context.goNamed(role);
    }
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }
}
