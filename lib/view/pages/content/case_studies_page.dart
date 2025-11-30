import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/common_app_%20bar.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class CaseStudiesPage extends StatelessWidget {
  const CaseStudiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LiquidBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CommonAppBar(title: 'Case Studies'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Hero(),
              SizedBox(height: 40.h),
              _Section(
                title: '"Project Zenith"',
                subtitle: 'Urban Innovation',
                description: 'A dummy model of an urban solar + AI integrated township.',
              ),
              _ProjectZenith(),
              SizedBox(height: 40.h),
              _Section(
                title: '"Suncube AI @ Industrial Logistics Hub"',
                subtitle: 'Industrial Innovation',
                description: 'Simulated large-scale industrial energy optimization.',
              ),
              _IndustrialHub(),
              SizedBox(height: 40.h),
              _Section(
                title: '"Blockchain Valley"',
                subtitle: 'Blockchain Innovation',
                description: 'Peer-to-peer energy trading with blockchain security.',
              ),
              _BlockchainValley(),
              SizedBox(height: 40.h),
              _InsightsSection(),
              SizedBox(height: 40.h),
              _FinalCTA(),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}

/* -------------------------------------------------
   HERO
------------------------------------------------- */
class _Hero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width: double.infinity,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(24.r),
      padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 32.w),
      child: Column(
        children: [
          // Badge
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.themeGreen.withOpacity(0.3),
                  AppColors.themeGreen.withOpacity(0.1),
                ],
              ),
              borderRadius: BorderRadius.circular(24.r),
              border: Border.all(
                color: AppColors.themeGreen.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  LucideIcons.fileText,
                  color: AppColors.themeGreen,
                  size: 16.sp,
                ),
                SizedBox(width: 8.w),
                Flexible(
                  child: Text(
                    'Explore projects where AI-driven solar meets visionary infrastructure',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
          // Title
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                Colors.white,
                AppColors.themeGreen.withOpacity(0.8),
              ],
            ).createShader(bounds),
            child: Text(
              'Smart Energy at Scale.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 52.sp,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                height: 1.1,
                letterSpacing: -1,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          // Description
          Text(
            'Real homeowners achieving remarkable savings with AI-powered solar optimization',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: Colors.white.withOpacity(0.7),
              height: 1.6,
            ),
          ),
          SizedBox(height: 40.h),
          // Button
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(LucideIcons.arrowRight, size: 18.sp),
            label: Text(
              'View Project Highlights',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeGreen,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: 28.w,
                vertical: 18.h,
              ),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   SECTION TITLE
------------------------------------------------- */
class _Section extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;

  const _Section({
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Badge
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.themeGreen.withOpacity(0.2),
                AppColors.themeGreen.withOpacity(0.05),
              ],
            ),
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: AppColors.themeGreen.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(LucideIcons.building2, size: 14.sp, color: AppColors.themeGreen),
              SizedBox(width: 6.w),
              Text(
                subtitle,
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.themeGreen,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        // Title
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 36.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            height: 1.2,
          ),
        ),
        SizedBox(height: 12.h),
        // Description
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            color: Colors.white60,
          ),
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}

