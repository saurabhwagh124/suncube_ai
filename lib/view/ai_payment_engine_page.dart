import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
/// 100 % responsive – mobile-first – flutter_screenutil
class AiPaymentEnginePage extends StatelessWidget {
   AiPaymentEnginePage({super.key});

  /* ---------- colour tokens ---------- */
  static const Color primaryBg = Color(0xFF0E5A38);
  static const Color lime      = Color(0xFF84CC16);
  static const Color solarY    = Color(0xFFF59E0B);
  static const Color gridB     = Color(0xFF3B82F6);
  static const Color ecoG      = Color(0xFF10B981);

  @override
  Widget build(BuildContext context) {
    /* --------------------------------------------------
       Initialise ScreenUtil – design-size 360 × 780
       (typical mobile portrait). Change if you need.
       -------------------------------------------------- */
    ScreenUtil.init(context,
        designSize: const Size(360, 780), minTextAdapt: true, splitScreenMode: true);

    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: _drawer(),          // hamburger menu
      body: SingleChildScrollView(
        child: Column(
          children: [
            _navbar(context),
            _hero(),
            _kpiCards(),
            _chart(),
            _aiLogic(),
            _invoiceDemo(),
            _forecast(),
            _cta(),
            _footer(),
          ],
        ),
      ),
    );
  }

  /* ============================================================
     1. NAVBAR  –  mobile gets hamburger  –  desktop gets tabs
     ============================================================ */
  Widget _navbar(BuildContext ctx) {
    final bool isMobile = 1.sw < 600;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryBg.withOpacity(.95),
        border: Border(bottom: BorderSide(color: Colors.white.withOpacity(.1))),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          _logo(),
          const Spacer(),
          if (isMobile) _hamburger(ctx) else ..._desktopMenu(),
        ],
      ),
    );
  }

  Widget _logo() => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 32.w,
        height: 32.h,
        decoration: BoxDecoration(color: lime, borderRadius: BorderRadius.circular(6.r)),
        child: Icon(LucideIcons.zap, color: Colors.white, size: 18.sp),
      ),
      SizedBox(width: 6.w),
      Text('Suncube AI',
          style: GoogleFonts.inter(
              fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.white)),
    ],
  );

  Widget _hamburger(BuildContext ctx) => IconButton(
      icon: Icon(LucideIcons.menu, color: Colors.white, size: 22.sp),
      onPressed: () => Scaffold.of(ctx).openEndDrawer());

  List<Widget> _desktopMenu() => [
    _navBtn('Home'),
    _popup('Solutions', solItems),
    _popup('Billing', billItems),
    _popup('Case Studies', caseItems),
    _navBtn('Sustainability'),
    _navBtn('Partners'),
    _popup('More', moreItems),
    SizedBox(width: 12.w),
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: lime,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          shape: StadiumBorder()),
      child: Text('Request Demo', style: TextStyle(fontSize: 12.sp)),
    ),
  ];

  Widget _navBtn(String txt) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w),
    child: Text(txt,
        style: TextStyle(color: Colors.white.withOpacity(.85), fontSize: 12.sp)),
  );

  Widget _popup(String title, List<String> items) => PopupMenuButton<String>(
    tooltip: '',
    color: primaryBg.withOpacity(.95),
    shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white.withOpacity(.1)),
        borderRadius: BorderRadius.circular(8.r)),
    itemBuilder: (_) => items
        .map((e) => PopupMenuItem(
        value: e,
        child: Text(e,
            style: TextStyle(color: Colors.white.withOpacity(.9), fontSize: 11.sp))))
        .toList(),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title,
              style: TextStyle(color: Colors.white.withOpacity(.85), fontSize: 12.sp)),
          SizedBox(width: 4.w),
          Icon(LucideIcons.chevronDown, size: 14.sp, color: Colors.white.withOpacity(.7))
        ],
      ),
    ),
  );

  /* ----------------------------------------------------------
     Drawer for mobile
     ---------------------------------------------------------- */
  Widget _drawer() => Drawer(
    backgroundColor: primaryBg,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            decoration: BoxDecoration(color: primaryBg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _logo(),
                SizedBox(height: 12.h),
                Text('AI-Powered Solar Billing',
                    style: TextStyle(color: Colors.white.withOpacity(.8), fontSize: 12.sp))
              ],
            )),
      ]
    )
  );

  /* ------------------------------------------------------------
     2. HERO
     ------------------------------------------------------------ */
  Widget _hero() => Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
          colors: [primaryBg, Color(0xFF126E46)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 80.h),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              border: Border.all(color: Colors.white.withOpacity(.2)),
              borderRadius: BorderRadius.circular(999)),
          child: Text('Automated billing with AI-optimized pricing',
              style: TextStyle(color: Colors.white, fontSize: 10.sp)),
        ),
        SizedBox(height: 20.h),
        Text('Smarter Payments.\nAutomated Intelligence.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 28.sp, fontWeight: FontWeight.w800, color: Colors.white, height: 1.2)),
        SizedBox(height: 12.h),
        Text('Our simulated AI engine calculates energy usage, credits and payables in real-time.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: Colors.green[50], height: 1.3)),
        SizedBox(height: 24.h),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(LucideIcons.arrowRight, size: 16.sp),
          label: Text('Preview AI Payment Flow', style: TextStyle(fontSize: 12.sp)),
          style: ElevatedButton.styleFrom(
              backgroundColor: lime,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              shape: StadiumBorder(),
              elevation: 4),
        )
      ],
    ),
  );

  /* ------------------------------------------------------------
     3. KPI CARDS  –  2 columns on mobile  –  4 on tablet/desktop
     ------------------------------------------------------------ */
  Widget _kpiCards() {
    final cards = [
      _kpiCard('Solar Generation', '4.2 kW', LucideIcons.sun, solarY, '+15%'),
      _kpiCard('Grid Export', '1.8 kW', LucideIcons.grid3x3, gridB, 'Earning'),
      _kpiCard('Credits Earned', '\$28.38', LucideIcons.dollarSign, ecoG, 'Month'),
      _kpiCard('Net Bill', '\$106.17', LucideIcons.fileText, primaryBg, 'AI opt'),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      child: Column(
        children: [
          Chip(label: Text('Real-Time Simulation', style: TextStyle(fontSize: 10.sp))),
          SizedBox(height: 12.h),
          Text('Dynamic Energy Billing Simulation',
              style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
          SizedBox(height: 6.h),
          Text('Watch as our AI calculates your energy credits in real-time.',
              style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
          SizedBox(height: 20.h),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 1.sw < 600 ? 2 : 4,
            mainAxisSpacing: 12.h,
            crossAxisSpacing: 12.w,
            childAspectRatio: 1.2,
            children: cards,
          ),
        ],
      ),
    );
  }

  Widget _kpiCard(String title, String value, IconData icon, Color accent, String footer) =>
      Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(left: BorderSide(width: 3.w, color: accent)),
            borderRadius: BorderRadius.circular(6.r),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 4)]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextStyle(fontSize: 10.sp, color: Colors.black54)),
                Icon(icon, color: accent, size: 16.sp),
              ],
            ),
            Text(value, style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w700)),
            Text(footer, style: TextStyle(fontSize: 9.sp, color: Colors.black54)),
          ],
        ),
      );

  /* ------------------------------------------------------------
     4. 24-H CHART
     ------------------------------------------------------------ */
  Widget _chart() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      children: [
        ListTile(
            dense: true,
            leading: Icon(LucideIcons.chartBar200, color: primaryBg, size: 18.sp),
            title: Text('24-Hour Energy Flow Simulation',
                style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w600))),
        SizedBox(height: 8.h),
        Container(
          height: 160.h,
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(color: Colors.grey.shade200)),
          child: Column(
            children: [
              Expanded(child: _miniBars()),
              SizedBox(height: 8.h),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                _legend(solarY, 'Generation'),
                SizedBox(width: 12.w),
                _legend(gridB, 'Consumption'),
                SizedBox(width: 12.w),
                _legend(ecoG, 'Grid Export'),
              ]),
            ],
          ),
        ),
      ],
    ),
  );

  Widget _miniBars() => Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: List.generate(24, (h) {
      final gen = (30 + (h % 3) * 25).toDouble();
      final cons = (40 + (h % 4) * 20).toDouble();
      final exp = (10 + (h % 2) * 15).toDouble();
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children :[
            _bar(solarY, gen),
            SizedBox(height: 1.h),
            _bar(gridB, cons),
            SizedBox(height: 1.h),
            _bar(ecoG, exp),
            SizedBox(height: 2.h),
            Text('$h', style: TextStyle(fontSize: 7.sp, color: Colors.black54))
            ],
          ),
        ),
      );
    }),
  );

  Widget _bar(Color c, double h) => Container(
    width: double.infinity,
    height: h.h,
    decoration: BoxDecoration(color: c, borderRadius: BorderRadius.vertical(top: Radius.circular(2.r))),
  );

  Widget _legend(Color c, String txt) => Row(mainAxisSize: MainAxisSize.min, children: [
    Container(width: 10.w, height: 10.h, decoration: BoxDecoration(color: c, borderRadius: BorderRadius.circular(2.r))),
    SizedBox(width: 4.w),
    Text(txt, style: TextStyle(fontSize: 9.sp))
  ]);

  /* ------------------------------------------------------------
     5. AI LOGIC
     ------------------------------------------------------------ */
  Widget _aiLogic() {
    return Container(
      color: Colors.grey.shade50,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      child: Column(
        children: [
          Chip(label: Text('AI Intelligence', style: TextStyle(fontSize: 10.sp))),
          SizedBox(height: 12.h),
          Text('AI Optimization Logic', style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
          SizedBox(height: 6.h),
          Text('Our AI schedules payouts to avoid peak tariffs and maximise savings.',
              style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
          SizedBox(height: 20.h),
          ..._logicItems(),
        ],
      ),
    );
  }

  List<Widget> _logicItems() {
    final data = [
      ('Peak Hour Detection', 'AI identifies high-tariff periods', LucideIcons.clock, Colors.blue),
      ('Optimal Timing', 'Schedules payments during low-rate hours', LucideIcons.trendingUp, Colors.green),
      ('Predictive Analysis', 'Forecasts future energy costs', LucideIcons.circleAlert, Colors.orange),
      ('Automated Execution', 'Executes optimised payment schedule', LucideIcons.circleCheck, ecoG),
    ];
    return data
        .map((e) => Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(color: e.$4.withOpacity(.08), borderRadius: BorderRadius.circular(6.r)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(e.$3, color: e.$4, size: 16.sp),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(e.$1, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11.sp)),
                Text(e.$2, style: TextStyle(fontSize: 10.sp, color: Colors.black54)),
              ],
            ),
          ),
        ],
      ),
    ))
        .toList();
  }

  /* ------------------------------------------------------------
     6. INVOICE DEMO
     ------------------------------------------------------------ */
  Widget _invoiceDemo() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Chip(label: Text('Smart Billing', style: TextStyle(fontSize: 10.sp))),
        SizedBox(height: 12.h),
        Text('Smart Invoice Demo', style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('Experience AI-generated invoices with detailed breakdowns.',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.r),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 6)]),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    _invoiceTop(),
                    SizedBox(height: 16.h),
                    _invoiceLines(),
                    SizedBox(height: 16.h),
                    _invoiceTotal(),
                    SizedBox(height: 12.h),
                    _aiBanner(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(6.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(LucideIcons.eye, size: 14.sp),
                        label: Text('Preview', style: TextStyle(fontSize: 10.sp))),
                    SizedBox(width: 8.w),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(LucideIcons.download, size: 14.sp),
                      label: Text('Download PDF', style: TextStyle(fontSize: 10.sp)),
                      style: ElevatedButton.styleFrom(backgroundColor: primaryBg, foregroundColor: Colors.white),
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
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Bill To:', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10.sp)),
          Text('John Smith', style: TextStyle(fontSize: 10.sp)),
          Text('123 Solar Street, Green City', style: TextStyle(fontSize: 9.sp, color: Colors.black54)),
        ]),
      ),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text('Invoice #: INV-2024-001', style: TextStyle(fontSize: 9.sp)),
          Text('Date: 2024-01-15', style: TextStyle(fontSize: 9.sp)),
          Text('Due: 2024-02-15', style: TextStyle(fontSize: 9.sp)),
        ]),
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
      children: lines
          .map((e) => Padding(
        padding: EdgeInsets.symmetric(vertical: 6.h),
        child: Row(
          children: [
            Expanded(child: Text(e.$1, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10.sp))),
            Expanded(child: Text(e.$2, style: TextStyle(fontSize: 9.sp, color: Colors.black54))),
            Text('\$${e.$3.toStringAsFixed(2)}', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10.sp)),
          ],
        ),
      ))
          .toList(),
    );
  }

  Widget _invoiceTotal() => Column(
    children: [
      Divider(),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Subtotal', style: TextStyle(fontSize: 10.sp)),
        Text('\$96.24', style: TextStyle(fontSize: 10.sp))
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Tax', style: TextStyle(fontSize: 10.sp)),
        Text('\$9.62', style: TextStyle(fontSize: 10.sp))
      ]),
      Divider(),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Total', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 11.sp)),
        Text('\$105.86',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 11.sp, color: primaryBg))
      ]),
    ],
  );

  Widget _aiBanner() => Container(
    padding: EdgeInsets.all(12.w),
    decoration: BoxDecoration(color: primaryBg.withOpacity(.08), borderRadius: BorderRadius.circular(6.r)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(LucideIcons.brain, color: primaryBg, size: 16.sp),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AI Optimisation Applied',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10.sp, color: primaryBg)),
              Text(
                  'Your bill has been optimised by \$23.45 through peak-hour avoidance and credit maximisation.',
                  style: TextStyle(fontSize: 9.sp, color: Colors.black54))
            ],
          ),
        ),
      ],
    ),
  );

  /* ------------------------------------------------------------
     7. FORECAST
     ------------------------------------------------------------ */
  Widget _forecast() => Container(
    color: Colors.grey.shade50,
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Chip(label: Text('Predictive Analytics', style: TextStyle(fontSize: 10.sp))),
        SizedBox(height: 12.h),
        Text('Forecast-Based Billing', style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('AI-powered predictions help you plan your energy finances with confidence.',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        ..._forecastCards(),
      ],
    ),
  );

  List<Widget> _forecastCards() {
    final List<(String, String, String, IconData, Color, List<String>)> data = [
      ('Weather Forecast', '85%', 'Sunny Days This Month', LucideIcons.sun, solarY,
      ['Expected Generation: +12%', 'Credit Potential: \$45.20']),
      ('Seasonal Trends', 'Summer', 'Peak Generation Season', LucideIcons.calendar, primaryBg,
      ['Avg. Daily Generation: 18.5 kWh', 'Monthly Savings: \$89.30']),
      ('Financial Planning', '\$1,247', 'Annual Savings Projected', LucideIcons.trendingUp, ecoG,
      ['ROI Improvement: +23%', 'Payback Period: 4.2 years']),
    ];
    return data
        .map((e) => Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 4)]),
      child: Column(
        children: [
          ListTile(
              dense: true,
              leading: Icon(e.$4, color: e.$5, size: 18.sp),
              title: Text(e.$1, style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w600))),
          SizedBox(height: 8.h),
          Text(e.$2, style: GoogleFonts.inter(fontSize: 24.sp, fontWeight: FontWeight.w700)),
          Text(e.$3, style: TextStyle(fontSize: 10.sp, color: Colors.black54)),
          SizedBox(height: 10.h),
          ...e.$6
              .map((x) => Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Row(
              children: [
                Expanded(child: Text(x.split(':').first + ':', style: TextStyle(fontSize: 9.sp))),
                Text(x.split(':').last, style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600))
              ],
            ),
          ))
              .toList(),
        ],
      ),
    ))
        .toList();
  }

  /* ------------------------------------------------------------
     8. CTA
     ------------------------------------------------------------ */
  Widget _cta() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Text('Ready to start saving?',
            style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(LucideIcons.arrowRight, size: 14.sp),
              label: Text('Start AI Billing Trial', style: TextStyle(fontSize: 10.sp)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryBg,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  shape: StadiumBorder(),
                  elevation: 3),
            ),
            SizedBox(width: 12.w),
            OutlinedButton(
              onPressed: () {},
              child: Text('Schedule Demo', style: TextStyle(fontSize: 10.sp)),
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h), shape: StadiumBorder()),
            ),
          ],
        ),
      ],
    ),
  );

  /* ------------------------------------------------------------
     9. FOOTER
     ------------------------------------------------------------ */
  Widget _footer() => Container(
    width: double.infinity,
    color: primaryBg,
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
    child: Text('© 2024 Suncube AI – All rights reserved',
        textAlign: TextAlign.center, style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: 8.sp)),
  );

  /* ----------------------------------------------------------
     Menu item lists
     ---------------------------------------------------------- */
  final List<String> solItems = [
    'Residential Solar + AI',
    'Commercial & Industrial Solar',
    'Smart Grid & Virtual Power Plant',
    'AI Monitoring & Predictive Maintenance',
    'Data Insights & Weather Forecasting',
    'Cloud Dashboard & Multi-Site Management'
  ];
  final List<String> billItems = ['AI Payment Engine', 'Blockchain Security', 'Transparency'];
  final List<String> caseItems = ['Flag Ship Projects', 'Success Stories'];
  final List<String> moreItems = ['About', 'Blog', 'Contact'];
}