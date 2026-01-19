import 'package:flutter_riverpod/legacy.dart';

import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/view/screen/splash/splash_view_model.dart';
import 'package:irondesk/utils/utils.dart'; // Ensure Assets/colors are here
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

final splashViewModelProvider = ChangeNotifierProvider<SplashViewModel>((ref) {
  return SplashViewModel();
});

class SplashView extends ConsumerStatefulWidget {
  static const String route = '/';
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> with BaseScreenView {
  
  late SplashViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(splashViewModelProvider);
    _viewModel.attachView(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _viewModel.initSplash(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background - clean gradient or image
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFE0EAFC), // Light Blue/Grey
                  Color(0xFFCFDEF3),
                ],
              ),
            ),
          ),
          
          // Center Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo with Glass Effect or just Icon
                GlassContainer(
                  width: 150.h,
                  height: 150.h,
                  borderRadius: BorderRadius.circular(30),
                  blur: 15,
                  opacity: 0.1,
                  child: Center(
                    child: Icon(
                      Icons.camera, // Placeholder for Assets.icons.logo
                      size: 80.h,
                      color: Colors.blueAccent,
                    ),
                  ),
                ).animate().fade(duration: 600.ms).scale(delay: 200.ms),
                
                const Gap(30),
                
                Text(
                  "IRONDESK",
                  style: GoogleFonts.montserrat(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2A2E32),
                    letterSpacing: 2,
                  ),
                ).animate().fadeIn(delay: 500.ms).moveY(begin: 20, end: 0),
                
                const Gap(50),
                
                // Loading Indicator
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                ).animate().fadeIn(delay: 1000.ms),
              ],
            ),
          ),
          
           Positioned(
            bottom: 40.h,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Version 1.0.0",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {

  }
}
