import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceTimer extends StatefulWidget {
  final DateTime? checkInTime;
  const AttendanceTimer({super.key, this.checkInTime});

  @override
  State<AttendanceTimer> createState() => _AttendanceTimerState();
}

class _AttendanceTimerState extends State<AttendanceTimer> {
  Timer? _timer;
  String _timeString = "09:00 - 18:00";

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void didUpdateWidget(covariant AttendanceTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.checkInTime != oldWidget.checkInTime) {
      _startTimer();
    }
  }

  void _startTimer() {
    _timer?.cancel();
    if (widget.checkInTime != null) {
      _updateTime();
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        _updateTime();
      });
    } else {
      setState(() {
        _timeString = "09:00 - 18:00";
      });
    }
  }

  void _updateTime() {
    if (widget.checkInTime == null) return;

    final now = DateTime.now();
    final duration = now.difference(widget.checkInTime!.toLocal());

    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');

    if (mounted) {
      setState(() {
        _timeString = "$hours:$minutes:$seconds";
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _timeString,
      style: GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: Colors.blue[800],
      ),
    );
  }
}
