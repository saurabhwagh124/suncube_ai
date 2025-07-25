import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suncube_ai/view/login_screen.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          const _StickyHeader(),
          SliverList(
            delegate: SliverChildListDelegate([
              const _HeroSection(),
              const _BenefitsSection(),
              const _HowItWorks(),
              const _PredictiveAlerts(),
              const _ImpactSection(),
              const _FinalCTA(),
              SizedBox(height: 60.h),
            ]),
          ),
        ],
      ),
    );
  }
}

/* ----------------------------------------------------------
   STICKY HEADER WITH MEGA-MENU
----------------------------------------------------------- */
class _StickyHeader extends StatelessWidget {
  const _StickyHeader();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      backgroundColor: Colors.white.withOpacity(.95),
      elevation: 0,
      title: Row(
        children: [
          Container(
            width: 32.w,
            height: 32.h,
            decoration: BoxDecoration(
              gradient: _grad,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(LucideIcons.zap, color: Colors.white, size: 18.sp),
          ),
          SizedBox(width: 8.w),
          const Expanded(
            child: Text(
              'Suncube AI',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: const Text('Login'),
        ),
        SizedBox(width: 12.w),
      ],
    );
  }
}

/* ----------------------------------------------------------
   HERO SECTION + 4 METRIC CARDS
----------------------------------------------------------- */
class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 173, 250, 215),
            Color.fromARGB(255, 170, 245, 211),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: EdgeInsets.fromLTRB(24.w, 110.h, 24.w, 60.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: const Color(0XFF34B87C).withOpacity(.15),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              '🌟 Revolutionary Solar Technology',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Your Solar. Supercharged by AI.\nBuilt for the Grid of Tomorrow.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 36.sp,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Transform your energy future with AI-powered solar management, predictive maintenance, and blockchain-secured transactions.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: Colors.black54),
          ),
          SizedBox(height: 32.h),
          Wrap(
            spacing: 12.w,
            runSpacing: 12.h,
            alignment: WrapAlignment.center,
            children: const [
              MetricCard(
                'Solar Generation',
                '4.3 kW',
                LucideIcons.sun,
                Color(0xFFF59E0B),
              ),
              MetricCard(
                'Consumption',
                '3.2 kW',
                LucideIcons.zap,
                Color(0xFF3B82F6),
              ),
              MetricCard(
                'Battery Level',
                '82 %',
                LucideIcons.battery,
                Color(0xFF8B5CF6),
              ),
              MetricCard(
                'Grid Feed-in',
                '1.5 kW',
                LucideIcons.trendingUp,
                Color(0xFF10B981),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MetricCard extends StatelessWidget {
  final String title, value;
  final IconData icon;
  final Color color;
  const MetricCard(this.title, this.value, this.icon, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border(left: BorderSide(color: color, width: 5)),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 13.sp, color: Colors.black54),
              ),
              const Spacer(),
              Icon(icon, color: color, size: 18.sp),
            ],
          ),
          SizedBox(height: 6.h),
          Text(
            value,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

/* ----------------------------------------------------------
   BENEFITS SECTION
----------------------------------------------------------- */
class _BenefitsSection extends StatelessWidget {
  const _BenefitsSection();

  final cards = const [
    ('AI-Powered Optimization', LucideIcons.brain, Color(0xFFF59E0B)),
    ('Blockchain Security', LucideIcons.shield, Color(0xFF3B82F6)),
    ('Predictive Maintenance', LucideIcons.trendingUp, Color(0xFF10B981)),
    ('Carbon Footprint Tracking', LucideIcons.leaf, Color(0xFF10B981)),
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
            children: cards.map((e) => _FeatureCard(e)).toList(),
          ),
        ],
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final (String title, IconData icon, Color color) data;
  const _FeatureCard(this.data);

  @override
  Widget build(BuildContext context) {
    final (title, icon, color) = data;
    return Container(
      width: 260.w,
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 56.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: color.withOpacity(.15),
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Icon(icon, size: 28.sp, color: color),
          ),
          SizedBox(height: 16.h),
          Text(
            title,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.h),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

/* ----------------------------------------------------------
   HOW IT WORKS
----------------------------------------------------------- */
class _HowItWorks extends StatelessWidget {
  const _HowItWorks();

  final steps = const [
    ('Smart Installation', LucideIcons.sun, '01'),
    ('Real-time Monitoring', LucideIcons.activity, '02'),
    ('Smart Grid Integration', LucideIcons.grid3x3, '03'),
    ('Automated Payments', LucideIcons.battery, '04'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
      child: Column(
        children: [
          Text(
            'How It Works',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 12.h),
          Text(
            'Simple, Smart, Sustainable',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40.h),
          Wrap(
            spacing: 32.w,
            runSpacing: 32.h,
            alignment: WrapAlignment.center,
            children: steps.map((e) => _StepTile(e)).toList(),
          ),
        ],
      ),
    );
  }
}

class _StepTile extends StatelessWidget {
  final (String title, IconData icon, String number) data;
  const _StepTile(this.data);
  @override
  Widget build(BuildContext context) {
    final (title, icon, number) = data;
    return SizedBox(
      width: 220.w,
      child: Column(
        children: [
          Container(
            width: 72.w,
            height: 72.h,
            decoration: BoxDecoration(gradient: _grad, shape: BoxShape.circle),
            child: Icon(icon, size: 32.sp, color: Colors.white),
          ),
          SizedBox(height: 12.h),
          Text(
            number,
            style: GoogleFonts.inter(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black12,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 6.h),
          Text(
            'AI-optimized panel placement and grid integration',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

/* ----------------------------------------------------------
   PREDICTIVE ALERTS
----------------------------------------------------------- */
class _PredictiveAlerts extends StatelessWidget {
  const _PredictiveAlerts();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
      child: Column(
        children: [
          Text(
            'AI Intelligence',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 12.h),
          Text(
            'Predictive Maintenance in Action',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Our AI continuously monitors your system and predicts issues before they impact performance.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: Colors.black54),
          ),
          SizedBox(height: 32.h),
          Container(
            width: 600.w,
            constraints: BoxConstraints(maxWidth: 600.w),
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      LucideIcons.triangleAlert,
                      color: Color(0XFF34B87C),
                      size: 22.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'AI Predictive Alerts',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0XFF34B87C).withOpacity(.15),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        '3 Active',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                _AlertTile(
                  'Panel Cleaning Required',
                  'Dust accumulation detected on panels 3-7. Efficiency reduced by 8%.',
                  94,
                  Colors.orange,
                ),
                _AlertTile(
                  'Temporary Shading Detected',
                  'Tree shadow affecting Panel Row B...',
                  87,
                  Colors.blue,
                ),
                _AlertTile(
                  'Inverter Anomaly',
                  'Inverter 2 showing irregular output patterns...',
                  96,
                  Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AlertTile extends StatelessWidget {
  final String title, desc;
  final int confidence;
  final Color color;
  const _AlertTile(this.title, this.desc, this.confidence, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: color.withOpacity(.08),
        border: Border.all(color: color.withOpacity(.3)),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: color.withOpacity(.2),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  '$confidence% AI Confidence',
                  style: TextStyle(fontSize: 11.sp),
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Text(desc, style: TextStyle(fontSize: 13.sp)),
        ],
      ),
    );
  }
}

/* ----------------------------------------------------------
   IMPACT SECTION
----------------------------------------------------------- */
class _ImpactSection extends StatelessWidget {
  const _ImpactSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 108, 243, 182),
            Color.fromARGB(255, 154, 246, 204),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Delivering Real Impact',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40.h),
          Wrap(
            spacing: 60.w,
            runSpacing: 30.h,
            alignment: WrapAlignment.center,
            children: const [
              _ImpactStat('2.5M+', 'kWh Generated', 'This month'),
              _ImpactStat('98.5%', 'System Uptime', 'AI-optimized'),
              _ImpactStat('1 200+', 'Tons CO₂ Saved', 'Environmental impact'),
            ],
          ),
        ],
      ),
    );
  }
}

class _ImpactStat extends StatelessWidget {
  final String value, label, sub;
  const _ImpactStat(this.value, this.label, this.sub);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 42.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            color: Colors.white.withOpacity(.9),
          ),
        ),
        Text(
          sub,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            color: Colors.white.withOpacity(.7),
          ),
        ),
      ],
    );
  }
}

/* ----------------------------------------------------------
   FINAL CTA
----------------------------------------------------------- */
class _FinalCTA extends StatelessWidget {
  const _FinalCTA();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
      child: Column(
        children: [
          Text(
            'Ready to Transform Your Energy Future?',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Join the solar revolution with AI-powered intelligence and blockchain security.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: Colors.black54),
          ),
          SizedBox(height: 32.h),
          Wrap(
            spacing: 16.w,
            runSpacing: 16.h,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(LucideIcons.arrowRight, size: 16.sp),
                label: Text(
                  'Get Your Free Assessment',
                  style: TextStyle(fontSize: 16.sp),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF34B87C),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.w,
                    vertical: 18.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  'View Live Demo',
                  style: TextStyle(fontSize: 16.sp),
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.w,
                    vertical: 18.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* ----------------------------------------------------------
   UTILS
----------------------------------------------------------- */
const _grad = LinearGradient(
  colors: [Color(0XFF34B87C), Color.fromARGB(255, 20, 106, 67)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
