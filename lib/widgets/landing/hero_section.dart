import 'dart:math' as math;

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
            MetricCard(
              'Solar Output',
              '4.3 kW',
              LucideIcons.sun,
              Color(0xFF73E0A9),
              image: _DottedStripPainter(_heartRates),
            ),
            SizedBox(height: 20.h),
            MetricCard(
              'Usage',
              '3.2 kW',
              LucideIcons.zap,
              Color(0xFF73E0A9),
              image: _SteppedBarPainter(),
            ),
            SizedBox(height: 20.h),
            MetricCard(
              'Battery',
              '82%',
              LucideIcons.battery,
              Color(0xFF73E0A9),
              image: _BreathWavePainter(),
            ),
            SizedBox(height: 20.h),
            MetricCard(
              'Grid Export',
              '1.5 kW',
              LucideIcons.trendingUp,
              Color(0xFF73E0A9),
              image: _DottedStripPainter(_heartRates),
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
  final CustomPainter? image;

  const MetricCard(
    this.title,
    this.value,
    this.icon,
    this.accentColor, {
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: double.infinity,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                  child: Icon(
                    icon,
                    size: 15.sp,
                    color: const Color(0xFF73E0A9),
                  ),
                ),
                SizedBox(width: 20.w),
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  Text(
                    value,
                    style: GoogleFonts.inter(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF73E0A9),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 90.w, // tweak to taste
                    height: 35.h,
                    child: CustomPaint(painter: image),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Dummy data – replace with your real 7-day heart-rate list.
final _heartRates = <double>[58, 61, 59, 63, 61, 60, 61];

/// Converts the list into a path that fits the available height.
Path _createPath(Size size, List<double> values) {
  if (values.isEmpty) return Path();
  final w = size.width / (values.length - 1);
  final h = size.height;
  final minV = values.reduce(math.min);
  final maxV = values.reduce(math.max);
  final p = Path()..moveTo(0, h - ((values[0] - minV) / (maxV - minV)) * h);
  for (int i = 1; i < values.length; i++) {
    p.lineTo(i * w, h - ((values[i] - minV) / (maxV - minV)) * h);
  }
  return p;
}

class _DottedStripPainter extends CustomPainter {
  final List<double> values; // same 7-day list
  _DottedStripPainter(this.values);

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = const Color(0xFF73E0A9).withOpacity(0.25)
          ..strokeWidth = 1.5
          ..strokeCap = StrokeCap.round;

    final w = size.width / (values.length - 1);
    final h = size.height;
    final minV = values.reduce(math.min);
    final maxV = values.reduce(math.max);

    for (int i = 0; i < values.length; i++) {
      final x = i * w;
      final y = h - ((values[i] - minV) / (maxV - minV)) * h;
      canvas.drawCircle(Offset(x, y), 3, paint);
      if (i != 0) {
        final prevX = (i - 1) * w;
        final prevY = h - ((values[i - 1] - minV) / (maxV - minV)) * h;
        canvas.drawLine(Offset(prevX, prevY), Offset(x, y), paint);
      }
    }
  }

  @override
  bool shouldRepaint(_) => false;
}

class _BreathWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = const Color(0xFF73E0A9).withOpacity(0.22);

    final path = Path();
    final amp = size.height / 2.2;
    final mid = size.height / 2;
    for (double x = 0; x <= size.width; x++) {
      final y = mid + amp * math.sin((x / size.width) * 2 * math.pi);
      x == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_) => false;
}

class _SteppedBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = const Color(0xFF73E0A9).withOpacity(0.25)
          ..strokeWidth = 6
          ..strokeCap = StrokeCap.round;

    const bars = 4;
    final gap = size.width / (bars + 1);
    for (int i = 1; i <= bars; i++) {
      final h = size.height * (0.3 + 0.7 * math.Random().nextDouble());
      final x = i * gap;
      canvas.drawLine(
        Offset(x, size.height),
        Offset(x, size.height - h),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_) => false;
}

class _PulseRipplePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    for (int i = 1; i <= 3; i++) {
      final paint =
          Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1.5
            ..color = const Color(
              0xFF73E0A9,
            ).withOpacity(0.35 - i * 0.1); // 0.25, 0.15, 0.05
      canvas.drawCircle(center, i * 10, paint);
    }
  }

  @override
  bool shouldRepaint(_) => false;
}
