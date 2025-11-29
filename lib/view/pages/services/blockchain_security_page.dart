// lib/view/pages/services/blockchain_security_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class BlockchainSecurityPage extends StatelessWidget {
  const BlockchainSecurityPage({super.key});

  // Perfect const data
  final List<Map<String, dynamic>> _blocks = const [
    const {
      'id': 'BLK-001',
      'type': 'Panel Generation',
      'time': '14:30',
      'detail': 'Generated 2.4 kWh',
      'hash': '0x7a8b9c...',
      'verified': true,
    },
    const {
      'id': 'BLK-002',
      'type': 'Maintenance',
      'time': '15:45',
      'detail': 'Battery health check',
      'hash': '0x1d2e3f...',
      'verified': true,
    },
    const {
      'id': 'BLK-003',
      'type': 'Payment',
      'time': '16:20',
      'detail': 'Grid sale: \$12.50',
      'hash': '0x4g5h6i...',
      'verified': false,
    },
  ];

  // New stunning flow steps
  final List<Map<String, dynamic>> _flowSteps = const [
    {'num': '1', 'label': 'Energy\nGenerated', 'color': Color(0xFF3B82F6)},
    {'num': '2', 'label': 'Token\nCreated', 'color': Color(0xFF10B981)},
    {'num': '3', 'label': 'Validators\nVerify', 'color': Color(0xFF8B5CF6)},
    {'num': '4', 'label': 'Block\nAdded', 'color': Color(0xFFF59E0B)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: GlassContainer(
          opacity: 0.18,
          blur: 16,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(28.r)),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Blockchain & Security',
              style: GoogleFonts.inter(fontWeight: FontWeight.w800, fontSize: 21.sp, color: Colors.white),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white, size: 22.sp),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ),
      body: LiquidBackground(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.only(top: kToolbarHeight + 50.h),
          child: Column(
            children: [
              _heroSection(),
              SizedBox(height: 60.h),
              _immutableChainSection(),
              SizedBox(height: 60.h),
              _decentralizedFlowSection(),
              SizedBox(height: 60.h),
              _auditTrailSection(),
              SizedBox(height: 60.h),
              _smartContractsSection(),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _heroSection() => _paddedGlass(
        child: Column(
          children: [
            _tag('Immutable • Transparent • Decentralized • Secure'),
            SizedBox(height: 28.h),
            Text('Every Watt Logged.\nEvery Transaction Secured.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(fontSize: 36.sp, fontWeight: FontWeight.w900, color: Colors.white, height: 1.15)),
            SizedBox(height: 16.h),
            Text(
              'Blockchain-inspired ledger ensures your solar energy data is tamper-proof, transparent, and trusted — forever.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70, height: 1.6),
            ),
            SizedBox(height: 36.h),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(LucideIcons.shieldCheck, size: 22.sp),
              label: Text('Explore Blockchain Demo', style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16.sp)),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.themeGreen,
                padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 20.h),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                elevation: 12,
                shadowColor: AppColors.themeGreen.withOpacity(0.6),
              ),
            ),
          ],
        ),
      );

  Widget _immutableChainSection() => _section(
        title: 'Immutable Record Chain',
        subtitle: 'Live view of energy transaction blocks',
        child: Column(
          children: [
            _chainCard('Panel Generation Blocks', 'Real-time solar output recorded as immutable blocks', LucideIcons.sun, const Color(0xFFF59E0B), 'Live Data'),
            _chainCard('Maintenance Actions', 'All system maintenance logged with timestamps and verification', LucideIcons.settings, const Color(0xFF3B82F6), 'Audit Trail'),
            _chainCard('Payment Settlements', 'Automated payment processing with smart contract execution', LucideIcons.dollarSign, const Color(0xFF10B981), 'Auto-Settle'),
            SizedBox(height: 28.h),
            _blockExplorer(),
          ],
        ),
      );

  Widget _chainCard(String title, String desc, IconData icon, Color color, String tag) => Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: GlassContainer(
          opacity: 0.11,
          borderRadius: BorderRadius.circular(28.r),
          padding: EdgeInsets.all(20.w),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(14.w),
                decoration: BoxDecoration(color: color.withOpacity(0.2), borderRadius: BorderRadius.circular(18.r)),
                child: Icon(icon, color: color, size: 28.sp),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: GoogleFonts.inter(fontSize: 17.sp, fontWeight: FontWeight.w800, color: Colors.white)),
                    SizedBox(height: 4.h),
                    Text(desc, style: GoogleFonts.inter(fontSize: 13.sp, color: Colors.white70, height: 1.4), maxLines: 2, overflow: TextOverflow.ellipsis),
                    SizedBox(height: 10.h),
                    _tag(tag, color: color),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _blockExplorer() => GlassContainer(
        opacity: 0.11,
        borderRadius: BorderRadius.circular(28.r),
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(LucideIcons.search, color: AppColors.themeGreen, size: 24.sp),
                SizedBox(width: 12.w),
                Text('Blockchain Explorer', style: GoogleFonts.inter(fontSize: 19.sp, fontWeight: FontWeight.w800, color: Colors.white)),
              ],
            ),
            SizedBox(height: 20.h),
            ..._blocks.map((b) => Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: _blockRow(
                    b['id'] as String,
                    b['type'] as String,
                    b['time'] as String,
                    b['detail'] as String,
                    b['hash'] as String,
                    b['verified'] as bool,
                  ),
                )),
          ],
        ),
      );

  Widget _blockRow(String id, String type, String time, String detail, String hash, bool verified) => Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.06),
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Colors.white.withOpacity(0.15)),
        ),
        child: Row(
          children: [
            _badge(id, AppColors.themeGreen),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(type, style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w700, color: Colors.white)),
                  SizedBox(height: 2.h),
                  Text('$detail • $time', style: GoogleFonts.inter(fontSize: 11.5.sp, color: Colors.white60)),
                  SizedBox(height: 4.h),
                  SelectableText(hash, style: const TextStyle(fontFamily: 'RobotoMono', fontFamilyFallback: ['monospace'], fontSize: 10, color: Colors.white38)),
                ],
              ),
            ),
            _badge(verified ? 'Verified' : 'Pending', verified ? AppColors.themeGreen : Colors.orange),
          ],
        ),
      );

  // NEW GORGEOUS TOKEN FLOW
  Widget _decentralizedFlowSection() => _section(
        title: 'How Energy Tokens Get Verified',
        subtitle: 'Decentralized, resilient, and fully transparent',
        child: _tokenFlowDiagram(),
      );

  Widget _tokenFlowDiagram() => GlassContainer(
        opacity: 0.11,
        borderRadius: BorderRadius.circular(32.r),
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 32.w),
        child: Column(
          children: [
            Text(
              'How Energy Tokens Get Verified',
              style: GoogleFonts.inter(fontSize: 22.sp, fontWeight: FontWeight.w800, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48.h),
            LayoutBuilder(
              builder: (context, constraints) {
                final bool isMobile = constraints.maxWidth < 700;
                return isMobile ? _buildVerticalFlow() : _buildHorizontalFlow();
              },
            ),
          ],
        ),
      );

  Widget _buildVerticalFlow() => Column(
        children: List.generate(4, (i) {
          final step = _flowSteps[i];
          return Column(
            children: [
              _flowCircle(step['num']!, step['label']!, step['color'] as Color),
              if (i < 3) ...[
                SizedBox(height: 24.h),
                _verticalArrow(),
                SizedBox(height: 24.h),
              ],
            ],
          );
        }),
      );

  Widget _buildHorizontalFlow() => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(7, (i) {
            if (i.isEven) {
              final step = _flowSteps[i ~/ 2];
              return Expanded(child: _flowCircle(step['num']!, step['label']!, step['color'] as Color));
            } else {
              return _glowingArrow();
            }
          }),
        ),
      );

  Widget _flowCircle(String number, String label, Color color) => Column(
        children: [
        Container(
          width: 84.w,
          height: 84.w,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [color, color.withOpacity(0.7)],
              center: Alignment.center,
            ),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: color.withOpacity(0.6), blurRadius: 30, spreadRadius: 10),
            ],
          ),
          child: Center(
            child: Text(number, style: GoogleFonts.inter(fontSize: 34.sp, fontWeight: FontWeight.w900, color: Colors.white)),
          ),
        ),
        SizedBox(height: 18.h),
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 14.5.sp, color: Colors.white70, height: 1.4),
        ),
      ],
    );

  Widget _verticalArrow() => Column(
        children: [
          Icon(LucideIcons.chevronDown, size: 44.sp, color: AppColors.themeGreen),
          Container(height: 50.h, width: 3, color: AppColors.themeGreen.withOpacity(0.5)),
        ],
      );

  Widget _glowingArrow() => Icon(
        LucideIcons.arrowRight,
        size: 52.sp,
        color: AppColors.themeGreen,
        shadows: [Shadow(color: AppColors.themeGreen.withOpacity(0.8), blurRadius: 25)],
      );

  Widget _auditTrailSection() => _section(
        title: 'Tamper-Proof Audit Trail',
        subtitle: 'Every action cryptographically secured',
        child: Column(
          children: [
            _logCard('Maintenance', const [('Battery check', '15:45'), ('Panel cleaning', '09:20')], const Color(0xFFF59E0B)),
            _logCard('Discharge', const [('Peak: 5.2 kWh', '18:30')], const Color(0xFF10B981)),
            _logCard('Load Changes', const [('EV charging', '17:10')], const Color(0xFF3B82F6)),
          ],
        ),
      );

  Widget _logCard(String title, List<(String, String)> items, Color color) => Padding(
        padding: EdgeInsets.only(bottom: 14.h),
        child: GlassContainer(
          opacity: 0.11,
          borderRadius: BorderRadius.circular(24.r),
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(color: color.withOpacity(0.2), borderRadius: BorderRadius.circular(14.r)),
                    child: Icon(Icons.history, color: color, size: 22.sp),
                  ),
                  SizedBox(width: 12.w),
                  Text(title, style: GoogleFonts.inter(fontSize: 17.sp, fontWeight: FontWeight.w800, color: Colors.white)),
                ],
              ),
              SizedBox(height: 14.h),
              ...items.map((e) => Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text(e.$1, style: GoogleFonts.inter(fontSize: 13.5.sp, color: Colors.white))),
                        Text(e.$2, style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white60)),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      );

  Widget _smartContractsSection() => _section(
        title: 'Smart Contract Automation',
        subtitle: 'Self-executing rules. Zero trust needed.',
        child: GlassContainer(
          opacity: 0.11,
          borderRadius: BorderRadius.circular(28.r),
          padding: EdgeInsets.all(24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(LucideIcons.fileCode2, color: AppColors.themeGreen, size: 28.sp),
                  SizedBox(width: 12.w),
                  Text('Grid Sales Contract', style: GoogleFonts.inter(fontSize: 19.sp, fontWeight: FontWeight.w800, color: Colors.white)),
                ],
              ),
              SizedBox(height: 20.h),
              _infoRow('Generation', '3.2 kWh'),
              _infoRow('Consumption', '1.8 kWh'),
              _infoRow('Excess', '1.4 kWh', valueColor: AppColors.themeGreen),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: AppColors.themeGreen.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: AppColors.themeGreen.withOpacity(0.5)),
                ),
                child: Row(
                  children: [
                    Icon(LucideIcons.zap, color: AppColors.themeGreen, size: 26.sp),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Text(
                        'Auto-sell 1.4 kWh → +\$0.17 credited instantly',
                        style: GoogleFonts.inter(fontSize: 15.sp, fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _infoRow(String label, String value, {Color? valueColor}) => Padding(
        padding: EdgeInsets.only(bottom: 12.h),
        child: Row(
          children: [
            Expanded(flex: 3, child: Text(label, style: GoogleFonts.inter(fontSize: 14.5.sp, color: Colors.white70))),
            Expanded(flex: 2, child: Text(value, textAlign: TextAlign.end, style: GoogleFonts.inter(fontSize: 15.sp, fontWeight: FontWeight.w700, color: valueColor ?? Colors.white))),
          ],
        ),
      );

  Widget _section({required String title, required String subtitle, required Widget child}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: GoogleFonts.inter(fontSize: 28.sp, fontWeight: FontWeight.w900, color: Colors.white)),
            SizedBox(height: 10.h),
            Text(subtitle, style: GoogleFonts.inter(fontSize: 15.sp, color: Colors.white60, height: 1.5)),
            SizedBox(height: 24.h),
            child,
          ],
        ),
      );

  Widget _paddedGlass({required Widget child}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: GlassContainer(
          opacity: 0.14,
          blur: 20,
          borderRadius: BorderRadius.circular(32.r),
          padding: EdgeInsets.all(36.w),
          child: child,
        ),
      );

  Widget _tag(String text, {Color? color}) => Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: (color ?? AppColors.themeGreen).withOpacity(0.2),
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: (color ?? AppColors.themeGreen).withOpacity(0.4)),
        ),
        child: Text(text, style: GoogleFonts.inter(fontSize: 11.sp, fontWeight: FontWeight.w700, color: color ?? AppColors.themeGreen)),
      );

  Widget _badge(String text, Color color) => Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(color: color.withOpacity(0.2), borderRadius: BorderRadius.circular(12.r)),
        child: Text(text, style: GoogleFonts.inter(fontSize: 10.5.sp, fontWeight: FontWeight.w600, color: color)),
      );
}