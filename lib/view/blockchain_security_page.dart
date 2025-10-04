import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Flutter equivalent of the supplied HTML/CSS/JS page.
/// Fully responsive via flutter_screenutil.
class BlockchainSecurityPage extends StatelessWidget {
  BlockchainSecurityPage({super.key});

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
            _immutableChain(),
            _decentralisedFlow(),
            _auditTrail(),
            _smartContracts(),
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
          child: Text('Our blockchain-based energy tracking system ensures every transaction is immutable, transparent, and secure.',
              style: TextStyle(color: Colors.white, fontSize: 10.sp)),
        ),
        SizedBox(height: 20.h),
        Text('Every Watt Logged.\nEvery Transaction Secured.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 28.sp, fontWeight: FontWeight.w800, color: Colors.white, height: 1.2)),
        SizedBox(height: 12.h),
        Text('We showcase how blockchain-inspired ledgers keep your energy data tamper-proof, even in a simulated environment.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: Colors.green[50], height: 1.3)),
        SizedBox(height: 24.h),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(LucideIcons.arrowRight, size: 16.sp),
          label: Text('Explore Blockchain Demo', style: TextStyle(fontSize: 12.sp)),
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
     3. IMMUTABLE RECORD CHAIN
     ============================================================ */
  Widget _immutableChain() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Text('🔗 Immutable Record Chain',
            style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('Live view of energy transaction blocks',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 1.sw < 600 ? 1 : 3,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
          childAspectRatio: 1.3,
          children: [
            _chainCard('Panel Generation Blocks', 'Real-time solar panel output recorded as immutable blocks',
                LucideIcons.sun, solarY, 'Live Data'),
            _chainCard('Maintenance Actions', 'All system maintenance logged with timestamps and verification',
                LucideIcons.settings, gridB, 'Audit Trail'),
            _chainCard('Payment Settlements', 'Automated payment processing with smart contract execution',
                LucideIcons.dollarSign, ecoG, 'Auto-Settle'),
          ],
        ),
        SizedBox(height: 20.h),
        _explorer(),
      ],
    ),
  );

  Widget _chainCard(String title, String desc, IconData icon, Color accent, String tag) => Container(
    padding: EdgeInsets.all(16.w),
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
            Text(title, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600)),
            Icon(icon, color: accent, size: 18.sp),
          ],
        ),
        Text(desc, style: TextStyle(fontSize: 10.sp, color: Colors.black54)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          decoration: BoxDecoration(
              color: accent.withOpacity(.12), borderRadius: BorderRadius.circular(999)),
          child: Text(tag, style: TextStyle(fontSize: 9.sp, color: accent, fontWeight: FontWeight.w600)),
        ),
      ],
    ),
  );

  Widget _explorer() => Container(
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 6)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Blockchain Explorer', style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w600)),
        SizedBox(height: 12.h),
        _blockRow('BLK-001', 'Panel Generation', '2024-01-15 14:30:22', 'Generated 2.4 kWh', '0x7a8b9c...', true),
        SizedBox(height: 10.h),
        _blockRow('BLK-002', 'Maintenance', '2024-01-15 15:45:11', 'Battery health check completed', '0x1d2e3f...', true),
        SizedBox(height: 10.h),
        _blockRow('BLK-003', 'Payment', '2024-01-15 16:20:33', 'Grid sale: \$12.50', '0x4g5h6i...', false),
      ],
    ),
  );

  Widget _blockRow(String id, String type, String time, String detail, String hash, bool verified) => Container(
    padding: EdgeInsets.all(12.w),
    decoration: BoxDecoration(
        color: Colors.grey.shade50, borderRadius: BorderRadius.circular(6.r)),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
              decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(4.r)),
              child: Text(id, style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600)),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(type, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600)),
                  Text(detail, style: TextStyle(fontSize: 9.sp, color: Colors.black54)),
                  SizedBox(height: 4.h),
                  Text(hash, style: TextStyle(fontSize: 8.sp, color: Colors.grey)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
              decoration: BoxDecoration(
                  color: verified ? ecoG.withOpacity(.12) : Colors.orange.withOpacity(.12),
                  borderRadius: BorderRadius.circular(999)),
              child: Text(verified ? 'verified' : 'pending',
                  style: TextStyle(fontSize: 8.sp, color: verified ? ecoG : Colors.orange, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ],
    ),
  );

  /* ============================================================
     4. DECENTRALISED FLOW
     ============================================================ */
  Widget _decentralisedFlow() => Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Text('🔄 Decentralised Ledger Flow',
            style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('Understand how decentralisation ensures no single point of failure.',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        _benefitCards(),
        SizedBox(height: 24.h),
        _roles(),
        SizedBox(height: 24.h),
        _tokenFlow(),
      ],
    ),
  );

  Widget _benefitCards() => Column(
    children: [
      _benefitRow(LucideIcons.shield, 'No Single Point of Failure',
          'Energy data is distributed across multiple nodes, ensuring system resilience', Colors.green),
      SizedBox(height: 12.h),
      _benefitRow(LucideIcons.lock, 'Enhanced Security',
          'Multiple verification points prevent unauthorized data manipulation', Colors.blue),
      SizedBox(height: 12.h),
      _benefitRow(LucideIcons.eye, 'Transparency',
          'All participants can verify transactions while maintaining privacy', Colors.purple),
    ],
  );

  Widget _benefitRow(IconData icon, String title, String desc, Color color) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(icon, color: color, size: 18.sp),
      SizedBox(width: 8.w),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600)),
            Text(desc, style: TextStyle(fontSize: 10.sp, color: Colors.black54)),
          ],
        ),
      ),
    ],
  );

  Widget _roles() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('User Roles & Permissions', style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w600)),
      SizedBox(height: 12.h),
      _roleCard('Admin', 'System configuration and user management', Colors.red,
          ['Read', 'Write', 'Admin']),
      SizedBox(height: 10.h),
      _roleCard('User', 'View own energy data and transactions', Colors.blue,
          ['Read', 'Limited Write']),
      SizedBox(height: 10.h),
      _roleCard('Validator', 'Verify and approve transactions', Colors.green,
          ['Read', 'Verify']),
    ],
  );

  Widget _roleCard(String title, String desc, Color color, List<String> tags) => Container(
    padding: EdgeInsets.all(12.w),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(left: BorderSide(width: 4.w, color: color)),
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 4)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.person, color: color, size: 16.sp),
            SizedBox(width: 6.w),
            Text(title, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(height: 4.h),
        Text(desc, style: TextStyle(fontSize: 10.sp, color: Colors.black54)),
        SizedBox(height: 6.h),
        Wrap(
          spacing: 6.w,
          children: tags
              .map((e) => Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            decoration: BoxDecoration(
                color: Colors.grey.shade200, borderRadius: BorderRadius.circular(999)),
            child: Text(e, style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w500)),
          ))
              .toList(),
        ),
      ],
    ),
  );

  Widget _tokenFlow() => Column(
    children: [
      Text('How Energy Tokens Get Verified',
          style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w600)),
      SizedBox(height: 12.h),
      Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Color(0xFFDBEAFE), Color(0xFFD1FAE5)]),
            borderRadius: BorderRadius.circular(8.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _step('1', 'Energy\nGenerated', Colors.blue),
            _connector(),
            _step('2', 'Token\nCreated', Colors.green),
            _connector(),
            _step('3', 'Validators\nCheck', Colors.purple),
            _connector(),
            _step('4', 'Block\nAdded', Colors.orange),
          ],
        ),
      ),
    ],
  );

  Widget _step(String num, String label, Color color) => Column(
    children: [
      Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Center(
            child: Text(num,
                style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w700))),
      ),
      SizedBox(height: 6.h),
      Text(label,
          textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500)),
    ],
  );

  Widget _connector() => Container(width: 20.w, height: 2.h, color: Colors.grey.shade300);

  /* ============================================================
     5. AUDIT TRAIL
     ============================================================ */
  Widget _auditTrail() => Container(
    color: Colors.grey.shade50,
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Text('🔎 Tamper-Proof Audit Trail',
            style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('Every action is time-stamped and cryptographically secured.',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        _logs(),
        SizedBox(height: 20.h),
        _editor(),
      ],
    ),
  );

  Widget _logs() => Column(
    children: [
      _logCard('Maintenance Log', [
        ('Battery health check', '2024-01-15 15:45:11'),
        ('Panel cleaning', '2024-01-14 09:20:33'),
        ('Inverter inspection', '2024-01-13 11:15:42'),
      ], Colors.yellow),
      SizedBox(height: 12.h),
      _logCard('Battery Discharge', [
        ('Peak discharge: 5.2 kWh', '2024-01-15 18:30:15'),
        ('Grid backup: 2.1 kWh', '2024-01-15 19:45:22'),
      ], Colors.green),
      SizedBox(height: 12.h),
      _logCard('Load Changes', [
        ('AC unit activated', '2024-01-15 16:20:08'),
        ('EV charging started', '2024-01-15 17:10:45'),
      ], Colors.blue),
    ],
  );

  Widget _logCard(String title, List<(String, String)> rows, Color accent) => Container(
    padding: EdgeInsets.all(12.w),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(left: BorderSide(width: 4.w, color: accent)),
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 4)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.list, color: accent, size: 16.sp),
            SizedBox(width: 6.w),
            Text(title, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(height: 8.h),
        ...rows
            .map((e) => Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(e.$1, style: TextStyle(fontSize: 10.sp)),
              Text(e.$2, style: TextStyle(fontSize: 9.sp, color: Colors.black54)),
            ],
          ),
        ))
            .toList(),
      ],
    ),
  );

  Widget _editor() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Interactive: Try to Edit a Block',
          style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w600)),
      SizedBox(height: 10.h),
      Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.r),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 4)]),
        child: Column(
          children: [
            _inputField('Block Data', 'Generated 2.4 kWh'),
            SizedBox(height: 10.h),
            _inputField('Timestamp', '2024-01-15 14:30:22'),
            SizedBox(height: 12.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                child: Text('Try to Edit Block', style: TextStyle(fontSize: 11.sp)),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 12.h),
      Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
            color: Colors.blue.shade50, borderRadius: BorderRadius.circular(6.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Why Can\'t You Edit?',
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600, color: Colors.blue.shade900)),
            SizedBox(height: 4.h),
            ...[
              '• Each block contains a cryptographic hash',
              '• Changing data breaks the chain integrity',
              '• Multiple validators must approve changes',
              '• Historical data remains permanently secure'
            ].map((e) => Text(e, style: TextStyle(fontSize: 9.sp, color: Colors.blue.shade800))).toList(),
          ],
        ),
      ),
    ],
  );

  Widget _inputField(String label, String value) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500)),
      SizedBox(height: 4.h),
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(color: Colors.grey.shade300)),
        child: Text(value, style: TextStyle(fontSize: 10.sp, fontFamily: 'RobotoMono')),
      ),
    ],
  );

  /* ============================================================
     6. SMART CONTRACTS
     ============================================================ */
  Widget _smartContracts() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
    child: Column(
      children: [
        Text('💡 Smart Contract Simulation',
            style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 6.h),
        Text('Explore how smart contracts automate energy transactions, payments, and carbon credit settlements.',
            style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        SizedBox(height: 20.h),
        _tabSection(),
      ],
    ),
  );

  Widget _tabSection() => Column(
    children: [
      /* ---------- tab bar ---------- */
      Container(
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
            color: Colors.grey.shade200, borderRadius: BorderRadius.circular(8.r)),
        child: Row(
          children: [
            _tab('Grid Sales', true),
            _tab('Carbon Credits', false),
            _tab('Usage Thresholds', false),
          ],
        ),
      ),
      SizedBox(height: 16.h),
      /* ---------- grid sales content ---------- */
      _gridSalesContent(),
      SizedBox(height: 20.h),
      _benefitGrid(),
    ],
  );

  Widget _tab(String label, bool active) => Expanded(
    child: GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
            color: active ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(6.r),
            boxShadow: active
                ? [BoxShadow(color: Colors.black.withOpacity(.08), blurRadius: 4)]
                : null),
        child: Text(label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600)),
      ),
    ),
  );

  Widget _gridSalesContent() => Container(
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 4)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(LucideIcons.dollarSign, color: ecoG, size: 18.sp),
            SizedBox(width: 6.w),
            Text('Grid Sales Smart Contract',
                style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(height: 6.h),
        Text('Automatically sell excess energy to the grid when generation exceeds consumption',
            style: TextStyle(fontSize: 10.sp, color: Colors.black54)),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(child: _readonlyField('Current Generation', '3.2 kWh')),
            SizedBox(width: 8.w),
            Expanded(child: _readonlyField('Current Consumption', '1.8 kWh')),
          ],
        ),
        SizedBox(height: 10.h),
        _readonlyField('Excess Energy Available', '1.4 kWh', bg: Colors.green.shade50, border: Colors.green.shade300),
        SizedBox(height: 10.h),
        Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
              color: Colors.green.shade50, borderRadius: BorderRadius.circular(6.r)),
          child: Row(
            children: [
              Icon(LucideIcons.circleCheck, color: Colors.green.shade700, size: 14.sp),
              SizedBox(width: 6.w),
              Expanded(
                  child: Text('Contract will execute: Sell 1.4 kWh to grid at \$0.12/kWh',
                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500, color: Colors.green.shade800))),
            ],
          ),
        ),
      ],
    ),
  );

  Widget _readonlyField(String label, String value, {Color? bg, Color? border}) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500)),
      SizedBox(height: 4.h),
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        decoration: BoxDecoration(
            color: bg ?? Colors.grey.shade50,
            border: Border.all(color: border ?? Colors.grey.shade300),
            borderRadius: BorderRadius.circular(4.r)),
        child: Text(value, style: TextStyle(fontSize: 10.sp)),
      ),
    ],
  );

  Widget _benefitGrid() => Container(
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xFFDBEAFE), Color(0xFFE0E7FF)]),
        borderRadius: BorderRadius.circular(8.r)),
    child: Column(
      children: [
        Text('Smart Contract Benefits', style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w600)),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(child: _benefitTile(LucideIcons.zap, 'Automated Execution', 'No manual intervention', Colors.blue)),
            SizedBox(width: 12.w),
            Expanded(child: _benefitTile(LucideIcons.shield, 'Tamper-Proof', 'Immutable contract terms', Colors.green)),
            SizedBox(width: 12.w),
            Expanded(child: _benefitTile(LucideIcons.dollarSign, 'Cost Efficient', 'Reduced transaction costs', Colors.purple)),
          ],
        ),
      ],
    ),
  );

  Widget _benefitTile(IconData icon, String title, String desc, Color color) => Column(
    children: [
      Container(
        width: 32.w,
        height: 32.h,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Icon(icon, color: Colors.white, size: 16.sp),
      ),
      SizedBox(height: 6.h),
      Text(title, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600)),
      Text(desc, textAlign: TextAlign.center, style: TextStyle(fontSize: 9.sp, color: Colors.black54)),
    ],
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