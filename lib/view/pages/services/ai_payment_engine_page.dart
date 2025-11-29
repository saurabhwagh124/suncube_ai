// lib/view/pages/services/ai_payment_engine_page.dart

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class AiPaymentEnginePage extends StatelessWidget {
  const AiPaymentEnginePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 20.h),
        child: GlassContainer(
          opacity: 0.18,
          blur: 20,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(32.r)),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'AI Payment Engine',
              style: GoogleFonts.inter(fontWeight: FontWeight.w800, fontSize: 22.sp, color: Colors.white),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white, size: 24.sp),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ),
      body: LiquidBackground(
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: kToolbarHeight + 40.h),
            child: Column(
              children: [
                _heroSection(),
                SizedBox(height: 50.h),
                _kpiSection(),
                SizedBox(height: 60.h),
                _energyPieSection(),        // Gorgeous Pie Chart – No Overflow
                SizedBox(height: 60.h),
                _aiLogicSection(),
                SizedBox(height: 60.h),
                _invoiceSection(),
                SizedBox(height: 60.h),
                _forecastSection(),
                SizedBox(height: 80.h),
                _ctaSection(),
                SizedBox(height: 60.h),
                _footer(),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // HERO SECTION
  Widget _heroSection() => _paddedGlass(
        child: Column(
          children: [
            _chip('AI-Powered Billing • Real-Time Optimization'),
            SizedBox(height: 24.h),
            Text(
              'Smarter Payments.\nAutomated Intelligence.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(fontSize: 38.sp, fontWeight: FontWeight.w900, color: Colors.white, height: 1.15),
            ),
            SizedBox(height: 16.h),
            Text(
              'Our AI simulates energy flow, optimizes pricing, and generates invoices instantly.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70, height: 1.6),
            ),
            SizedBox(height: 32.h),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(LucideIcons.sparkles, size: 20.sp),
              label: Text('Preview AI Engine', style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16.sp)),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.themeGreen,
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 18.h),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                elevation: 15,
                shadowColor: AppColors.themeGreen.withOpacity(0.6),
              ),
            ),
          ],
        ),
      );

  // KPI SECTION – Fully Responsive
  Widget _kpiSection() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Text('Live Energy & Billing Simulation',
                style: GoogleFonts.inter(fontSize: 26.sp, fontWeight: FontWeight.w800, color: Colors.white)),
            SizedBox(height: 12.h),
            Text('Watch AI optimize your bill in real-time',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(fontSize: 15.sp, color: Colors.white60)),
            SizedBox(height: 32.h),
            Wrap(
              spacing: 16.w,
              runSpacing: 16.h,
              alignment: WrapAlignment.center,
              children: [
                _kpiCard('Solar Generation', '4.82 kW', LucideIcons.sun, const Color(0xFFF59E0B), '+18% today'),
                _kpiCard('Grid Export', '2.1 kW', LucideIcons.zap, const Color(0xFF3B82F6), '\$31.20 earned'),
                _kpiCard('Monthly Credits', '\$142.50', LucideIcons.coins, const Color(0xFF10B981), '+22% vs last'),
                _kpiCard('Net Bill After AI', '\$89.30', LucideIcons.fileText, AppColors.themeGreen, 'Saved \$53.20'),
              ],
            ),
          ],
        ),
      );

  Widget _kpiCard(String title, String value, IconData icon, Color color, String subtitle) => GlassContainer(
        opacity: 0.12,
        blur: 18,
        borderRadius: BorderRadius.circular(24.r),
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(title, style: GoogleFonts.inter(fontSize: 13.sp, color: Colors.white70))),
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(color: color.withOpacity(0.2), shape: BoxShape.circle),
                  child: Icon(icon, color: color, size: 18.sp),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Text(value, style: GoogleFonts.inter(fontSize: 28.sp, fontWeight: FontWeight.w900, color: Colors.white)),
            SizedBox(height: 4.h),
            Text(subtitle, style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white60)),
          ],
        ),
      );

  // PIE CHART SECTION – BEAUTIFUL & NO OVERFLOW
  Widget _energyPieSection() => _section(
        title: 'Today\'s Energy Breakdown',
        subtitle: 'How your solar energy was used',
        child: GlassContainer(
          opacity: 0.11,
          blur: 22,
          borderRadius: BorderRadius.circular(32.r),
          padding: EdgeInsets.all(28.w),
          child: Column(
            children: [
              SizedBox(
                height: 280.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Animated Pie Chart
                    SizedBox(
                      width: 220.w,
                      height: 220.w,
                      child: CustomPaint(
                        painter: EnergyPiePainter(),
                      ),
                    ),
                    // Center Info
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('443', style: GoogleFonts.inter(fontSize: 40.sp, fontWeight: FontWeight.w900, color: Colors.white)),
                        Text('kWh', style: GoogleFonts.inter(fontSize: 20.sp, color: Colors.white70)),
                        SizedBox(height: 8.h),
                        // Text('Total Generated', style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white60)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              // Legend
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _pieLegend('Generated', const Color(0xFFF59E0B), '58%'),
                  _pieLegend('Consumed', const Color(0xFF3B82F6), '35%'),
                  _pieLegend('Exported', const Color(0xFF10B981), '7%'),
                ],
              ),
            ],
          ),
        ),
      );

  Widget _pieLegend(String label, Color color, String percent) => Column(
        children: [
          Container(width: 16.w, height: 16.h, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
          SizedBox(height: 8.h),
          Text(label, style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70)),
          Text(percent, style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w800, color: Colors.white)),
        ],
      );

  // AI LOGIC SECTION
  Widget _aiLogicSection() => _section(
        title: 'How AI Optimizes Your Bill',
        subtitle: 'Intelligent automation at every step',
        child: Column(
          children: [
            _aiStep('Detects peak tariff hours', LucideIcons.clock, const Color(0xFF8B5CF6)),
            _aiStep('Shifts export timing for max credit', LucideIcons.arrowUpRight, AppColors.themeGreen),
            _aiStep('Predicts tomorrow\'s generation', LucideIcons.sun, const Color(0xFFF59E0B)),
            _aiStep('Auto-generates optimized invoice', LucideIcons.fileCheck, const Color(0xFF10B981)),
          ],
        ),
      );

  Widget _aiStep(String text, IconData icon, Color color) => Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: GlassContainer(
          opacity: 0.1,
          borderRadius: BorderRadius.circular(24.r),
          padding: EdgeInsets.all(18.w),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(color: color.withOpacity(0.2), shape: BoxShape.circle),
                child: Icon(icon, color: color, size: 24.sp),
              ),
              SizedBox(width: 16.w),
              Expanded(child: Text(text, style: GoogleFonts.inter(fontSize: 15.sp, color: Colors.white, fontWeight: FontWeight.w600))),
              Icon(LucideIcons.arrowRight, color: AppColors.themeGreen.withOpacity(0.6), size: 24.sp),
            ],
          ),
        ),
      );

  // INVOICE SECTION
  Widget _invoiceSection() => _section(
        title: 'Your AI-Generated Invoice',
        subtitle: 'Transparent • Optimized • Instant',
        child: GlassContainer(
          opacity: 0.12,
          blur: 20,
          borderRadius: BorderRadius.circular(32.r),
          padding: EdgeInsets.all(24.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Invoice #2025-001', style: GoogleFonts.inter(fontSize: 13.sp, color: Colors.white60)),
                  Text('15 Jan 2025', style: GoogleFonts.inter(fontSize: 13.sp, color: Colors.white60)),
                ],
              ),
              SizedBox(height: 20.h),
              _invoiceLine('Solar Generation', '443 kWh × \$0.12', '\$53.16'),
              _invoiceLine('Grid Export Credit', '156 kWh × \$0.18', '+\$28.08'),
              _invoiceLine('AI Optimization Fee', '1 month', '\$15.00'),
              Divider(color: Colors.white24, height: 40.h),
              _invoiceLine('Total Due', '', '\$89.30', isTotal: true),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.all(14.w),
                decoration: BoxDecoration(color: AppColors.themeGreen.withOpacity(0.15), borderRadius: BorderRadius.circular(16.r)),
                child: Row(
                  children: [
                    Icon(LucideIcons.sparkles, color: AppColors.themeGreen, size: 20.sp),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Text('AI saved you \$53.20 this month',
                          style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w700, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _invoiceLine(String label, String detail, String amount, {bool isTotal = false}) => Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            Expanded(flex: 3, child: Text(label, style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white, fontWeight: isTotal ? FontWeight.w800 : FontWeight.w500))),
            Expanded(flex: 2, child: Text(detail, textAlign: TextAlign.end, style: GoogleFonts.inter(fontSize: 13.sp, color: Colors.white60))),
            SizedBox(width: 16.w),
            Text(amount, style: GoogleFonts.inter(fontSize: 17.sp, fontWeight: isTotal ? FontWeight.w900 : FontWeight.w700, color: isTotal ? AppColors.themeGreen : Colors.white)),
          ],
        ),
      );

  // FORECAST SECTION
  Widget _forecastSection() => _section(
        title: 'AI Financial Forecast',
        subtitle: 'Know your savings before they happen',
        child: Row(
          children: [
            Expanded(child: _forecastCard('Next Month', '\$178', 'Predicted savings', const Color(0xFF10B981))),
            SizedBox(width: 16.w),
            Expanded(child: _forecastCard('Annual', '\$2,147', 'With AI optimization', const Color(0xFFF59E0B))),
          ],
        ),
      );

  Widget _forecastCard(String title, String amount, String subtitle, Color color) => GlassContainer(
        opacity: 0.11,
        borderRadius: BorderRadius.circular(28.r),
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70)),
            SizedBox(height: 8.h),
            Text(amount, style: GoogleFonts.inter(fontSize: 34.sp, fontWeight: FontWeight.w900, color: Colors.white)),
            Text(subtitle, style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white60)),
          ],
        ),
      );

  // CTA SECTION
  Widget _ctaSection() => _paddedGlass(
        child: Column(
          children: [
            Text('Start Saving with AI Today',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(fontSize: 34.sp, fontWeight: FontWeight.w900, color: Colors.white, height: 1.2)),
            SizedBox(height: 16.h),
            Text('Join 10,000+ homes already saving with intelligent energy',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70)),
            SizedBox(height: 32.h),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(LucideIcons.rocket, size: 24.sp),
              label: Text('Get Started Free', style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w800)),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.themeGreen,
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
                elevation: 20,
                shadowColor: AppColors.themeGreen.withOpacity(0.8),
              ),
            ),
            SizedBox(height: 16.h),
            Text('7-day trial • No credit card required',
                style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white60)),
          ],
        ),
      );

  Widget _footer() => Text('© 2025 Suncube AI — Powering the Future of Solar Intelligence',
      textAlign: TextAlign.center,
      style: GoogleFonts.inter(fontSize: 13.sp, color: Colors.white38));

  // HELPERS
  Widget _chip(String text) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: Colors.white.withOpacity(0.3)),
        ),
        child: Text(text, style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white)),
      );

  Widget _section({required String title, required String subtitle, required Widget child}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: GoogleFonts.inter(fontSize: 28.sp, fontWeight: FontWeight.w900, color: Colors.white)),
            SizedBox(height: 10.h),
            Text(subtitle, style: GoogleFonts.inter(fontSize: 15.sp, color: Colors.white60)),
            SizedBox(height: 28.h),
            child,
          ],
        ),
      );

  Widget _paddedGlass({required Widget child}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: GlassContainer(
          opacity: 0.14,
          blur: 22,
          borderRadius: BorderRadius.circular(36.r),
          padding: EdgeInsets.all(36.w),
          child: child,
        ),
      );
}

// GORGEOUS PIE CHART PAINTER
class EnergyPiePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 * 0.85;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 32
      ..strokeCap = StrokeCap.round;

    const double startAngle = -pi / 2;

    // Generated 58%
    paint.color = const Color(0xFF3B82F6);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle, 2.1 * pi, false, paint);

    // Consumed 35%
    paint.color = const Color(0xFFF59E0B);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle + 2.1 * pi, 1.26 * pi, false, paint);

    // Exported 7%
    paint.color = const Color(0xFF10B981);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle + 3.36 * pi, 0.24 * pi, false, paint);

    // Inner glow
    paint
      ..color = Colors.white.withOpacity(0.2)
      ..strokeWidth = 6;
    canvas.drawCircle(center, radius * 0.65, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}