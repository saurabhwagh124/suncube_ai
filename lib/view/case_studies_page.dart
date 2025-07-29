import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CaseStudiesPage extends StatelessWidget {
  const CaseStudiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF060C09),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp),
        ),
        backgroundColor: const Color(0xFF060C09).withOpacity(0.9),
        elevation: 0,
        title: Text(
          'Case Studies',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w800,
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 64.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060C09), Color(0xFF1A231F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Hero(),
              _Section(title: '"Project Zenith"', subtitle: 'Urban Innovation'),
              _ProjectZenith(),
              _Section(
                title: '"Suncube AI @ Industrial Logistics Hub"',
                subtitle: 'Industrial Innovation',
              ),
              _IndustrialHub(),
              _Section(
                title: '"Blockchain Valley"',
                subtitle: 'Blockchain Innovation',
              ),
              _BlockchainValley(),
              _InsightsSection(),
              _FinalCTA(),
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
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF73E0A9), Color(0xFF34B87C)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.15),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              'Explore projects where AI-driven solar meets visionary infrastructure. '
              'These are simulations for now — but tomorrow, they\'ll be real.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Text(
            'Smart Energy at Scale.',
            style: GoogleFonts.inter(
              fontSize: 48.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Real homeowners achieving remarkable savings with AI-powered solar optimization',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 18.sp,
              color: Colors.white.withOpacity(.8),
            ),
          ),
          SizedBox(height: 32.h),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward),
            label: const Text('View Project Highlights'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF34B87C),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              elevation: 8,
              shadowColor: Colors.black.withOpacity(.25),
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

  const _Section({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, bottom: 24.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: const Color(0xFF73E0A9).withOpacity(.15),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(LucideIcons.building2, size: 16.sp, color: Colors.white),
                SizedBox(width: 4.w),
                Text(
                  subtitle,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF73E0A9),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'A dummy model of an urban solar + AI integrated township.',
            style: GoogleFonts.inter(fontSize: 18.sp, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   PROJECT ZENITH
------------------------------------------------- */
class _ProjectZenith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _InfoCard(
                icon: LucideIcons.chartColumn,
                title: 'Panel Performance Across Towers',
                child: Column(
                  children: [
                    _ProgressBar(label: 'Tower A', value: 94),
                    _ProgressBar(label: 'Tower B', value: 87),
                    _ProgressBar(label: 'Tower C', value: 91),
                  ],
                ),
              ),
              _InfoCard(
                icon: LucideIcons.network,
                title: 'Grid Interactions via AI',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _Stat('2.4 MW', 'Peak Output'),
                    _Stat('98 %', 'Efficiency'),
                  ],
                ),
              ),
              _InfoCard(
                icon: LucideIcons.leaf,
                title: 'CO₂ Offset Community Stats',
                child: Column(
                  children: [
                    Text(
                      '1,247',
                      style: GoogleFonts.inter(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF73E0A9),
                      ),
                    ),
                    Text(
                      'Tons CO₂ Saved Annually',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      'Equivalent to 2,494 trees planted',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/* -------------------------------------------------
   INDUSTRIAL HUB
------------------------------------------------- */
class _IndustrialHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 350.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _InfoCard(
                icon: LucideIcons.trendingUp,
                title: 'Simulated Energy Cost Reduction',
                child: Column(
                  children: [
                    Text(
                      '22%',
                      style: GoogleFonts.inter(
                        fontSize: 48.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF73E0A9),
                      ),
                    ),
                    Text(
                      'Energy Cost Cut',
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _Stat('\$847K', 'Annual Savings'),
                        _Stat('3.2MW', 'Peak Demand'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/* -------------------------------------------------
   BLOCKCHAIN VALLEY
------------------------------------------------- */
class _BlockchainValley extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _InfoCard(
                icon: LucideIcons.coins,
                title: 'Daily Transaction Logs',
                child: Column(
                  children: [
                    _TransactionRow(
                      'House A → House B',
                      '2.4 kWh',
                      '+12 tokens',
                    ),
                    _TransactionRow('House C → Grid', '1.8 kWh', '+9 tokens'),
                    _TransactionRow('Community Pool', '5.2 kWh', '+26 tokens'),
                  ],
                ),
              ),
              _InfoCard(
                icon: LucideIcons.shield,
                title: 'Blockchain Security',
                child: Column(
                  children: [
                    _CheckItem('Immutable transaction records'),
                    _CheckItem('Smart contract automation'),
                    _CheckItem('Decentralized verification'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/* -------------------------------------------------
   INSIGHTS SECTION
------------------------------------------------- */
class _InsightsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Column(
        children: [
          Text(
            'Lessons from the Field',
            style: GoogleFonts.inter(
              fontSize: 36.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Insight cards showing what worked, what AI optimized best, and how simulated behaviour influenced outputs.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 150.h,
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
                  color: Colors.green,
                ),
                _InsightCard(
                  title: 'AI Optimization',
                  items: [
                    'Load Distribution',
                    'Peak Shaving',
                    'Predictive Maintenance',
                  ],
                  color: Colors.blue,
                ),
                _InsightCard(
                  title: 'User Behavior',
                  items: [
                    'Residential Patterns',
                    'Industrial Cycles',
                    'Weather Response',
                  ],
                  color: Colors.purple,
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
   CTA
------------------------------------------------- */
class _FinalCTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Container(
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: const Color(0xFF1E2622),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: const Color(0xFF73E0A9)),
        ),
        child: Column(
          children: [
            const Icon(LucideIcons.lightbulb, size: 48, color: Colors.blue),
            SizedBox(height: 16.h),
            Text(
              'Ready to Scale Your Energy Infrastructure?',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'These simulations demonstrate the potential of AI-driven solar solutions. Let\'s turn your vision into reality.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF73E0A9),
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 16.h,
                    ),
                  ),
                  child: const Text('Start Your Project'),
                ),
                SizedBox(width: 16.w),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF73E0A9)),
                    foregroundColor: const Color(0xFF73E0A9),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 16.h,
                    ),
                  ),
                  child: const Text('Schedule Demo'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/* -------------------------------------------------
   WIDGETS
------------------------------------------------- */
class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget child;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      margin: EdgeInsets.all(10.r),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: const Color(0xFF1E2622),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: const Color(0xFF73E0A9), size: 20),
              SizedBox(width: 8.w),
              Flexible(
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
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
}

class _ProgressBar extends StatelessWidget {
  final String label;
  final int value;

  const _ProgressBar({required this.label, required this.value});

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
              style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white70),
            ),
            Text(
              '$value%',
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: const Color(0xFF73E0A9),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        LinearProgressIndicator(
          value: value / 100,
          backgroundColor: Colors.white12,
          color: const Color(0xFF73E0A9),
        ),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  final String value;
  final String label;

  const _Stat(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF73E0A9),
          ),
        ),
        Text(
          label,
          style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white70),
        ),
      ],
    );
  }
}

class _TransactionRow extends StatelessWidget {
  final String fromTo;
  final String kwh;
  final String tokens;

  const _TransactionRow(this.fromTo, this.kwh, this.tokens);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fromTo,
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                kwh,
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                tokens,
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF73E0A9),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CheckItem extends StatelessWidget {
  final String text;

  const _CheckItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          const Icon(
            LucideIcons.circleCheck,
            size: 16,
            color: Color(0xFF73E0A9),
          ),
          SizedBox(width: 8.w),
          Text(
            text,
            style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white70),
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

  const _InsightCard({
    required this.title,
    required this.items,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.r),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: const Color(0xFF1E2622),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: color.withOpacity(.4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(LucideIcons.circleCheck, size: 20, color: color),
              SizedBox(width: 8.w),
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          ...items
              .map(
                (e) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Text(
                    '• $e',
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      color: Colors.white70,
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
