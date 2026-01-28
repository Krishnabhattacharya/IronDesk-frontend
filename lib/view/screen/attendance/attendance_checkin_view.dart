import 'package:gap/gap.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:irondesk/core/core.dart';
import 'package:irondesk/data/remote/employee/model/check_in_request_model.dart';
import 'package:irondesk/data/remote/employee/model/check_out_request_model.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class AttendanceCheckInView extends ConsumerStatefulWidget {
  const AttendanceCheckInView({super.key});

  @override
  ConsumerState<AttendanceCheckInView> createState() =>
      _AttendanceCheckInViewState();
}

class _AttendanceCheckInViewState extends ConsumerState<AttendanceCheckInView> {
  int _step = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startProcess();
    });
  }

  Future<void> _startProcess() async {
    final location = await ref
        .read(ViewModelProvider.companyVM)
        .getCurrentLocation();
    Logger.printInfo(location.toString());
    setState(() => _step = 1);

    bool isDone = await _authenticate();
    if (isDone) {
      final checkInRequestModel = CheckInRequestModel(
        latitude: location?.latitude ?? 0.0,
        longitude: location?.longitude ?? 0.0,
        biometricVerified: isDone,
      );
      final checkoutRequestModel = CheckOutRequestModel(
        latitude: location?.latitude ?? 0.0,
        longitude: location?.longitude ?? 0.0,
      );
      ref
                  .read(ViewModelProvider.employeeVM)
                  .todayAttendence
                  .data
                  ?.checkInTime ==
              null
          ? await ref
                .read(ViewModelProvider.employeeVM)
                .checkIn(checkInRequestModel)
          : await ref
                .read(ViewModelProvider.employeeVM)
                .checkOut(checkoutRequestModel);
      ref.read(ViewModelProvider.employeeVM).isCheckInSuccess
          ? setState(() => _step = 2)
          : context.pop();
    }
  }

  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> _authenticate() async {
    try {
      final bool canAuthenticate = await auth.canCheckBiometrics;
      final bool isDeviceSupported = await auth.isDeviceSupported();

      if (!canAuthenticate || !isDeviceSupported) {
        return false;
      }

      final List<BiometricType> availableBiometrics = await auth
          .getAvailableBiometrics();

      if (availableBiometrics.isEmpty) {
        return false;
      }

      return await auth.authenticate(
        localizedReason: 'Please authenticate to access your account',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: false,
        ),
      );
    } on PlatformException catch (e) {
      Logger.printError(e.toString());
      return false;
    }
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
            .scale(
              duration: 1.seconds,
              begin: const Offset(1, 1),
              end: const Offset(1.2, 1.2),
            ),
        Gap(20.h),
        Text(
          "Checking your location...",
          style: GoogleFonts.montserrat(fontSize: 18.sp),
        ),
        Gap(10.h),
        const Text("Please wait while we verify you are at the office."),
      ],
    );
  }

  Widget _buildBiometricCheck() {
    return ref.watch(ViewModelProvider.employeeVM).loading
        ? Center(child: CircularProgressIndicator())
        : Column(
            children: [
              Icon(
                Icons.fingerprint,
                size: 80.h,
                color: Colors.blue,
              ).animate().fadeIn(),
              Gap(20.h),
              Text(
                "Authenticate",
                style: GoogleFonts.montserrat(fontSize: 18.sp),
              ),
              Gap(10.h),
              ElevatedButton(
                onPressed: () {
                  setState(() => _step = 2);
                },
                child: const Text("Use Fingerprint"),
              ),
            ],
          );
  }

  Widget _buildSuccess() {
    final vm = ref.read(ViewModelProvider.employeeVM);
    return GlassContainer(
      color: Colors.green,
      opacity: 0.1,
      padding: EdgeInsets.all(30.w),
      child: Column(
        children: [
          Icon(
            Icons.check_circle,
            size: 80.h,
            color: Colors.green,
          ).animate().scale(curve: Curves.elasticOut),
          Gap(20.h),
          Text(
            "Attendance Marked",
            style: GoogleFonts.montserrat(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: Colors.green[800],
            ),
          ),
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Time: ", style: TextStyle(fontWeight: FontWeight.bold)),
              Builder(
                builder: (context) {
                  final time = vm.checkInResponse.data?.checkInTime != null
                      ? ref
                            .read(ViewModelProvider.employeeVM)
                            .checkOutResponse
                            .data
                            ?.checkOutTime
                      : ref
                            .read(ViewModelProvider.employeeVM)
                            .checkInResponse
                            .data
                            ?.checkInTime
                            ?.toLocal();
                  if (time == null) return const Text("");
                  return Text(DateFormat('dd-MM-yyyy (hh.mm a)').format(time));
                },
              ),
            ],
          ),
          Text(
            "Status: PRESENT",
            style: TextStyle(
              color: Colors.green[800],
              fontWeight: FontWeight.bold,
            ),
          ),

          Gap(30.h),

          ElevatedButton(
            onPressed: () => context.pop(),
            child: const Text("Go to Dashboard"),
          ),
        ],
      ),
    );
  }
}
