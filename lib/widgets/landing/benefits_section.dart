import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  final cards = const [
    (
      'AI-Powered Optimization',
      'Machine learning algorithms predict and optimize your energy production in real-time',
      LucideIcons.brain,
      Color(0xFF73E0A9),
    ),
    (
      'Blockchain Security',
      'Transparent, secure transactions with immutable blockchain records',
      LucideIcons.keySquare,
      Color(0xFF3B82F6),
    ),
    (
      'Predictive Maintenance',
      'Get alerts before issues occur, maximizing uptime and system efficiency',
      LucideIcons.wrench,
      Color(0xFFF59E0B),
    ),
    (
      'Carbon Tracking',
      'Monitor your real-time environmental impact',
      LucideIcons.leaf,
      Color(0xFF22C55E),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
      child: GlassContainer(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        padding: EdgeInsets.symmetric(vertical: 36.h, horizontal: 20.w),
        blur: 15,
        opacity: 0.1,
        color: Colors.white,
        borderRadius: BorderRadius.circular(28.r),
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
              child: Text(
                'Key Benefits',
                style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF73E0A9),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Why Suncube AI?',
              style: GoogleFonts.inter(
                fontSize: 28.sp,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              'Cutting-edge tech meets sustainable energy for unmatched efficiency.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.8),
                height: 1.5,
              ),
            ),
            SizedBox(height: 28.h),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.h,
                childAspectRatio: 0.85,
              ),
              itemCount: cards.length,
              itemBuilder: (_, i) => BenefitCard(cards[i]),
            ),
          ],
        ),
      ),
    );
  }
}

class BenefitCard extends StatelessWidget {
  final (String title, String description, IconData icon, Color accentColor)
  cardData;

  const BenefitCard(this.cardData, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: GlassContainer(
        blur: 10,
        opacity: 0.08,
        color: cardData.$4,
        borderRadius: BorderRadius.circular(16.r),
        padding: EdgeInsets.all(14.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                color: cardData.$4.withOpacity(0.15),
                shape: BoxShape.circle,
                border: Border.all(
                  color: cardData.$4.withOpacity(0.3),
                  width: 1.w,
                ),
              ),
              child: Icon(cardData.$3, size: 22.sp, color: cardData.$4),
            ),
            SizedBox(height: 12.h),
            Text(
              cardData.$1,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              cardData.$2,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.inter(
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.75),
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
