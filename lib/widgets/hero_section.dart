import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        padding: EdgeInsets.fromLTRB(20.w, 50.h, 20.w, 40.h),
        decoration: BoxDecoration(
          color: const Color(0xFF060C09).withOpacity(0.4),
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
          // Glass effect
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.05),
              const Color(0xFF1A231F).withOpacity(0.3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: const Color(0xFF73E0A9).withOpacity(0.15),
                borderRadius: BorderRadius.circular(30.r),
                border: Border.all(
                  color: const Color(0xFF73E0A9).withOpacity(0.3),
                  width: 1.w,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    LucideIcons.star,
                    size: 14.sp,
                    color: const Color(0xFF73E0A9),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Next-Gen Solar Tech',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                      color: const Color(0xFF73E0A9),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'AI-Powered Solar\nFuture-Ready Energy',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 28.sp,
                fontWeight: FontWeight.w800,
                height: 1.2,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(height: 14.h),
            Text(
              'Optimize energy with AI-driven insights, predictive maintenance, and secure blockchain transactions.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.75),
                height: 1.5,
              ),
            ),
            SizedBox(height: 28.h),
            Wrap(
              spacing: 12.w,
              runSpacing: 12.h,
              alignment: WrapAlignment.center,
              children: const [
                MetricCard(
                  'Solar Output',
                  '4.3 kW',
                  LucideIcons.sun,
                  Color(0xFF73E0A9),
                ),
                MetricCard(
                  'Usage',
                  '3.2 kW',
                  LucideIcons.zap,
                  Color(0xFF73E0A9),
                ),
                MetricCard(
                  'Battery',
                  '82%',
                  LucideIcons.battery,
                  Color(0xFF73E0A9),
                ),
                MetricCard(
                  'Grid Export',
                  '1.5 kW',
                  LucideIcons.trendingUp,
                  Color(0xFF73E0A9),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color accentColor;

  const MetricCard(
    this.title,
    this.value,
    this.icon,
    this.accentColor, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: 140.w,
        padding: EdgeInsets.all(14.w),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: const Color(0xFF73E0A9).withOpacity(0.15),
            width: 1.w,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
          // Glass effect
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.05),
              const Color(0xFF73E0A9).withOpacity(0.05),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: const Color(0xFF73E0A9).withOpacity(0.15),
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF73E0A9).withOpacity(0.3),
                  width: 1.w,
                ),
              ),
              child: Icon(icon, size: 20.sp, color: const Color(0xFF73E0A9)),
            ),
            SizedBox(height: 10.h),
            Text(
              value,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.85),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
