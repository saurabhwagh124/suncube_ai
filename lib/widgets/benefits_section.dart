import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/widgets/feature_card.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  final cards = const [
    (
      'AI-Powered Optimization',
      'Machine learning algorithms predict and optimize your energy production in real-time',
      LucideIcons.brain,
      Color(0xFFF59E0B),
    ),
    (
      'Blockchain Security',
      'Transparent, secure transactions with immutable blockchain records',
      LucideIcons.shield,
      Color(0xFF3B82F6),
    ),
    (
      'Predictive Maintenance',
      'Get alerts before issues occur, maximizing uptime and system efficiency',
      LucideIcons.trendingUp,
      Color(0xFF10B981),
    ),
    (
      'Carbon Footprint Tracking',
      'Monitor your real time impact with real-time CO₂ offset calculations',
      LucideIcons.leaf,
      Color(0xFF10B981),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
      child: Column(
        children: [
          Text(
            'Key Benefits',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 12.h),
          Text(
            'Why Choose Suncube AI?',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Advanced technology meets sustainable energy for maximum efficiency and profitability.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: Colors.black54),
          ),
          SizedBox(height: 40.h),
          Wrap(
            spacing: 24.w,
            runSpacing: 24.h,
            alignment: WrapAlignment.center,
            children: cards.map((e) => FeatureCard(e)).toList(),
          ),
        ],
      ),
    );
  }
}
