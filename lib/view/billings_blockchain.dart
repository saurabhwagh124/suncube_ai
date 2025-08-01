import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';

class BillingPage extends StatefulWidget {
  const BillingPage({super.key});

  @override
  State<BillingPage> createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF060C09),
      body: Container(
        margin: EdgeInsets.only(top: 84.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060C09), Color(0xFF1A231F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _hero(context),
              SizedBox(height: 40.h),
              _sectionTitle('Performance Reports'),
              SizedBox(height: 16.h),
              _kpiCards(),
              SizedBox(height: 24.h),
              _energyBalanceCard(),
              SizedBox(height: 24.h),
              _exportReportsCard(),
              SizedBox(height: 40.h),
              _sectionTitle('Regulatory Compliance Log'),
              SizedBox(height: 16.h),
              _complianceTable(),
              SizedBox(height: 40.h),
              _sectionTitle('Stakeholder Dashboard'),
              SizedBox(height: 16.h),
              _roleSelector(),
              SizedBox(height: 16.h),
              _gridMetrics(),
              SizedBox(height: 40.h),
              _sectionTitle('Monthly & Yearly Digest'),
              SizedBox(height: 16.h),
              _digestCards(),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }

  // --------------------------------------------------
  // HERO
  // --------------------------------------------------
  Widget _hero(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 24.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.themeGreen.withOpacity(0.3),
            const Color(0xFF106B43).withOpacity(0.2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.05),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              'Our transparent billing system shows you exactly how we calculate your energy costs and credits.',
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Data That Tells the Truth',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            'Transparency isn\'t an option — it\'s a feature. Preview how clean reporting builds trust in every solar interaction.',
            style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(LucideIcons.arrowRight, size: 18),
            label: const Text('View Report Gallery'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeGreen,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // --------------------------------------------------
  // KPI CARDS
  // --------------------------------------------------
  Widget _kpiCards() {
    final items = [
      ('Efficiency', '94.2%', LucideIcons.trendingUp, AppColors.themeGreen),
      ('Downtime', '0.8%', LucideIcons.clock, Colors.orange),
      ('Net Energy', '355.2 kWh', LucideIcons.zap, Colors.purple),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:
          items
              .map(
                (e) => Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: _glassCard(e.$1, e.$2, e.$3, e.$4),
                  ),
                ),
              )
              .toList(),
    );
  }

  // --------------------------------------------------
  // ENERGY BALANCE CARD
  // --------------------------------------------------
  Widget _energyBalanceCard() {
    return _glassCardWithTitle(
      title: 'Energy Balance',
      icon: LucideIcons.chartColumn,
      child: Column(
        children: [
          _balanceRow('Energy Earned', '1,247.5 kWh', AppColors.themeGreen),
          _balanceRow('Energy Consumed', '892.3 kWh', Colors.white70),
          const Divider(color: Colors.white24),
          _balanceRow(
            'Net Earnings',
            '+355.2 kWh',
            AppColors.themeGreen,
            bold: true,
          ),
        ],
      ),
    );
  }

  // --------------------------------------------------
  // EXPORT REPORTS CARD
  // --------------------------------------------------
  Widget _exportReportsCard() {
    return _glassCardWithTitle(
      title: 'Export Reports',
      icon: LucideIcons.download,
      child: Column(
        children:
            ['PDF', 'XLS', 'CSV']
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(LucideIcons.fileText, size: 18),
                        label: Text(
                          'Sample $e Report',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.white.withOpacity(0.3),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }

  // --------------------------------------------------
  // COMPLIANCE TABLE
  // --------------------------------------------------
  Widget _complianceTable() {
    final data = [
      ('PANEL-001', '42.6 kWh', '2024-02-15', 'Compliant'),
      ('PANEL-002', '41.8 kWh', '2024-02-15', 'Compliant'),
      ('PANEL-003', '43.2 kWh', '2024-02-20', 'Pending'),
      ('PANEL-004', '40.9 kWh', '2024-02-10', 'Compliant'),
      ('PANEL-005', '42.1 kWh', '2024-02-25', 'Scheduled'),
    ];
    return _glassCardWithTitle(
      title: 'Compliance Checklist',
      icon: LucideIcons.shield,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 24.w,
              headingRowColor: MaterialStateProperty.all(
                Colors.white.withOpacity(0.1),
              ),
              dataRowColor: MaterialStateProperty.all(Colors.transparent),
              columns: const [
                DataColumn(
                  label: Text(
                    'Panel ID',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Generation',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Maintenance',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                DataColumn(
                  label: Text('Status', style: TextStyle(color: Colors.white)),
                ),
                DataColumn(
                  label: Text('ffff', style: TextStyle(color: Colors.white)),
                ),
              ],
              rows:
                  data
                      .map(
                        (e) => DataRow(
                          cells: [
                            DataCell(
                              Text(e.$1, style: TextStyle(color: Colors.white)),
                            ),
                            DataCell(
                              Text(e.$2, style: TextStyle(color: Colors.white)),
                            ),
                            DataCell(
                              Text(e.$3, style: TextStyle(color: Colors.white)),
                            ),
                            DataCell(_statusChip(e.$4)),
                            DataCell(
                              IconButton(
                                icon: const Icon(
                                  LucideIcons.eye,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
            ),
          ),
          SizedBox(height: 12.h),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                LucideIcons.fileText,
                size: 18,
                color: Colors.white,
              ),
              label: const Text(
                'View Regulatory Report',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.themeGreen.withOpacity(0.7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _statusChip(String label) {
    Color bgColor;
    Color textColor = Colors.white;
    switch (label) {
      case 'Compliant':
        bgColor = AppColors.themeGreen.withOpacity(0.7);
        break;
      case 'Pending':
        bgColor = Colors.orange.withOpacity(0.7);
        break;
      case 'Scheduled':
        bgColor = Colors.blue.withOpacity(0.7);
        break;
      default:
        bgColor = Colors.grey.withOpacity(0.7);
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(label, style: TextStyle(fontSize: 12.sp, color: textColor)),
    );
  }

  // --------------------------------------------------
  // ROLE SELECTOR + GRID METRICS
  // --------------------------------------------------
  Widget _roleSelector() {
    return SizedBox(
      width: 200.w,
      child: DropdownButtonFormField<String>(
        value: 'Grid Operator - Load Response',
        items: const [
          DropdownMenuItem(
            value: 'Grid Operator - Load Response',
            child: Text('Grid Operator', style: TextStyle(color: Colors.white)),
          ),
          DropdownMenuItem(
            value: 'Asset Manager',
            child: Text('Asset Manager', style: TextStyle(color: Colors.white)),
          ),
          DropdownMenuItem(
            value: 'Investor',
            child: Text('Investor', style: TextStyle(color: Colors.white)),
          ),
        ],
        onChanged: (_) {},
        decoration: InputDecoration(
          prefixIcon: const Icon(
            LucideIcons.settings,
            size: 18,
            color: Colors.white,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
          contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          filled: true,
          fillColor: Colors.white.withOpacity(0.1),
        ),
        dropdownColor: const Color(0xFF1A231F),
        style: TextStyle(color: Colors.white, fontSize: 14.sp),
      ),
    );
  }

  Widget _gridMetrics() {
    final metrics = [
      ('Grid Load', '85%', LucideIcons.activity, Colors.blue),
      ('Response Time', '2.3 s', LucideIcons.clock, Colors.orange),
      ('Peak Demand', '1.2 GW', LucideIcons.trendingUp, Colors.purple),
      ('Stability', '98.5%', LucideIcons.check, AppColors.themeGreen),
      // ('Load', '85%', LucideIcons.activity, Colors.blue),
      // ('Time', '1.1 s', LucideIcons.clock, Colors.orange),
      // ('Demand', '1.2 GW', LucideIcons.trendingUp, Colors.purple),
      // ('Stability', '98.5%', LucideIcons.check, AppColors.themeGreen),
    ];
    List<Widget> rows = [];

    for (int i = 0; i < metrics.length; i += 2) {
      rows.add(
        Row(
          children: [
            for (int j = i; j < i + 2 && j < metrics.length; j++)
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                  child: _glassCard(
                    metrics[j].$1,
                    metrics[j].$2,
                    metrics[j].$3,
                    metrics[j].$4,
                  ),
                ),
              ),
          ],
        ),
      );
    }

    return Column(children: rows);
  }

  // --------------------------------------------------
  // DIGEST CARDS
  // --------------------------------------------------
  Widget _digestCards() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              _glassCard(
                'Monthly Bill',
                '\$45.32',
                LucideIcons.dollarSign,
                Colors.blue,
              ),
              _glassCard(
                'AI Alerts',
                '3',
                LucideIcons.triangleAlert,
                Colors.orange,
              ),
              _glassCard(
                'Sustainability',
                '94/100',
                LucideIcons.leaf,
                AppColors.themeGreen,
              ),
            ],
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          flex: 3,
          child: _glassCardWithTitle(
            title: 'Email Digest',
            icon: LucideIcons.mail,
            child: Column(
              // children: [
              //   _balanceRow(
              //     'Energy Generated',
              //     '1,247 kWh',
              //     AppColors.themeGreen,
              //   ),
              //   _balanceRow('Carbon Offset', '0.8 tons CO₂', Colors.white70),
              //   _balanceRow('System Efficiency', '94.2%', Colors.blue),
              //   _balanceRow('Uptime', '99.2%', Colors.white70),
              //   const Divider(color: Colors.white24),
              //   ElevatedButton.icon(
              //     onPressed: () {},
              //     icon: const Icon(
              //       LucideIcons.arrowRight,
              //       size: 18,
              //       color: Colors.white,
              //     ),
              //     label: const Text(
              //       'Schedule Regular Digest',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: AppColors.themeGreen.withOpacity(0.7),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(8.r),
              //       ),
              //     ),
              //   ),
              // ],
              children: [
                _balanceRow('Generated', '1,247 kWh', AppColors.themeGreen),
                _balanceRow('Offset', '0.8 tons CO₂', Colors.white70),
                _balanceRow('Efficiency', '94.2%', Colors.blue),
                _balanceRow('Uptime', '99.2%', Colors.white70),
                const Divider(color: Colors.white24),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    LucideIcons.arrowRight,
                    size: 18,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Schedule Regular Digest',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.themeGreen.withOpacity(0.7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // --------------------------------------------------
  // HELPERS
  // --------------------------------------------------
  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _glassCard(String label, String value, IconData icon, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.05),
            Colors.white.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 12.sp, color: Colors.white70),
              ),
              Icon(icon, color: color, size: 16.sp),
            ],
          ),
          SizedBox(height: 6.h),
          Text(
            value,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _glassCardWithTitle({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.05),
            Colors.white.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.themeGreen, size: 22.sp),
              SizedBox(width: 8.w),
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          child,
        ],
      ),
    );
  }

  Widget _balanceRow(
    String label,
    String value,
    Color color, {
    bool bold = false,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: bold ? FontWeight.w600 : FontWeight.normal,
              color: Colors.white70,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
