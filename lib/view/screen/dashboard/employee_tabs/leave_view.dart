import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irondesk/view/widgets/glass_container.dart';
import 'package:go_router/go_router.dart';

class LeaveView extends StatelessWidget {
  const LeaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text("Leave Balance", style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.bold)),
            Gap(15.h),
            
            // Balance Cards Row
            Row(
              children: [
                Expanded(child: _buildBalanceCard("Casual", "5", Colors.blue)),
                Gap(10.w),
                Expanded(child: _buildBalanceCard("Sick", "3", Colors.orange)),
                Gap(10.w),
                Expanded(child: _buildBalanceCard("Paid", "10", Colors.purple)),
              ],
            ),
            
            Gap(25.h),
            
            // Apply Button
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  // Navigate to Apply Leave Form
                  // context.pushNamed('applyLeave'); 
                },
                icon: Icon(Icons.add, color: Colors.white),
                label: Text("Apply New Leave", style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
            
            Gap(25.h),
            Text("My Leaves", style: GoogleFonts.montserrat(fontSize: 18.sp, fontWeight: FontWeight.bold)),
            Gap(15.h),
            
            // Leave List (Tabs Simulation)
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.r),
                        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                      ),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
                      tabs: const [Tab(text: "Pending"), Tab(text: "Approved"), Tab(text: "Rejected")],
                    ),
                  ),
                  Gap(15.h),
                  SizedBox(
                    height: 300.h,
                    child: TabBarView(
                      children: [
                        _buildLeaveList([
                          {"type": "Sick Leave", "date": "Jan 20 - Jan 21", "status": "Pending"},
                        ]),
                        _buildLeaveList([
                          {"type": "Casual Leave", "date": "Jan 10", "status": "Approved"},
                          {"type": "Paid Leave", "date": "Dec 25", "status": "Approved"},
                        ]),
                        _buildLeaveList([
                           {"type": "Sick Leave", "date": "Nov 12", "status": "Rejected"},
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }

  Widget _buildBalanceCard(String title, String count, Color color) {
    return GlassContainer(
      padding: EdgeInsets.all(12.w),
      color: color,
      opacity: 0.1,
      child: Column(
        children: [
          Text(count, style: GoogleFonts.inter(fontSize: 24.sp, fontWeight: FontWeight.bold, color: color)),
          Text(title, style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.grey[700])),
        ],
      ),
    );
  }
  
  Widget _buildLeaveList(List<Map<String, String>> items) {
    if (items.isEmpty) return Center(child: Text("No records found"));
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        Color statusColor = Colors.orange;
        if(item["status"] == "Approved") statusColor = Colors.green;
        if(item["status"] == "Rejected") statusColor = Colors.red;
        
        return Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: GlassContainer(
            padding: EdgeInsets.all(16.w),
            color: Colors.white,
            opacity: 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item["type"]!, style: GoogleFonts.inter(fontWeight: FontWeight.bold)),
                    Text(item["date"]!, style: GoogleFonts.inter(color: Colors.grey, fontSize: 12.sp)),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  decoration: BoxDecoration(color: statusColor.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                  child: Text(item["status"]!, style: TextStyle(color: statusColor, fontSize: 12.sp, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
