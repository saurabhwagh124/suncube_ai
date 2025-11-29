import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

class ImpactSection extends StatelessWidget {
  const ImpactSection({super.key});

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
                'Our Impact',
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF73E0A9),
                ),
              ),
            ),
            SizedBox(height: 20.h),
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
            Text(
              'See the tangible results of our AI-powered solar solutions.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.8),
                height: 1.5,
              ),
            ),
            SizedBox(height: 32.h),
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) setState(() => _visible = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            child: GlassContainer(
              blur: 10,
              opacity: 0.08,
              color: const Color(0xFF73E0A9),
              borderRadius: BorderRadius.circular(16.r),
              padding: EdgeInsets.all(20.w),
              margin: EdgeInsets.only(bottom: 20.h),
              child: Row(
                children: [
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: _ImpactStat('2.5M+', 'kWh Generated', 'This month'),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: _ImpactStat(
                '1200+',
                'Tons CO₂ Saved',
                'Environmental impact',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ImpactStat extends StatelessWidget {
  final String value, label, sub;

  const _ImpactStat(this.value, this.label, this.sub);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blur: 10,
      opacity: 0.08,
      color: const Color(0xFF73E0A9),
      borderRadius: BorderRadius.circular(16.r),
      padding: EdgeInsets.all(16.w),
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
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF73E0A9),
            ),
          ),
        ],
      ),
    );
  }
}
