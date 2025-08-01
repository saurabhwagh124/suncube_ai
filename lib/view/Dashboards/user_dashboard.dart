import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/user_data.dart';
import 'package:suncube_ai/view/login_screen.dart';
import 'package:suncube_ai/widgets/customized_nav_bar.dart';

class UserDashboardHome extends StatefulWidget {
  const UserDashboardHome({super.key});

  @override
  State<UserDashboardHome> createState() => _UserDashboardHomeState();
}

class _UserDashboardHomeState extends State<UserDashboardHome> {
  final userData = UserData();
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: const Color(0xFF060C09),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64.h + statusBarHeight),
        child: Container(
          padding: EdgeInsets.only(top: statusBarHeight),
          decoration: BoxDecoration(
            color: const Color(0xFF060C09).withOpacity(.9),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Row(
              children: [
                Container(
                  width: 32.w,
                  height: 32.w,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF73E0A9), Color(0xFF34B87C)],
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    LucideIcons.zap,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                SizedBox(width: 8.w),
                SizedBox(
                  width: 150.w,
                  child: Wrap(
                    children: [
                      Text(
                        'Suncube AI Dashboard',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  (userData.read<String>("role") != null)
                      ? userData.read<String>("role") ?? ""
                      : 'User',
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(width: 12.w),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                    userData.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  child: Text(
                    'Logout',
                    style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Energy Overview',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 120.h,
                  mainAxisSpacing: 10.h,
                  crossAxisSpacing: 10.w,
                  crossAxisCount: 2,
                ),
                children: [
                  _metric(
                    'Solar Generation',
                    '3.9 kW',
                    LucideIcons.sun,
                    const Color(0xFFF59E0B),
                  ),
                  _metric(
                    'Consumption',
                    '2.8 kW',
                    LucideIcons.zap,
                    const Color(0xFF3B82F6),
                  ),
                  _metric(
                    'Battery Level',
                    '84%',
                    LucideIcons.batteryFull,
                    const Color(0xFF22C55E),
                  ),
                  _metric(
                    'Grid Feed-in',
                    '1.3 kW',
                    LucideIcons.trendingUp,
                    const Color(0xFF22C55E),
                  ),
                  _metric('Total Systems', '1,247', Icons.home, Colors.white54),
                  _metric(
                    'Total Capacity',
                    '47.3 MW',
                    LucideIcons.house,
                    Colors.white54,
                  ),
                  _metric(
                    'System Uptime',
                    '99.2%',
                    LucideIcons.activity,
                    Colors.white54,
                  ),
                ],
              ),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.05),
                Colors.grey.withOpacity(0.1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: CustomizedNavBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _metric(String title, String value, IconData icon, Color color) =>
      Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: const Color(0xFF1E2622),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.white12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(icon, color: color, size: 24.sp),
              ],
            ),
            SizedBox(height: 12.h),
            Text(
              value,
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
}
