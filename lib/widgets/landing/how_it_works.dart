import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  final steps = const [
    (
      'Smart Installation',
      LucideIcons.sun,
      '01',
      'AI-optimized panel placement for maximum efficiency',
      'assets/fs01.png',
    ),
    (
      'Real-time Monitoring',
      LucideIcons.activity,
      '02',
      'Continuous tracking of system performance',
      'assets/fs02.png',
    ),
    (
      'Smart Grid Integration',
      LucideIcons.grid3x3,
      '03',
      'Seamless connection to smart energy grids',
      'assets/fs03.png',
    ),
    (
      'Automated Payments',
      LucideIcons.battery,
      '04',
      'Secure blockchain-based transactions',
      'assets/fs04.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      child: GlassContainer(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        padding: EdgeInsets.symmetric(vertical: 36.h, horizontal: 20.w),
        blur: 15,
        opacity: 0.1,
        color: Colors.white,
        borderRadius: BorderRadius.circular(28.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: const Color(0xFF73E0A9).withOpacity(0.15),
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(
                  color: const Color(0xFF73E0A9).withOpacity(0.3),
                  width: 1.w,
                ),
              ),
              child: Text(
                'How It Works',
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF73E0A9),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Simple, Smart, Sustainable',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 28.sp,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              'Discover the seamless process behind our AI-powered solar solutions.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.8),
                height: 1.5,
              ),
            ),
            SizedBox(height: 32.h),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: steps.length,
              itemBuilder: (_, i) => _StepCard(steps[i], i + 1),
              separatorBuilder: (context, index) => SizedBox(height: 12.h),
            ),
          ],
        ),
      ),
    );
  }
}

class _StepCard extends StatelessWidget {
  final (String title, IconData icon, String step, String desc, String image)
  data;
  final int stepNumber;

  const _StepCard(this.data, this.stepNumber);

  @override
  Widget build(BuildContext context) {
    final (title, icon, step, desc, image) = data;
    final colors = [
      const Color(0xFFF59E0B),
      const Color(0xFF73E0A9),
      const Color(0xFF3B82F6),
      const Color(0xFF22C55E),
    ];
    final color = colors[(stepNumber - 1) % colors.length];

    return GlassContainer(
      blur: 10,
      opacity: 0.08,
      color: color,
      borderRadius: BorderRadius.circular(16.r),
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 44.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.15),
                  shape: BoxShape.circle,
                  border: Border.all(color: color.withOpacity(0.3), width: 1.w),
                ),
                child: Icon(icon, size: 22.sp, color: color),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      desc,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.75),
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: color.withOpacity(0.3), width: 1.w),
                ),
                child: Text(
                  step,
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