/* -------------------------------------------------
   PROJECT ZENITH
------------------------------------------------- */
class _ProjectZenith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _InfoCard(
            icon: LucideIcons.chartColumn,
            title: 'Panel Performance Across Towers',
            accentColor: const Color(0xFF3B82F6),
            child: Column(
              children: [
                SizedBox(height: 8.h),
                _ProgressBar(label: 'Tower A', value: 94, color: const Color(0xFF3B82F6)),
                SizedBox(height: 8.h),
                _ProgressBar(label: 'Tower B', value: 87, color: const Color(0xFF3B82F6)),
                SizedBox(height: 8.h),
                _ProgressBar(label: 'Tower C', value: 91, color: const Color(0xFF3B82F6)),
              ],
            ),
          ),
          _InfoCard(
            icon: LucideIcons.network,
            title: 'Grid Interactions via AI',
            accentColor: const Color(0xFF8B5CF6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _Stat('2.4 MW', 'Peak Output', const Color(0xFF8B5CF6)),
                _Stat('98 %', 'Efficiency', const Color(0xFF8B5CF6)),
              ],
            ),
          ),
          _InfoCard(
            icon: LucideIcons.leaf,
            title: 'CO₂ Offset Community Stats',
            accentColor: const Color(0xFF10B981),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1,247',
                  style: GoogleFonts.inter(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF10B981),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Tons CO₂ Saved Annually',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFF10B981).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: const Color(0xFF10B981).withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    '≈ 2,494 trees planted',
                    style: GoogleFonts.inter(
                      fontSize: 11.sp,
                      color: const Color(0xFF10B981),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   INDUSTRIAL HUB
------------------------------------------------- */
class _IndustrialHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _InfoCard(
            icon: LucideIcons.trendingUp,
            title: 'Simulated Energy Cost Reduction',
            accentColor: const Color(0xFFF59E0B),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '22%',
                  style: GoogleFonts.inter(
                    fontSize: 52.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFFF59E0B),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Energy Cost Cut',
                  style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _Stat('\$847K', 'Annual Savings', const Color(0xFFF59E0B)),
                    SizedBox(width: 16.w),
                    _Stat('3.2MW', 'Peak Demand', const Color(0xFFF59E0B)),
                  ],
                ),
              ],
            ),
          ),
          _InfoCard(
            icon: LucideIcons.factory,
            title: 'Industrial Efficiency Metrics',
            accentColor: const Color(0xFFEC4899),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _Stat('24/7', 'Monitoring', const Color(0xFFEC4899)),
                SizedBox(height: 12.h),
                _Stat('99.8%', 'Uptime', const Color(0xFFEC4899)),
                SizedBox(height: 12.h),
                _Stat('15ms', 'Response Time', const Color(0xFFEC4899)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   BLOCKCHAIN VALLEY
------------------------------------------------- */
class _BlockchainValley extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _InfoCard(
            icon: LucideIcons.coins,
            title: 'Daily Transaction Logs',
            accentColor: const Color(0xFFF59E0B),
            child: Column(
              children: [
                SizedBox(height: 8.h),
                _TransactionRow(
                  'House A → House B',
                  '2.4 kWh',
                  '+12 tokens',
                  const Color(0xFFF59E0B),
                ),
                SizedBox(height: 8.h),
                _TransactionRow(
                  'House C → Grid',
                  '1.8 kWh',
                  '+9 tokens',
                  const Color(0xFFF59E0B),
                ),
                SizedBox(height: 8.h),
                _TransactionRow(
                  'Community Pool',
                  '5.2 kWh',
                  '+26 tokens',
                  const Color(0xFFF59E0B),
                ),
              ],
            ),
          ),
          _InfoCard(
            icon: LucideIcons.shield,
            title: 'Blockchain Security',
            accentColor: const Color(0xFF8B5CF6),
            child: Column(
              children: [
                SizedBox(height: 8.h),
                _CheckItem('Immutable transaction records', const Color(0xFF8B5CF6)),
                SizedBox(height: 8.h),
                _CheckItem('Smart contract automation', const Color(0xFF8B5CF6)),
                SizedBox(height: 8.h),
                _CheckItem('Decentralized verification', const Color(0xFF8B5CF6)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   INSIGHTS SECTION
------------------------------------------------- */
class _InsightsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Lessons from the Field',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 36.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'Insight cards showing what worked, what AI optimized best, and how simulated behaviour influenced outputs.',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white60),
        ),
        SizedBox(height: 32.h),
        SizedBox(
          height: 180.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              _InsightCard(
                title: 'What Worked',
                items: [
                  'Predictive Analytics',
                  'Community Engagement',
                  'Real-time Optimization',
                ],
                color: Color(0xFF10B981),
                icon: LucideIcons.circleCheck,
              ),
              _InsightCard(
                title: 'AI Optimization',
                items: [
                  'Load Distribution',
                  'Peak Shaving',
                  'Predictive Maintenance',
                ],
                color: Color(0xFF3B82F6),
                icon: LucideIcons.brain,
              ),
              _InsightCard(
                title: 'User Behavior',
                items: [
                  'Residential Patterns',
                  'Industrial Cycles',
                  'Weather Response',
                ],
                color: Color(0xFF8B5CF6),
                icon: LucideIcons.users,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/* -------------------------------------------------
   CTA
------------------------------------------------- */
class _FinalCTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      opacity: 0.1,
      borderRadius: BorderRadius.circular(24.r),
      padding: EdgeInsets.all(40.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.themeGreen.withOpacity(0.3),
                  AppColors.themeGreen.withOpacity(0.1),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              LucideIcons.lightbulb,
              size: 48.sp,
              color: AppColors.themeGreen,
            ),
          ),
          SizedBox(height: 24.h),
          Text(
            'Ready to Scale Your Energy Infrastructure?',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 28.sp,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'These simulations demonstrate the potential of AI-driven solar solutions. Let\'s turn your vision into reality.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              color: Colors.white60,
              height: 1.6,
            ),
          ),
          SizedBox(height: 32.h),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(LucideIcons.rocket, size: 18.sp),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeGreen,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: 32.w,
                vertical: 18.h,
              ),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            label: Text(
              'Start Your Project',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   WIDGETS
------------------------------------------------- */
class _InfoCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final Widget child;
  final Color accentColor;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.child,
    required this.accentColor,
  });

  @override
  State<_InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<_InfoCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -4.0 : 0.0),
        width: 280.w,
        margin: EdgeInsets.only(right: 16.w),
        child: GlassContainer(
          opacity: _isHovered ? 0.15 : 0.1,
          borderRadius: BorderRadius.circular(20.r),
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          widget.accentColor.withOpacity(0.3),
                          widget.accentColor.withOpacity(0.1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(
                      widget.icon,
                      color: widget.accentColor,
                      size: 20.sp,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Text(
                      widget.title,
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Expanded(child: widget.child),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  final String label;
  final int value;
  final Color color;

  const _ProgressBar({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              '$value%',
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ],
        ),
        SizedBox(height: 6.h),
        ClipRRect(
          borderRadius: BorderRadius.circular(4.r),
          child: LinearProgressIndicator(
            value: value / 100,
            backgroundColor: Colors.white.withOpacity(0.1),
            color: color,
            minHeight: 6.h,
          ),
        ),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  final String value;
  final String label;
  final Color color;

  const _Stat(this.value, this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.w900,
            color: color,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 11.sp,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

class _TransactionRow extends StatelessWidget {
  final String fromTo;
  final String kwh;
  final String tokens;
  final Color color;

  const _TransactionRow(this.fromTo, this.kwh, this.tokens, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: color.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fromTo,
                style: GoogleFonts.inter(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                kwh,
                style: GoogleFonts.inter(
                  fontSize: 10.sp,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
          Text(
            tokens,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

class _CheckItem extends StatelessWidget {
  final String text;
  final Color color;

  const _CheckItem(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: color.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            LucideIcons.circleCheck,
            size: 16.sp,
            color: color,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InsightCard extends StatelessWidget {
  final String title;
  final List<String> items;
  final Color color;
  final IconData icon;

  const _InsightCard({
    required this.title,
    required this.items,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      margin: EdgeInsets.only(right: 16.w),
      child: GlassContainer(
        opacity: 0.1,
        borderRadius: BorderRadius.circular(20.r),
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        color.withOpacity(0.3),
                        color.withOpacity(0.1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(icon, size: 18.sp, color: color),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            ...items.map(
              (e) => Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 4.h),
                      width: 4.w,
                      height: 4.w,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Text(
                        e,
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
