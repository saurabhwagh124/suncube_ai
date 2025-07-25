import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/view/login_screen.dart';
import 'package:suncube_ai/widgets/benefits_section.dart';
import 'package:suncube_ai/widgets/final_cta.dart';
import 'package:suncube_ai/widgets/hero_section.dart';
import 'package:suncube_ai/widgets/how_it_works.dart';
import 'package:suncube_ai/widgets/impact_section.dart';
import 'package:suncube_ai/widgets/predictive_alert.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          const _StickyHeader(),
          SliverList(
            delegate: SliverChildListDelegate([
              const HeroSection(),
              const BenefitsSection(),
              const HowItWorks(),
              const PredictiveAlerts(),
              const ImpactSection(),
              const FinalCTA(),
              SizedBox(height: 60.h),
            ]),
          ),
        ],
      ),
    );
  }
}

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
          child: Text(
            'Login',
            style: GoogleFonts.lato(
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.themeGreen,
            ),
          ),
        ),
        SizedBox(width: 12.w),
      ],
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

const _grad = LinearGradient(
  colors: [Color(0XFF34B87C), Color.fromARGB(255, 20, 106, 67)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
