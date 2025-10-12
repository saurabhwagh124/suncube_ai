import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';
import 'package:suncube_ai/utils/AppColors.dart';

class ImpactSection extends StatelessWidget {
  const ImpactSection({super.key});

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
              blurRadius: 20,
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
            /* Tag */
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
                'Our Impact',
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF73E0A9),
                ),
              ),
            ),
            SizedBox(height: 16.h),

            /* Headline */
            Text(
              'Delivering Real Impact',
              style: GoogleFonts.inter(
                fontSize: 28.sp,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(height: 12.h),

            /* Sub-headline */
            Text(
              'See the tangible results of our AI-powered solar solutions.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.75),
                height: 1.5,
              ),
            ),
            SizedBox(height: 32.h),

            /* Stats */
            _UptimeSection(),
          ],
        ),
      ),
    );
  }
}

class _UptimeSection extends StatefulWidget {
  const _UptimeSection();

  @override
  State<_UptimeSection> createState() => _UptimeSectionState();
}

class _UptimeSectionState extends State<_UptimeSection> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    // trigger animation one frame after first build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) setState(() => _visible = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* ---------- BIG UPTIME CARD ---------- */
        AnimatedOpacity(
          duration: const Duration(milliseconds: 3000),
          opacity: _visible ? 1 : 0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 7000),
            curve: Curves.easeOut,
            transform:
                Matrix4.identity()
                  ..translate(0.0, _visible ? 0.0 : 30.h)
                  ..scale(_visible ? 1.0 : 0.95),
            padding: EdgeInsets.all(20.w),
            margin: EdgeInsets.only(bottom: 20.h),
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
            child: Row(
              children: [
                /* chart */
                SizedBox(
                  width: 90.w,
                  height: 90.w,
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0, end: _visible ? 98.5 : 0),
                    duration: const Duration(milliseconds: 9500),
                    curve: Curves.easeOutQuart,
                    builder: (_, value, __) {
                      return CircularPercentIndicator(
                        radius: 45.r,
                        lineWidth: 8.w,
                        percent: value / 100,
                        animation: false,
                        progressColor: AppColors.themeGreen,
                        backgroundColor: Colors.white.withOpacity(0.1),
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text(
                          '${value.toStringAsFixed(1)}%',
                          style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 20.w),
                /* text */
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'System Uptime',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'AI-optimized performance',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF73E0A9),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        /* ---------- EXISTING SMALL CARDS ---------- */
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: _ImpactStat('2.5M+', 'kWh Generated', 'This month'),
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: _ImpactStat(
                '1200+',
                'Tons CO₂ Saved',
                'Environmental impact',
              ),
            ),
          ],
        ),
        // SizedBox(height: 20.h),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //
        //   ],
        // ),
      ],
    );
  }
}

/* ------------------------------------------------------------------ */
/* Glass-style Impact Stat Card                                         */
/* ------------------------------------------------------------------ */
class _ImpactStat extends StatelessWidget {
  final String value, label, sub;

  const _ImpactStat(this.value, this.label, this.sub);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
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
        children: [
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            sub,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF73E0A9),
            ),
          ),
        ],
      ),
    );
  }
}
