// lib/view/pages/about/transparency_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/common_app_%20bar.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class TransparencyPage extends StatelessWidget {
  const TransparencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LiquidBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CommonAppBar(title: 'Transparency'),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.only(top:20.h),
          child: Column(
            children: [
              _hero(),
              SizedBox(height: 50.h),
              _performanceReports(),
              SizedBox(height: 40.h),
              _complianceSection(),
              SizedBox(height: 40.h),
              _stakeholderDashboard(),
              SizedBox(height: 40.h),
              _digestSection(),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _hero() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: GlassContainer(
        opacity: 0.13,
        borderRadius: BorderRadius.circular(32.r),
        padding: EdgeInsets.all(36.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.themeGreen.withOpacity(0.4), AppColors.themeGreen.withOpacity(0.15)],
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(LucideIcons.shieldCheck, size: 60.sp, color: AppColors.themeGreen),
            ),
            SizedBox(height: 28.h),
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(colors: [Colors.white, AppColors.themeGreen.withOpacity(0.95)]).createShader(bounds),
              child: Text(
                'Data That Tells the Truth',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(fontSize: 36.sp, fontWeight: FontWeight.w900, color: Colors.white, height: 1.15),
              ),
            ),
            SizedBox(height: 18.h),
            Text(
              'Transparency isn’t an option — it’s a feature. Every kWh, every transaction, every report — visible, verifiable, and trusted.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70, height: 1.7),
            ),
            SizedBox(height: 36.h),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(LucideIcons.arrowRight, size: 22.sp),
              label: Text('Explore Report Gallery', style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16.sp)),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.themeGreen,
                padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 20.h),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // FIXED: Compact, safe KPI cards — no overflow ever
  Widget _performanceReports() => _section(
        title: 'Performance Reports',
        children: [
          _kpiCardCompact('Efficiency', '94.2%', 'System Performance', LucideIcons.trendingUp, AppColors.themeGreen),
          _kpiCardCompact('Downtime', '0.8%', 'Last 30 Days', LucideIcons.clock, const Color(0xFFF59E0B)),
          _kpiCardCompact('Net Energy', '355.2 kWh', 'This Month', LucideIcons.zap, const Color(0xFF8B5CF6)),
          SizedBox(height: 28.h),
          _balanceCard(),
          SizedBox(height: 28.h),
          _exportCard(),
        ],
      );

  Widget _kpiCardCompact(String title, String value, String subtitle, IconData icon, Color color) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: GlassContainer(
        opacity: 0.11,
        borderRadius: BorderRadius.circular(24.r),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [color.withOpacity(0.3), color.withOpacity(0.08)]),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(icon, color: color, size: 28.sp),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    value,
                    style: GoogleFonts.inter(fontSize: 28.sp, fontWeight: FontWeight.w800, color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    title,
                    style: GoogleFonts.inter(fontSize: 15.sp, fontWeight: FontWeight.w600, color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    subtitle,
                    style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white60),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _balanceCard() => GlassContainer(
        opacity: 0.11,
        borderRadius: BorderRadius.circular(28.r),
        padding: EdgeInsets.all(28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _cardHeader(LucideIcons.chartColumnIncreasing, 'Energy Balance'),
            SizedBox(height: 24.h),
            _balanceRow('Energy Generated', '1,247.5 kWh', AppColors.themeGreen),
            _balanceRow('Energy Consumed', '892.3 kWh', Colors.white70),
            Divider(color: Colors.white.withOpacity(0.15), height: 40.h),
            _balanceRow('Net Earnings', '+355.2 kWh', AppColors.themeGreen, bold: true),
          ],
        ),
      );

  Widget _exportCard() => GlassContainer(
        opacity: 0.11,
        borderRadius: BorderRadius.circular(28.r),
        padding: EdgeInsets.all(28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _cardHeader(LucideIcons.download, 'Export Reports'),
            SizedBox(height: 24.h),
            ...['PDF', 'XLS', 'CSV'].map((f) => Padding(
                  padding: EdgeInsets.only(bottom: 14.h),
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(LucideIcons.fileDown, size: 20.sp),
                    label: Text('Download $f Report', style: GoogleFonts.inter(fontSize: 15.sp)),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white70,
                      side: BorderSide(color: Colors.white.withOpacity(0.25)),
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
                    ),
                  ),
                )),
          ],
        ),
      );

  Widget _complianceSection() => _section(
        title: 'Regulatory Compliance',
        child: GlassContainer(
          opacity: 0.11,
          borderRadius: BorderRadius.circular(28.r),
          padding: EdgeInsets.all(28.w),
          child: Column(
            children: [
              _cardHeader(LucideIcons.shieldCheck, 'Compliance Status'),
              SizedBox(height: 20.h),
              ...[
                ('PANEL-001', '42.6 kWh', '2024-02-15', 'Compliant', AppColors.themeGreen),
                ('PANEL-002', '41.8 kWh', '2024-02-15', 'Compliant', AppColors.themeGreen),
                ('PANEL-003', '43.2 kWh', '2024-02-20', 'Pending', const Color(0xFFF59E0B)),
              ].map((e) => _complianceItem(e.$1, e.$2, e.$3, e.$4, e.$5)),
              SizedBox(height: 24.h),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(LucideIcons.fileCheck2, size: 20.sp),
                label: Text('View Full Audit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.themeGreen,
                  padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _complianceItem(String id, String gen, String date, String status, Color color) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: color.withOpacity(0.35)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(id, style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w800, color: Colors.white)),
                SizedBox(height: 6.h),
                Text('Gen: $gen • $date', style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white60)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            decoration: BoxDecoration(color: color.withOpacity(0.2), borderRadius: BorderRadius.circular(14.r)),
            child: Text(status, style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w700, color: color)),
          ),
        ],
      ),
    );
  }

  Widget _stakeholderDashboard() => _section(
        title: 'Stakeholder Dashboard',
        children: [
          _metricCard('Grid Load', '85%', LucideIcons.activity, const Color(0xFF3B82F6)),
          SizedBox(height: 16.h),
          _metricCard('Response Time', '2.3 s', LucideIcons.clock, const Color(0xFFF59E0B)),
        ],
      );

  Widget _metricCard(String title, String value, IconData icon, Color color) => GlassContainer(
        opacity: 0.11,
        borderRadius: BorderRadius.circular(24.r),
        padding: EdgeInsets.all(20.w),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(gradient: LinearGradient(colors: [color.withOpacity(0.3), color.withOpacity(0.1)]), borderRadius: BorderRadius.circular(16.r)),
              child: Icon(icon, color: color, size: 28.sp),
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value, style: GoogleFonts.inter(fontSize: 28.sp, fontWeight: FontWeight.w800, color: Colors.white)),
                Text(title, style: GoogleFonts.inter(fontSize: 15.sp, color: Colors.white70)),
              ],
            ),
          ],
        ),
      );

  Widget _digestSection() => _section(
        title: 'Monthly Digest',
        child: GlassContainer(
          opacity: 0.11,
          borderRadius: BorderRadius.circular(28.r),
          padding: EdgeInsets.all(28.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _cardHeader(LucideIcons.mailOpen, 'Email Digest Summary'),
              SizedBox(height: 24.h),
              _balanceRow('Energy Generated', '1,247 kWh', AppColors.themeGreen),
              _balanceRow('Carbon Offset', '0.8 tons CO₂', Colors.white70),
              _balanceRow('System Efficiency', '94.2%', const Color(0xFF3B82F6)),
              _balanceRow('Uptime', '99.2%', Colors.white70),
              SizedBox(height: 28.h),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(LucideIcons.calendarClock, size: 20.sp),
                  label: Text('Schedule Monthly Digest'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.themeGreen,
                    padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 18.h),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _section({required String title, Widget? child, List<Widget>? children}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.inter(fontSize: 26.sp, fontWeight: FontWeight.w900, color: Colors.white)),
          SizedBox(height: 24.h),
          ...(child != null ? [child] : children ?? []),
        ],
      ),
    );
  }

  Widget _cardHeader(IconData icon, String title) => Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [AppColors.themeGreen.withOpacity(0.35), AppColors.themeGreen.withOpacity(0.1)]),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Icon(icon, color: AppColors.themeGreen, size: 26.sp),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Text(title, style: GoogleFonts.inter(fontSize: 21.sp, fontWeight: FontWeight.w800, color: Colors.white)),
          ),
        ],
      );

  Widget _balanceRow(String label, String value, Color valueColor, {bool bold = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(label, style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70)),
          ),
          Expanded(
            flex: 2,
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: GoogleFonts.inter(fontSize: 17.sp, fontWeight: bold ? FontWeight.w800 : FontWeight.w600, color: valueColor),
            ),
          ),
        ],
      ),
    );
  }
}