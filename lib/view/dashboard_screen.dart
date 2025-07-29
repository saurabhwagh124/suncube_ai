import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

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
