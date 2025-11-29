// lib/widgets/landing/benefits_section.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  final List<BenefitData> cards = const [
    BenefitData(
      title: 'AI-Powered Optimization',
      description:
          'Real-time energy optimization using advanced machine learning algorithms',
      icon: LucideIcons.brainCircuit,
      color: Color(0xFF73E0A9),
    ),
    BenefitData(
      title: 'Blockchain Security',
      description: 'Secure, transparent, and immutable energy transactions',
      icon: LucideIcons.shieldCheck,
      color: Color(0xFF3B82F6),
    ),
    BenefitData(
      title: 'Predictive Maintenance',
      description: 'Prevent system failures with proactive AI-driven alerts',
      icon: LucideIcons.wrench,
      color: Color(0xFFF59E0B),
    ),
    BenefitData(
      title: 'Carbon Impact Tracking',
      description: 'Monitor your real-time environmental contribution',
      icon: LucideIcons.leaf,
      color: Color(0xFF22C55E),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: GlassContainer(
        blur: 15,
        opacity: 0.1,
        borderRadius: BorderRadius.circular(28.r),
        padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 32.h),
        child: Column(
          children: [
            // Badge – same as HeroSection
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
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    LucideIcons.sparkles,
                    size: 14.sp,
                    color: const Color(0xFF73E0A9),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Key Benefits',
                    style: GoogleFonts.inter(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF73E0A9),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),

            // Title – same style as Hero
            Text(
              'Why Suncube AI?',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 32.sp,
                fontWeight: FontWeight.w800,
                height: 1.2,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'Cutting-edge tech meets sustainable energy for unmatched efficiency.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 15.sp,
                color: Colors.white.withOpacity(0.8),
                height: 1.5,
              ),
            ),
            SizedBox(height: 32.h),

            // BENEFIT CARDS – IDENTICAL STYLING TO METRICCARDS
            ...cards.map(
              (data) => Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: BenefitCard(data: data),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BenefitData {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  const BenefitData({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}

// EXACT SAME CARD STYLE AS MetricCard IN HERO
class BenefitCard extends StatefulWidget {
  final BenefitData data;
  const BenefitCard({required this.data, super.key});

  @override
  State<BenefitCard> createState() => _BenefitCardState();
}

class _BenefitCardState extends State<BenefitCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scale = Tween<double>(
      begin: 1.0,
      end: 1.04,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _ctrl.forward(),
      onExit: (_) => _ctrl.reverse(),
      child: AnimatedBuilder(
        animation: _ctrl,
        builder:
            (_, __) => Transform.scale(
              scale: _scale.value,
              child: GlassContainer(
                blur: 10,
                opacity: 0.08,
                color: widget.data.color,
                borderRadius: BorderRadius.circular(16.r),
                padding: EdgeInsets.all(14.w),
                child: Row(
                  children: [
                    // Icon circle – EXACT same as MetricCard
                    Container(
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: widget.data.color.withOpacity(0.15),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: widget.data.color.withOpacity(0.3),
                          width: 1.w,
                        ),
                      ),
                      child: Icon(
                        widget.data.icon,
                        size: 18.sp,
                        color: widget.data.color,
                      ),
                    ),
                    SizedBox(width: 16.w),

                    // Title + Description
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.data.title,
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            widget.data.description,
                            style: GoogleFonts.inter(
                              fontSize: 13.sp,
                              color: Colors.white.withOpacity(0.8),
                              height: 1.4,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
