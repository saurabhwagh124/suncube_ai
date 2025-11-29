import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/widgets/common/metric_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 120.h,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 10.w,
              crossAxisCount: 2,
            ),
            children: [
              MetricCard(
                title: 'Solar Generation',
                value: '3.9 kW',
                icon: LucideIcons.sun,
                color: const Color(0xFFF59E0B),
              ),
              MetricCard(
                title: 'Consumption',
                value: '2.8 kW',
                icon: LucideIcons.zap,
                color: const Color(0xFF3B82F6),
              ),
              MetricCard(
                title: 'Battery Level',
                value: '84%',
                icon: LucideIcons.batteryFull,
                color: const Color(0xFF22C55E),
              ),
              MetricCard(
                title: 'Grid Feed-in',
                value: '1.3 kW',
                icon: LucideIcons.trendingUp,
                color: const Color(0xFF22C55E),
              ),
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
          SizedBox(height: 16.h),
          // GridView(
          //   shrinkWrap: true,
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     mainAxisExtent: 120.h,
          //     mainAxisSpacing: 10.h,
          //     crossAxisSpacing: 10.w,
          //     crossAxisCount: 2,
          //   ),
          //   children: [
          //
          //   ],
          // ),
          // SizedBox(height: 30.h),
        ],
      ),
    );
  }


}
