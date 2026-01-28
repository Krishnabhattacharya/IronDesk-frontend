import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class AttendanceCheckInView extends StatefulWidget {
  const AttendanceCheckInView({super.key});

  @override
  State<AttendanceCheckInView> createState() => _AttendanceCheckInViewState();
}

class _AttendanceCheckInViewState extends State<AttendanceCheckInView> {
  int _step = 0;

  @override
  void initState() {
    super.initState();
    _startProcess();
  }

  Future<void> _startProcess() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() => _step = 1);
    
    await Future.delayed(const Duration(seconds: 1));
    setState(() => _step = 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_step == 0) _buildLocationCheck(),
              if (_step == 1) _buildBiometricCheck(),
              if (_step == 2) _buildSuccess(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocationCheck() {
    return Column(
      children: [
        Icon(Icons.location_on, size: 80.h, color: Colors.orange)
            .animate(onPlay: (c) => c.repeat())
            .scale(duration: 1.seconds, begin: const Offset(1,1), end: const Offset(1.2,1.2)),
        Gap(20.h),
        Text("Checking your location...", style: GoogleFonts.montserrat(fontSize: 18.sp)),
        Gap(10.h),
        const Text("Please wait while we verify you are at the office."),
      ],
    );
  }

  Widget _buildBiometricCheck() {
    return Column(
      children: [
        Icon(Icons.fingerprint, size: 80.h, color: Colors.blue)
             .animate()
             .fadeIn(),
        Gap(20.h),
        Text("Authenticate", style: GoogleFonts.montserrat(fontSize: 18.sp)),
        Gap(10.h),
        ElevatedButton(
          onPressed: () {
             setState(() => _step = 2); 
          },
          child: const Text("Use Fingerprint"),
        )
      ],
    );
  }

  Widget _buildSuccess() {
    return GlassContainer(
      color: Colors.green,
      opacity: 0.1,
      padding: EdgeInsets.all(30.w),
      child: Column(
        children: [
          Icon(Icons.check_circle, size: 80.h, color: Colors.green)
              .animate()
              .scale(curve: Curves.elasticOut),
          Gap(20.h),
          Text("Attendance Marked", style: GoogleFonts.montserrat(fontSize: 22.sp, fontWeight: FontWeight.bold, color: Colors.green[800])),
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Time: ", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("09:12 AM"),
            ],
          ),
          Text("Status: PRESENT", style: TextStyle(color: Colors.green[800], fontWeight: FontWeight.bold)),
          
          Gap(30.h),
          
          ElevatedButton(
            onPressed: () => context.pop(),
            child: const Text("Go to Dashboard"),
          )
        ],
      ),
    );
  }
}
