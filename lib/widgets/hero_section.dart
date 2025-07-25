import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/view/landing_page.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24.w, 110.h, 24.w, 60.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: const Color(0XFF34B87C).withOpacity(.15),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              '🌟 Revolutionary Solar Technology',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Your Solar. Supercharged by AI.\nBuilt for the Grid of Tomorrow.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 36.sp,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Transform your energy future with AI-powered solar management, predictive maintenance, and blockchain-secured transactions.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: Colors.black54),
          ),
          SizedBox(height: 32.h),
          Wrap(
            spacing: 12.w,
            runSpacing: 12.h,
            alignment: WrapAlignment.center,
            children: const [
              MetricCard(
                'Solar Generation',
                '4.3 kW',
                LucideIcons.sun,
                Color(0xFFF59E0B),
              ),
              MetricCard(
                'Consumption',
                '3.2 kW',
                LucideIcons.zap,
                Color(0xFF3B82F6),
              ),
              MetricCard(
                'Battery Level',
                '82 %',
                LucideIcons.battery,
                Color(0xFF8B5CF6),
              ),
              MetricCard(
                'Grid Feed-in',
                '1.5 kW',
                LucideIcons.trendingUp,
                Color(0xFF10B981),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
