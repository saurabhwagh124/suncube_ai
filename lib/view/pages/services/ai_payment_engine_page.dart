// lib/screens/ai_payment_engine_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import 'package:suncube_ai/widgets/common/liquid_background.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/utils/AppColors.dart';

class AiPaymentEnginePage extends StatelessWidget {
  AiPaymentEnginePage({super.key});

  // Color tokens used in this page
  static const Color primaryBg = Color(0xFF0E5A38);
  static const Color lime = Color(0xFF84CC16);
  static const Color solarY = Color(0xFFF59E0B);
  static const Color gridB = Color(0xFF3B82F6);
  static const Color ecoG = Color(0xFF10B981);

  // Menu items
  final List<String> solItems = [
    'Residential Solar + AI',
    'Commercial & Industrial Solar',
    'Smart Grid & Virtual Power Plant',
    'AI Monitoring & Predictive Maintenance',
    'Data Insights & Weather Forecasting',
    'Cloud Dashboard & Multi-Site Management',
  ];
  final List<String> billItems = [
    'AI Payment Engine',
    'Blockchain Security',
    'Transparency',
  ];
  final List<String> caseItems = ['Flag Ship Projects', 'Success Stories'];
  final List<String> moreItems = ['About', 'Blog', 'Contact'];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 780),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: const Color(0xFF060C09),
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp),
            ),
            backgroundColor: const Color(0xFF060C09).withOpacity(0.9),
            elevation: 0,
            centerTitle: true,
            title: Text(
              'AI Payment Engine',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
                color: Colors.white,
              ),
            ),
          ),
          body: LiquidBackground(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 100.h), // Clear AppBar
                  _hero(),
                  _kpiCards(),
                  _chart(),
                  _aiLogic(),
                  _invoiceDemo(),
                  _forecast(),
                  _cta(),
                  _footer(),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ==================== 1. HERO ====================
  Widget _hero() => GlassContainer(
    margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
    blur: 20,
    opacity: 0.15,
    color: AppColors.themeGreen,
    borderRadius: BorderRadius.circular(28.r),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.15),
            border: Border.all(color: Colors.white.withOpacity(.3)),
            borderRadius: BorderRadius.circular(999),
          ),
          child: Text(
            'Automated billing with AI-optimized pricing',
            style: GoogleFonts.inter(color: Colors.white, fontSize: 11.sp),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          'Smarter Payments.\nAutomated Intelligence.',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1.2,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'Our simulated AI engine calculates energy usage, credits and payables in real-time.',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 15.sp,
            color: Colors.white.withOpacity(0.9),
            height: 1.4,
          ),
        ),
        SizedBox(height: 24.h),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(LucideIcons.arrowRight, size: 16.sp),
          label: Text(
            'Preview AI Payment Flow',
            style: TextStyle(fontSize: 12.sp),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeGreen,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
      ],
    ),
  );

  // ==================== 2. KPI CARDS ====================
  Widget _kpiCards() {
    final cards = [
      _kpiCard('Solar Generation', '4.2 kW', LucideIcons.sun, solarY, '+15%'),
      _kpiCard('Grid Export', '1.8 kW', LucideIcons.grid3x3, gridB, 'Earning'),
      _kpiCard(
        'Credits Earned',
        '\$28.38',
        LucideIcons.dollarSign,
        ecoG,
        'Month',
      ),
      _kpiCard(
        'Net Bill',
        '\$106.17',
        LucideIcons.fileText,
        primaryBg,
        'AI opt',
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      child: Column(
        children: [
          Chip(
            backgroundColor: AppColors.themeGreen.withOpacity(0.2),
            label: Text(
              'Real-Time Simulation',
              style: TextStyle(fontSize: 10.sp, color: AppColors.themeGreen),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'Dynamic Energy Billing Simulation',
            style: GoogleFonts.inter(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Watch as our AI calculates your energy credits in real-time.',
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          SizedBox(height: 20.h),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 1.sw < 600 ? 2 : 4,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.w,
            childAspectRatio: 1.35,
            children: cards,
          ),
        ],
      ),
    );
  }

  Widget _kpiCard(
    String title,
    String value,
    IconData icon,
    Color accent,
    String footer,
  ) => GlassContainer(
    padding: EdgeInsets.all(20.w),
    blur: 15,
    opacity: 0.1,
    color: accent,
    borderRadius: BorderRadius.circular(20.r),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                color: accent.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: accent, size: 18.sp),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          footer,
          style: GoogleFonts.inter(
            fontSize: 11.sp,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ],
    ),
  );

  // ==================== 3. 24H CHART ====================
  Widget _chart() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: AppColors.themeGreen.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                LucideIcons.chartBar300,
                color: AppColors.themeGreen,
                size: 20.sp,
              ),
            ),
            SizedBox(width: 12.w),
            Text(
              '24-Hour Energy Flow Simulation',
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        GlassContainer(
          height: 200.h,
          child: GlassContainer(
            padding: EdgeInsets.all(16.w),
            blur: 15,
            opacity: 0.1,
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.r),
            child: Column(
              children: [
                Expanded(child: _miniBars()),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _legend(solarY, 'Generation'),
                    SizedBox(width: 16.w),
                    _legend(gridB, 'Consumption'),
                    SizedBox(width: 16.w),
                    _legend(ecoG, 'Grid Export'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  Widget _miniBars() => Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: List.generate(24, (h) {
      final gen = (30 + (h % 5) * 15).toDouble();
      final cons = (45 + (h % 4) * 18).toDouble();
      final exp = (8 + (h % 3) * 12).toDouble();
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _bar(solarY, gen),
              _bar(gridB, cons),
              _bar(ecoG, exp),
              SizedBox(height: 4.h),
              Text(
                '$h',
                style: TextStyle(fontSize: 8.sp, color: Colors.white54),
              ),
            ],
          ),
        ),
      );
    }),
  );

  Widget _bar(Color c, double height) => Container(
    width: double.infinity,
    height: height.h,
    margin: EdgeInsets.symmetric(vertical: 1.h),
    decoration: BoxDecoration(
      color: c,
      borderRadius: BorderRadius.vertical(top: Radius.circular(3.r)),
    ),
  );

  Widget _legend(Color c, String label) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 12.w,
        height: 12.h,
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(3.r),
        ),
      ),
      SizedBox(width: 6.w),
      Text(label, style: TextStyle(fontSize: 10.sp, color: Colors.white70)),
    ],
  );

  // ==================== 4. AI LOGIC ====================
  Widget _aiLogic() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
    child: Column(
      children: [
        Chip(
          backgroundColor: AppColors.themeGreen.withOpacity(0.2),
          label: Text(
            'AI Intelligence',
            style: TextStyle(fontSize: 10.sp, color: AppColors.themeGreen),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'AI Optimization Logic',
          style: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'Our AI schedules payouts to avoid peak tariffs and maximise savings.',
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        SizedBox(height: 20.h),
        ..._logicItems(),
      ],
    ),
  );

  List<Widget> _logicItems() {
    final data = [
      (
        'Peak Hour Detection',
        'AI identifies high-tariff periods',
        LucideIcons.clock,
        Colors.blueAccent,
      ),
      (
        'Optimal Timing',
        'Schedules payments during low-rate hours',
        LucideIcons.trendingUp,
        AppColors.themeGreen,
      ),
      (
        'Predictive Analysis',
        'Forecasts future energy costs',
        LucideIcons.sparkles,
        solarY,
      ),
      (
        'Automated Execution',
        'Executes optimised payment schedule',
        LucideIcons.bot,
        ecoG,
      ),
    ];
    return data
        .map(
          (e) => GlassContainer(
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.all(16.w),
            blur: 15,
            opacity: 0.1,
            color: e.$4,
            borderRadius: BorderRadius.circular(20.r),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: e.$4.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(e.$3, color: e.$4, size: 20.sp),
                ),
                SizedBox(width: 14.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.$1,
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        e.$2,
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
        .toList();
  }

  // ==================== 5. INVOICE DEMO ====================
  Widget _invoiceDemo() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Chip(
          backgroundColor: AppColors.themeGreen.withOpacity(0.2),
          label: Text(
            'Smart Billing',
            style: TextStyle(fontSize: 10.sp, color: AppColors.themeGreen),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'Smart Invoice Demo',
          style: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'Experience AI-generated invoices with detailed breakdowns.',
          style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
        ),
        SizedBox(height: 20.h),
        GlassContainer(
          padding: EdgeInsets.zero,
          blur: 15,
          opacity: 0.1,
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.r),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  children: [
                    _invoiceTop(),
                    _invoiceLines(),
                    _invoiceTotal(),
                    SizedBox(height: 16.h),
                    _aiBanner(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(24.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(LucideIcons.eye, size: 14.sp),
                      label: Text('Preview', style: TextStyle(fontSize: 11.sp)),
                    ),
                    SizedBox(width: 12.w),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(LucideIcons.download, size: 14.sp),
                      label: Text(
                        'Download PDF',
                        style: TextStyle(fontSize: 11.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.themeGreen,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 12.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget _invoiceTop() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bill To:',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11.sp),
          ),
          Text(
            'John Smith',
            style: TextStyle(fontSize: 12.sp, color: Colors.white),
          ),
          Text(
            '123 Solar Street, Green City',
            style: TextStyle(fontSize: 10.sp, color: Colors.white60),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Invoice #: INV-2024-001',
            style: TextStyle(fontSize: 10.sp, color: Colors.white70),
          ),
          Text(
            'Date: 2024-01-15',
            style: TextStyle(fontSize: 10.sp, color: Colors.white70),
          ),
          Text(
            'Due: 2024-02-15',
            style: TextStyle(fontSize: 10.sp, color: Colors.white70),
          ),
        ],
      ),
    ],
  );

  Widget _invoiceLines() {
    final lines = [
      ('Solar Generation (Panel A)', '245 kWh @ \$0.12', 29.40),
      ('Solar Generation (Panel B)', '198 kWh @ \$0.12', 23.76),
      ('Grid Export Credits', '156 kWh @ \$0.18', 28.08),
      ('Peak Hour Optimisation', '1 month @ \$15.00', 15.00),
    ];
    return Column(
      children:
          lines
              .map(
                (e) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          e.$1,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          e.$2,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.white60,
                          ),
                        ),
                      ),
                      Text(
                        '\$${e.$3.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
    );
  }

  Widget _invoiceTotal() => Column(
    children: [
      Divider(color: Colors.white24),
      _invoiceRow('Subtotal', '\$96.24'),
      _invoiceRow('Tax (10%)', '\$9.62'),
      Divider(color: Colors.white38),
      _invoiceRow('Total', '\$105.86', isBold: true),
    ],
  );

  Widget _invoiceRow(String label, String value, {bool isBold = false}) =>
      Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: isBold ? FontWeight.w800 : FontWeight.w600,
                color: isBold ? AppColors.themeGreen : Colors.white,
              ),
            ),
          ],
        ),
      );

  Widget _aiBanner() => Container(
    padding: EdgeInsets.all(14.w),
    decoration: BoxDecoration(
      color: primaryBg.withOpacity(0.15),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Row(
      children: [
        Icon(
          LucideIcons.brainCircuit,
          color: AppColors.themeGreen,
          size: 20.sp,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 11.sp, color: Colors.white70),
              children: [
                TextSpan(
                  text: 'AI Optimisation Applied — ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.themeGreen,
                  ),
                ),
                TextSpan(text: 'Saved you \$23.45 this month'),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  // ==================== 6. FORECAST ====================
  Widget _forecast() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
    child: Column(
      children: [
        Chip(
          backgroundColor: AppColors.themeGreen.withOpacity(0.2),
          label: Text(
            'Predictive Analytics',
            style: TextStyle(fontSize: 10.sp, color: AppColors.themeGreen),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'Forecast-Based Billing',
          style: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'AI-powered predictions help you plan your energy finances with confidence.',
          style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
        ),
        SizedBox(height: 20.h),
        ..._forecastCards(),
      ],
    ),
  );

  List<Widget> _forecastCards() =>
      [
            _forecastCard(
              'Weather Forecast',
              '85%',
              'Sunny Days This Month',
              LucideIcons.sun,
              solarY,
              ['+12% Generation', '\$45.20 Credits'],
            ),
            _forecastCard(
              'Seasonal Trends',
              'Summer',
              'Peak Generation Season',
              LucideIcons.sunMedium,
              primaryBg,
              ['18.5 kWh/day', '\$89 savings'],
            ),
            _forecastCard(
              'Financial Planning',
              '\$1,247',
              'Annual Savings Projected',
              LucideIcons.trendingUp,
              ecoG,
              ['+23% ROI', '4.2 yr payback'],
            ),
          ]
          .map((e) => Padding(padding: EdgeInsets.only(bottom: 16.h), child: e))
          .toList();

  Widget _forecastCard(
    String title,
    String big,
    String subtitle,
    IconData icon,
    Color color,
    List<String> details,
  ) => GlassContainer(
    padding: EdgeInsets.all(20.w),
    blur: 15,
    opacity: 0.12,
    color: color,
    borderRadius: BorderRadius.circular(24.r),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 24.sp),
            ),
            SizedBox(width: 14.w),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Text(
          big,
          style: GoogleFonts.inter(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 13.sp, color: Colors.white70),
        ),
        SizedBox(height: 12.h),
        ...details.map(
          (d) => Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Text(
              '• $d',
              style: TextStyle(fontSize: 12.sp, color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );

  // ==================== 7. CTA ====================
  Widget _cta() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 48.h),
    child: Column(
      children: [
        Text(
          'Ready to start saving with AI?',
          style: GoogleFonts.inter(
            fontSize: 26.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(LucideIcons.sparkles, size: 18.sp),
              label: Text(
                'Start Free Trial',
                style: TextStyle(fontSize: 14.sp),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.themeGreen,
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
            ),
            SizedBox(width: 16.w),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Schedule Demo',
                style: TextStyle(fontSize: 14.sp, color: Colors.white),
              ),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
                side: BorderSide(color: Colors.white38, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );

  // ==================== 8. FOOTER ====================
  Widget _footer() => Padding(
    padding: EdgeInsets.only(bottom: 40.h, top: 20.h),
    child: Text(
      '© 2025 Suncube AI – All rights reserved',
      textAlign: TextAlign.center,
      style: GoogleFonts.inter(
        fontSize: 12.sp,
        color: Colors.white.withOpacity(0.5),
      ),
    ),
  );
}
