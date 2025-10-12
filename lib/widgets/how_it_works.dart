import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

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
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
        decoration: BoxDecoration(
          color: const Color(0xFF060C09).withOpacity(0.4),
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20.r,
              offset: const Offset(0, 4),
            ),
          ],
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
          mainAxisSize: MainAxisSize.min,
          children: [
            /* --- Section Tag --- */
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
            SizedBox(height: 16.h),

            /* --- Headline --- */
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
            const SizedBox(height: 12),

            /* --- Sub-headline --- */
            Text(
              'Discover the seamless process behind our AI-powered solar solutions.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.75),
                height: 1.5.h,
              ),
            ),
            SizedBox(height: 32.h),

            /* --- Step Cards (2 per row) --- */
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: steps.length,
              itemBuilder: (_, i) => _StepCard(steps[i]),
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
            ),
          ],
        ),
      ),
    );
  }
}

/* ------------------------------------------------------------------ */
/* Glass-style Step Card                                                */
/* ------------------------------------------------------------------ */
class _StepCard extends StatelessWidget {
  final (String title, IconData icon, String step, String desc, String image)
  data;

  const _StepCard(this.data);

  @override
  Widget build(BuildContext context) {
    final (title, icon, step, desc, image) = data;
    return Container(
      padding: EdgeInsets.all(16.w),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /* Icon Circle */
          Row(
            children: [
              Container(
                width: 40.w,
                height: 40.h,
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
              SizedBox(width: 10.w),

              /* Step Number */
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          /* Description */
          // Flexible(
          //   child: Text(
          //     desc,
          //     textAlign: TextAlign.center,
          //     maxLines: 3,
          //     overflow: TextOverflow.ellipsis,
          //     style: GoogleFonts.inter(
          //       fontSize: 10.5.sp, // Reduced font size
          //       fontWeight: FontWeight.w400,
          //       color: Colors.white.withOpacity(0.75),
          //       height: 1.2, // Reduced line spacing
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 60.h,
            child: Stack(
              children: [
                Row(children: [Spacer(), Image.asset(image)]),
                SizedBox(
                  width: 120.w,
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter(
                      fontSize: 10.5.sp, // Reduced font size
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.75),
                      height: 1.2, // Reduced line spacing
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
