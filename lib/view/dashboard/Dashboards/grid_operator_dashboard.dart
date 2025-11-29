import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';
import 'package:suncube_ai/widgets/common/metric_card.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

class GridOperatorDashboardHome extends StatelessWidget {
  const GridOperatorDashboardHome({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return LiquidBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(64.h + statusBarHeight),
          child: GlassContainer(
            borderRadius: BorderRadius.zero,
            blur: 10,
            opacity: 0.2,
            color: Colors.black,
            child: Container(
              padding: EdgeInsets.only(top: statusBarHeight),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: Row(
                  children: [
                    // Icon removed as per request
                    const Spacer(),
                    // Removed redundant title, role, and logout button as per request
                  ],
                ),
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
                  MetricCard(
                    title: 'Solar Generation',
                    value: '4.3 kW',
                    icon: LucideIcons.sun,
                    color: const Color(0xFFF59E0B),
                  ),
                  MetricCard(
                    title: 'Consumption',
                    value: '3.1 kW',
                    icon: LucideIcons.zap,
                    color: const Color(0xFF3B82F6),
                  ),
                  MetricCard(
                    title: 'Battery Level',
                    value: '85%',
                    icon: LucideIcons.batteryFull,
                    color: const Color(0xFF22C55E),
                  ),
                  MetricCard(
                    title: 'Grid Feed-in',
                    value: '1.0 kW',
                    icon: LucideIcons.trendingUp,
                    color: const Color(0xFF22C55E),
                  ),
                ],
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
                  MetricCard(
                    title: 'Total Systems',
                    value: '1,247',
                    icon: Icons.home,
                    color: Colors.white54,
                  ),
                  MetricCard(
                    title: 'Total Capacity',
                    value: '47.3 MW',
                    icon: LucideIcons.house,
                    color: Colors.white54,
                  ),
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
      ),
    );
  }

      ),
    );
  }
}
