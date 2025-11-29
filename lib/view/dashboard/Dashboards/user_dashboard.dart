import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/user_data.dart';
import 'package:suncube_ai/view/auth/login_screen.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';
import 'package:suncube_ai/widgets/common/metric_card.dart';

class UserDashboardHome extends StatefulWidget {
  final bool showAppBar;

  const UserDashboardHome({super.key, this.showAppBar = false});

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
    final isLogged = userData.read<bool>('isLogged') ?? false;

    // Hide AppBar if not standalone (embedded in LandingPage)
    // to avoid double headers.
    final bool showAppBar = widget.showAppBar;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent, // Make scaffold transparent for LiquidBackground
      appBar: showAppBar
          ? PreferredSize(
              preferredSize: Size.fromHeight(60.h + statusBarHeight),
              child: GlassContainer(
                borderRadius: BorderRadius.zero,
                blur: 10,
                opacity: 0.2,
                color: Colors.black,
                child: Container(
                  padding: EdgeInsets.only(top: statusBarHeight),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
                    child: Row(
                      children: [
                        (widget.showAppBar)
                            ? IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 20.sp,
                                ),
                              )
                            : SizedBox.shrink(),
                        if (!widget.showAppBar) Spacer(),
                        if (isLogged) ...[
                          Spacer(),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            )
          : null,
      body: LiquidBackground(
        child: isLogged
            ? Padding(
                padding: EdgeInsets.fromLTRB(16.w, showAppBar ? 100.h : 16.h, 16.w, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Energy Overview',
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          MetricCard(
                            title: 'Solar Generation',
                            value: '3.9 kW',
                            icon: LucideIcons.sun,
                            color: const Color(0xFFF59E0B),
                          ),
                          SizedBox(height: 12.h),
                          MetricCard(
                            title: 'Consumption',
                            value: '2.8 kW',
                            icon: LucideIcons.zap,
                            color: const Color(0xFF3B82F6),
                          ),
                          SizedBox(height: 12.h),
                          MetricCard(
                            title: 'Battery Level',
                            value: '84%',
                            icon: LucideIcons.batteryFull,
                            color: const Color(0xFF22C55E),
                          ),
                          SizedBox(height: 12.h),
                          MetricCard(
                            title: 'Grid Feed-in',
                            value: '1.3 kW',
                            icon: LucideIcons.trendingUp,
                            color: const Color(0xFF22C55E),
                          ),
                          SizedBox(height: 12.h),
                          MetricCard(
                            title: 'Total Systems',
                            value: '1,247',
                            icon: Icons.home,
                            color: Colors.white54,
                          ),
                          SizedBox(height: 12.h),
                          MetricCard(
                            title: 'Total Capacity',
                            value: '47.3 MW',
                            icon: LucideIcons.house,
                            color: Colors.white54,
                          ),
                          SizedBox(height: 12.h),
                          MetricCard(
                            title: 'System Uptime',
                            value: '99.2%',
                            icon: LucideIcons.activity,
                            color: Colors.white54,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GlassContainer(
                      padding: EdgeInsets.all(32.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            LucideIcons.lock,
                            size: 64.sp,
                            color: Colors.white.withOpacity(0.5),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            'Login Required',
                            style: GoogleFonts.inter(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Please login to access your dashboard.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF73E0A9),
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                horizontal: 32.w,
                                vertical: 12.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            child: Text(
                              'Login Now',
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }


}
