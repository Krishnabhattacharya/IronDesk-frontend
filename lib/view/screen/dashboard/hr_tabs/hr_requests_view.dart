import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
// import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:intl/intl.dart';

class MockLeave {
  final String id;
  final String employeeName;
  final String leaveType;
  final DateTime startDate;
  final DateTime endDate;
  final String reason;
  final String status;
  MockLeave({
    required this.id,
    required this.employeeName,
    required this.leaveType,
    required this.startDate,
    required this.endDate,
    required this.reason,
    required this.status,
  });
}

class MockAttendance {
  final String id;
  final String employeeName;
  final DateTime date;
  final String requestedCheckIn;
  final String requestedCheckOut;
  final String reason;
  final String status;
  MockAttendance({
    required this.id,
    required this.employeeName,
    required this.date,
    required this.requestedCheckIn,
    required this.requestedCheckOut,
    required this.reason,
    required this.status,
  });
}

class HRRequestsView extends ConsumerStatefulWidget {
  const HRRequestsView({super.key});

  @override
  ConsumerState<HRRequestsView> createState() => _HRRequestsViewState();
}

class _HRRequestsViewState extends ConsumerState<HRRequestsView>
    with SingleTickerProviderStateMixin, BaseScreenView {
  late TabController _tabController;

  final List<MockLeave> _mockLeaves = [
    MockLeave(
      id: "1",
      employeeName: "John Doe",
      leaveType: "Sick Leave",
      startDate: DateTime.now().add(const Duration(days: 1)),
      endDate: DateTime.now().add(const Duration(days: 2)),
      reason: "Not feeling well",
      status: "Pending",
    ),
    MockLeave(
      id: "2",
      employeeName: "Jane Smith",
      leaveType: "Casual Leave",
      startDate: DateTime.now().add(const Duration(days: 5)),
      endDate: DateTime.now().add(const Duration(days: 6)),
      reason: "Personal work",
      status: "Pending",
    ),
    MockLeave(
      id: "3",
      employeeName: "Robert Fox",
      leaveType: "Annual Leave",
      startDate: DateTime.now().add(const Duration(days: 10)),
      endDate: DateTime.now().add(const Duration(days: 15)),
      reason: "Family Vacation",
      status: "Pending",
    ),
  ];

  final List<MockAttendance> _mockAttendance = [
    MockAttendance(
      id: "1",
      employeeName: "Mike Ross",
      date: DateTime.now().subtract(const Duration(days: 1)),
      requestedCheckIn: "09:00 AM",
      requestedCheckOut: "06:00 PM",
      reason: "Forgot to punch out",
      status: "Pending",
    ),
    MockAttendance(
      id: "2",
      employeeName: "Rachel Zane",
      date: DateTime.now().subtract(const Duration(days: 2)),
      requestedCheckIn: "09:15 AM",
      requestedCheckOut: "06:15 PM",
      reason: "Traffic delay, adjusted hours",
      status: "Pending",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            "Employee Requests",
            style: GoogleFonts.montserrat(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF102E76),
            ),
          ),
        ),
        Gap(20.h),
        GlassContainer(
          color: Colors.white,
          opacity: 0.5,
          padding: EdgeInsets.all(5.w),
          borderRadius: BorderRadius.circular(30),
          child: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
              color: const Color(0xFF102E76),
              borderRadius: BorderRadius.circular(25),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[700],
            labelStyle: GoogleFonts.inter(fontWeight: FontWeight.bold),
            tabs: const [
              Padding(
                padding: EdgeInsets.only(right: 10.0, left: 10.0),
                child: Tab(text: "Leave Requests"),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0, left: 10.0),
                child: Tab(text: "Attendance Grants"),
              ),
            ],
          ),
        ),
        Gap(20.h),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _LeaveRequestsList(leaves: _mockLeaves),
              _AttendanceRequestsList(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void navigateToScreen(appRoute, {Map<String, String>? params}) {}
}

class _LeaveRequestsList extends StatelessWidget {
  final List<MockLeave> leaves;
  const _LeaveRequestsList({required this.leaves});

  @override
  Widget build(BuildContext context) {
    if (leaves.isEmpty) {
      return Center(
        child: Text(
          "No pending leave requests",
          style: GoogleFonts.inter(color: Colors.grey),
        ),
      );
    }

    return ListView.separated(
      padding: EdgeInsets.only(bottom: 20.h),
      itemCount: leaves.length,
      separatorBuilder: (_, __) => Gap(15.h),
      itemBuilder: (context, index) {
        final request = leaves[index];
        return GlassContainer(
          color: Colors.white,
          opacity: 0.6,
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        backgroundColor: Colors.indigo.shade100,
                        child: Text(
                          request.employeeName.isNotEmpty
                              ? request.employeeName[0].toUpperCase()
                              : "",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: const Color(0xFF102E76),
                          ),
                        ),
                      ),
                      Gap(15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            request.employeeName,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: const Color(0xFF102E76),
                            ),
                          ),
                          Text(
                            request.leaveType,
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.amber.withOpacity(0.3)),
                    ),
                    child: Text(
                      request.status,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.amber[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(15.h),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 16.sp,
                    color: const Color(0xFF102E76),
                  ),
                  Gap(8.w),
                  Text(
                    "${DateFormat('MM-dd-yyyy').format(request.startDate)} - ${DateFormat('MM-dd-yyyy').format(request.endDate)}",
                    style: GoogleFonts.inter(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              Gap(8.h),
              Text(
                "Reason: ${request.reason}",
                style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  color: Colors.grey[700],
                ),
              ),
              Gap(20.h),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: BorderSide(color: Colors.red.withOpacity(0.5)),
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Reject"),
                    ),
                  ),
                  Gap(15.w),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF102E76),
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Approve",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AttendanceRequestsList extends ConsumerStatefulWidget {
  const _AttendanceRequestsList();

  @override
  ConsumerState<_AttendanceRequestsList> createState() =>
      _AttendanceRequestsListState();
}

