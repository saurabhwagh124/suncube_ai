import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Flutter equivalent of the supplied Transparency HTML.
/// Fully responsive via flutter_screenutil.
class TransparencyPage extends StatelessWidget {
   TransparencyPage({super.key});

  /* ---------- colour tokens (same as CSS) ---------- */
  static const Color primaryBg = Color(0xFF0E5A38);
  static const Color lime = Color(0xFF84CC16);
  static const Color solarY = Color(0xFFF59E0B);
  static const Color gridB = Color(0xFF3B82F6);
  static const Color ecoG = Color(0xFF10B981);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(360, 780), minTextAdapt: true, splitScreenMode: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _navbar(),
            _hero(),
            _performanceReports(),
            _complianceLog(),
            _stakeholderDashboard(),
            _digest(),
            _footer(),
          ],
        ),
      ),
    );
  }

  /* ============================================================
     1. NAVBAR  –  mobile hamburger  –  desktop tabs
     ============================================================ */
  Widget _navbar() {
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
          if (isMobile) _hamburger() else ..._desktopMenu(),
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

  Widget _hamburger() => Builder(
    builder: (ctx) => IconButton(
        icon: Icon(LucideIcons.menu, color: Colors.white, size: 22.sp),
        onPressed: () => Scaffold.of(ctx).openEndDrawer()),
  );

  List<Widget> _desktopMenu() => [
    _navBtn('Home'),
    _popup('Solutions', solItems),
    _popup('Billing & Blockchain', billItems),
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
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
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

  /* ============================================================
     2. HERO
     ============================================================ */
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
          child: Text('Our transparent billing system shows you exactly how we calculate your energy costs and credits.',
              style: TextStyle(color: Colors.white, fontSize: 10.sp)),
        ),
        SizedBox(height: 20.h),
        Text('Data That Tells the Truth.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 28.sp, fontWeight: FontWeight.w800, color: Colors.white, height: 1.2)),
        SizedBox(height: 12.h),
        Text('Transparency isn\'t an option — it\'s a feature. Preview how clean reporting builds trust in every solar interaction.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: Colors.green[50], height: 1.3)),
        SizedBox(height: 24.h),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(LucideIcons.arrowRight, size: 16.sp),
          label: Text('View Report Gallery', style: TextStyle(fontSize: 12.sp)),
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

  /* ============================================================
     3. PERFORMANCE REPORTS
     ============================================================ */
  Widget _performanceReports() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Chip(label: Text('📊 Section 2', style: TextStyle(fontSize: 10.sp))),
        SizedBox(height: 8.h),
        Text('Performance Reports',
            style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('Track your system\'s efficiency, downtime, and energy balance with detailed KPIs and exportable reports.',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 1.sw < 600 ? 2 : 3,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
          childAspectRatio: 1.3,
          children: [
            _kpiCard('Efficiency', '94.2%', '+2.1% from last month', LucideIcons.trendingUp, Colors.blue),
            _kpiCard('Downtime', '0.8%', '-0.3% from last month', LucideIcons.clock, Colors.orange),
            _kpiCard('Net Energy', '355.2 kWh', 'Earned vs Consumed', LucideIcons.zap, Colors.green),
          ],
        ),
        SizedBox(height: 16.h),
        _balanceCard(),
        SizedBox(height: 16.h),
        _exportCard(),
      ],
    ),
  );

  Widget _kpiCard(String title, String value, String footer, IconData icon, Color accent) => Container(
    padding: EdgeInsets.all(12.w),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(left: BorderSide(width: 4.w, color: accent)),
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 4)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600)),
            Icon(icon, color: accent, size: 16.sp),
          ],
        ),
        Text(value, style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w700)),
        Text(footer, style: TextStyle(fontSize: 9.sp, color: Colors.black54)),
      ],
    ),
  );

  Widget _balanceCard() => Container(
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 6)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(LucideIcons.chartBar200, color: primaryBg, size: 18.sp),
            SizedBox(width: 6.w),
            Text('Energy Balance', style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(height: 12.h),
        _balanceRow('Energy Earned', '1,247 kWh', Colors.green),
        _balanceRow('Energy Consumed', '892.3 kWh', Colors.grey),
        Divider(),
        _balanceRow('Net Earnings', '+355.2 kWh', Colors.green, bold: true),
      ],
    ),
  );

  Widget _balanceRow(String label, String value, Color color, {bool bold = false}) => Padding(
    padding: EdgeInsets.symmetric(vertical: 4.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(fontSize: 10.sp, fontWeight: bold ? FontWeight.w600 : FontWeight.w500)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          decoration: BoxDecoration(
              color: color.withOpacity(.12), borderRadius: BorderRadius.circular(999)),
          child: Text(value,
              style: TextStyle(fontSize: 9.sp, color: color, fontWeight: bold ? FontWeight.w600 : FontWeight.w500)),
        ),
      ],
    ),
  );

  Widget _exportCard() => Container(
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 6)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(LucideIcons.download, color: primaryBg, size: 18.sp),
            SizedBox(width: 6.w),
            Text('Export Reports', style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(height: 8.h),
        Text('Download detailed performance reports in your preferred format',
            style: TextStyle(fontSize: 10.sp, color: Colors.black54)),
        SizedBox(height: 12.h),
        _exportBtn(LucideIcons.fileText, 'Sample PDF Report'),
        SizedBox(height: 8.h),
        _exportBtn(LucideIcons.fileSpreadsheet, 'Sample XLS Report'),
        SizedBox(height: 8.h),
        _exportBtn(LucideIcons.file, 'Sample CSV Report'),
      ],
    ),
  );

  Widget _exportBtn(IconData icon, String label) => OutlinedButton.icon(
    onPressed: () {},
    icon: Icon(icon, size: 14.sp),
    label: Text(label, style: TextStyle(fontSize: 10.sp)),
    style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h)),
  );

  /* ============================================================
     4. COMPLIANCE LOG
     ============================================================ */
  Widget _complianceLog() => Container(
    color: Colors.grey.shade50,
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Chip(label: Text('🕵️ Section 3', style: TextStyle(fontSize: 10.sp))),
        SizedBox(height: 8.h),
        Text('Regulatory Compliance Log',
            style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('Complete transparency in regulatory compliance with detailed logs of panel performance and maintenance schedules.',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        _complianceTable(),
        SizedBox(height: 16.h),
        Center(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(LucideIcons.fileText, size: 14.sp),
            label: Text('View Regulatory Report', style: TextStyle(fontSize: 10.sp)),
            style: ElevatedButton.styleFrom(backgroundColor: primaryBg, foregroundColor: Colors.white),
          ),
        ),
      ],
    ),
  );

  Widget _complianceTable() => Container(
    padding: EdgeInsets.all(12.w),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 4)]),
    child: Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            headingRowHeight: 28.h,
            dataRowHeight: 32.h,
            horizontalMargin: 8.w,
            columnSpacing: 16.w,
            columns: const [
              DataColumn(label: Text('Panel ID')),
              DataColumn(label: Text('Generation Log')),
              DataColumn(label: Text('Maintenance Date')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Actions')),
            ],
            rows: [
              _dataRow('PANEL-001', '42.6 kWh', '2024-02-15', 'Compliant', Colors.green),
              _dataRow('PANEL-002', '41.8 kWh', '2024-02-15', 'Compliant', Colors.green),
              _dataRow('PANEL-003', '43.2 kWh', '2024-02-20', 'Pending', Colors.orange),
              _dataRow('PANEL-004', '40.9 kWh', '2024-02-10', 'Compliant', Colors.green),
              _dataRow('PANEL-005', '42.1 kWh', '2024-02-25', 'Scheduled', Colors.grey),
            ],
          ),
        ),
      ],
    ),
  );

  DataRow _dataRow(String id, String gen, String date, String status, Color color) => DataRow(
    cells: [
      DataCell(Text(id, style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600))),
      DataCell(Text(gen, style: TextStyle(fontSize: 9.sp))),
      DataCell(Text(date, style: TextStyle(fontSize: 9.sp))),
      DataCell(Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
        decoration: BoxDecoration(
            color: color.withOpacity(.12), borderRadius: BorderRadius.circular(999)),
        child: Text(status, style: TextStyle(fontSize: 8.sp, color: color, fontWeight: FontWeight.w600)),
      )),
      DataCell(IconButton(
        icon: Icon(LucideIcons.eye, size: 14.sp),
        onPressed: () {},
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      )),
    ],
  );

  /* ============================================================
     5. STAKEHOLDER DASHBOARD
     ============================================================ */
  Widget _stakeholderDashboard() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Chip(label: Text('👥 Section 4', style: TextStyle(fontSize: 10.sp))),
        SizedBox(height: 8.h),
        Text('Stakeholder Dashboard',
            style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('Role-specific views tailored to different stakeholders with appropriate data access levels.',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        _roleSelector(),
        SizedBox(height: 16.h),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 1.sw < 600 ? 2 : 4,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
          childAspectRatio: 1.1,
          children: [
            _metricCard('Total Systems', '1,247', '+12 from last month', LucideIcons.building2, Colors.blue),
            _metricCard('Total Capacity', '47.3 MW', 'Across all installations', LucideIcons.zap, Colors.green),
            _metricCard('Total Revenue', '\$2.4M', 'This month', LucideIcons.dollarSign, Colors.purple),
            _metricCard('Active Alerts', '12', 'Require attention', LucideIcons.triangleAlert, Colors.orange),
          ],
        ),
      ],
    ),
  );

  Widget _roleSelector() => Container(
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6.r)),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(LucideIcons.shield, size: 16.sp, color: primaryBg),
        SizedBox(width: 6.w),
        Text('Admin - Full Ledger Access', style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500)),
        SizedBox(width: 4.w),
        Icon(LucideIcons.chevronDown, size: 14.sp, color: Colors.black54),
      ],
    ),
  );

  Widget _metricCard(String title, String value, String footer, IconData icon, Color accent) => Container(
    padding: EdgeInsets.all(12.w),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(left: BorderSide(width: 4.w, color: accent)),
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 4)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600)),
            Icon(icon, color: accent, size: 16.sp),
          ],
        ),
        Text(value, style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w700)),
        Text(footer, style: TextStyle(fontSize: 9.sp, color: Colors.black54)),
      ],
    ),
  );

  /* ============================================================
     6. DIGEST
     ============================================================ */
  Widget _digest() => Container(
    color: Colors.grey.shade50,
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Chip(label: Text('📅 Section 5', style: TextStyle(fontSize: 10.sp))),
        SizedBox(height: 8.h),
        Text('Monthly & Yearly Digest',
            style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('Comprehensive summaries with key metrics, AI alerts, and sustainability scores delivered to your inbox.',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 1.sw < 600 ? 1 : 2,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
          childAspectRatio: 1.1,
          children: [
            _digestLeft(),
            _digestRight(),
          ],
        ),
      ],
    ),
  );

  Widget _digestLeft() => Column(
    children: [
      Row(
        children: [
          Expanded(child: _kpiCard('Monthly Bill', '\$45.32', 'Net energy cost', LucideIcons.dollarSign, Colors.blue)),
          SizedBox(width: 8.w),
          Expanded(child: _kpiCard('AI Alerts', '3', 'This month', LucideIcons.triangleAlert, Colors.orange)),
          SizedBox(width: 8.w),
          Expanded(child: _kpiCard('Sustainability', '94/100', 'Environmental score', LucideIcons.leaf, Colors.green)),
        ],
      ),
      SizedBox(height: 12.h),
      _balanceCard(),
    ],
  );

  Widget _digestRight() => Column(
    children: [
      _emailOptions(),
      SizedBox(height: 12.h),
      _scheduleBtn(),
    ],
  );

  Widget _emailOptions() => Container(
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 6)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(LucideIcons.mail, color: primaryBg, size: 18.sp),
            SizedBox(width: 6.w),
            Text('Email Digest Options', style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(height: 8.h),
        Text('Digest Frequency', style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500)),
        SizedBox(height: 4.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(4.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Monthly Digest', style: TextStyle(fontSize: 10.sp)),
              Icon(LucideIcons.chevronDown, size: 12.sp, color: Colors.black54),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        _emailBtn(LucideIcons.mail, 'Email Digest to Self'),
        SizedBox(height: 6.h),
        _emailBtn(LucideIcons.users, 'Email Digest to Team'),
      ],
    ),
  );

  Widget _emailBtn(IconData icon, String label) => OutlinedButton.icon(
    onPressed: () {},
    icon: Icon(icon, size: 14.sp),
    label: Text(label, style: TextStyle(fontSize: 10.sp)),
    style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h)),
  );

  Widget _scheduleBtn() => Container(
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 6)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(LucideIcons.arrowRight, size: 14.sp),
          label: Text('Schedule Regular Digest', style: TextStyle(fontSize: 10.sp)),
          style: ElevatedButton.styleFrom(
              backgroundColor: primaryBg, foregroundColor: Colors.white, minimumSize: Size(double.infinity, 36.h)),
        ),
        SizedBox(height: 8.h),
        ...[
          '• Monthly digest includes performance summary and alerts',
          '• Quarterly digest includes detailed financial analysis',
          '• Yearly digest includes comprehensive sustainability report'
        ].map((e) => Text(e, style: TextStyle(fontSize: 8.sp, color: Colors.black54))).toList(),
      ],
    ),
  );

  /* ============================================================
     7. FOOTER
     ============================================================ */
  Widget _footer() => Container(
    width: double.infinity,
    color: primaryBg,
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
    child: Text('© 2024 Suncube AI – All rights reserved',
        textAlign: TextAlign.center, style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: 8.sp)),
  );

  /* ============================================================
     DATA
     ============================================================ */
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