class _AttendanceRequestsListState
    extends ConsumerState<_AttendanceRequestsList> {
  int _selectedSubTab = 0;

  final List<MockAttendance> _mockRequests = [
    MockAttendance(
      id: "1",
      employeeName: "Mike Ross",
      date: DateTime.now().subtract(const Duration(days: 1)),
      requestedCheckIn: "09:00 AM",
      requestedCheckOut: "06:00 PM",
      reason: "Forgot to punch out",
      status: "Pending",
    ),
    MockAttendance(
      id: "2",
      employeeName: "Rachel Zane",
      date: DateTime.now().subtract(const Duration(days: 2)),
      requestedCheckIn: "09:15 AM",
      requestedCheckOut: "06:15 PM",
      reason: "Traffic delay",
      status: "Pending",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final requests = ref
        .watch(ViewModelProvider.companyVM)
        .getEmployeeAttendenceResponseModel
        .data;

    return Column(
      children: [
        Container(
          height: 40.h,
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey.withOpacity(0.2)),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => _selectedSubTab = 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _selectedSubTab == 0
                          ? const Color(0xFF102E76)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "General Attendance",
                      style: GoogleFonts.inter(
                        color: _selectedSubTab == 0
                            ? Colors.white
                            : Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => _selectedSubTab = 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _selectedSubTab == 1
                          ? const Color(0xFF102E76)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Attendance Requests",
                      style: GoogleFonts.inter(
                        color: _selectedSubTab == 1
                            ? Colors.white
                            : Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Gap(20.h),
        Expanded(
          child: _selectedSubTab == 0
              ? _buildGeneralList(requests)
              : _buildMockList(),
        ),
      ],
    );
  }

  Widget _buildGeneralList(List<dynamic>? generalList) {
    if (generalList == null || generalList.isEmpty) {
      return Center(
        child: Text(
          "No general attendance records",
          style: GoogleFonts.inter(color: Colors.grey),
        ),
      );
    }
    return ListView.separated(
      padding: EdgeInsets.only(bottom: 20.h),
      itemCount: generalList.length,
      separatorBuilder: (_, __) => Gap(15.h),
      itemBuilder: (context, index) {
        final request = generalList[index];
        return GlassContainer(
          color: Colors.white,
          opacity: 0.6,
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        backgroundColor: Colors.purple.shade100,
                        child: Text(
                          (request.employeeId?.employeeId?.name != null &&
                                  request
                                      .employeeId!
                                      .employeeId!
                                      .name!
                                      .isNotEmpty)
                              ? request.employeeId!.employeeId!.name![0]
                                    .toUpperCase()
                                    .toString()
                              : "",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Gap(15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            request.employeeId?.employeeId?.name ?? "",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: const Color(0xFF102E76),
                            ),
                          ),
                          Text(
                            DateFormat(
                              'dd MMM, yyyy',
                            ).format(request.date ?? DateTime.now()),
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.orange.withOpacity(0.3)),
                    ),
                    child: Text(
                      request.status ?? "Unknown",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.orange[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Check In",
                        style: GoogleFonts.inter(
                          fontSize: 11.sp,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        request.checkInTime != null
                            ? DateFormat(
                                'hh:mm a',
                              ).format(request.checkInTime!.toLocal())
                            : "NA",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: const Color(0xFF102E76),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 20.sp,
                    color: Colors.grey[400],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Check Out",
                        style: GoogleFonts.inter(
                          fontSize: 11.sp,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        request.checkOutTime != null
                            ? DateFormat(
                                'hh:mm a',
                              ).format(request.checkOutTime!.toLocal())
                            : "NA",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: const Color(0xFF102E76),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(20.h),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: BorderSide(color: Colors.red.withOpacity(0.5)),
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Reject"),
                    ),
                  ),
                  Gap(15.w),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF102E76),
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Approve",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMockList() {
    if (_mockRequests.isEmpty) {
      return Center(
        child: Text(
          "No attendance requests",
          style: GoogleFonts.inter(color: Colors.grey),
        ),
      );
    }
    return ListView.separated(
      padding: EdgeInsets.only(bottom: 20.h),
      itemCount: _mockRequests.length,
      separatorBuilder: (_, __) => Gap(15.h),
      itemBuilder: (context, index) {
        final request = _mockRequests[index];
        return GlassContainer(
          color: Colors.white,
          opacity: 0.6,
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        backgroundColor: Colors.purple.shade100,
                        child: Text(
                          request.employeeName.isNotEmpty
                              ? request.employeeName[0].toUpperCase()
                              : "",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Gap(15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            request.employeeName,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: const Color(0xFF102E76),
                            ),
                          ),
                          Text(
                            DateFormat('dd MMM, yyyy').format(request.date),
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.orange.withOpacity(0.3)),
                    ),
                    child: Text(
                      request.status.toString(),
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.orange[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Requested In",
                        style: GoogleFonts.inter(
                          fontSize: 11.sp,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        request.requestedCheckIn,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: const Color(0xFF102E76),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 20.sp,
                    color: Colors.grey[400],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Requested Out",
                        style: GoogleFonts.inter(
                          fontSize: 11.sp,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        request.requestedCheckOut,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: const Color(0xFF102E76),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(8.h),
              Text(
                "Reason: ${request.reason}",
                style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  color: Colors.grey[700],
                ),
              ),
              Gap(20.h),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: BorderSide(color: Colors.red.withOpacity(0.5)),
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Reject"),
                    ),
                  ),
                  Gap(15.w),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF102E76),
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Approve",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
