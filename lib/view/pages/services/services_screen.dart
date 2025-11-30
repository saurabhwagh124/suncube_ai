// lib/screens/services_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/common_app_%20bar.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

// Import your solution detail pages
import 'package:suncube_ai/widgets/solutions/solution1.dart';
import 'package:suncube_ai/widgets/solutions/solution2.dart';
import 'package:suncube_ai/widgets/solutions/solution3.dart';
import 'package:suncube_ai/widgets/solutions/solution4.dart';
import 'package:suncube_ai/widgets/solutions/solution5.dart';
import 'package:suncube_ai/widgets/solutions/solution6.dart';

class ServicesScreen extends StatefulWidget {
  final bool showAppBar;
  const ServicesScreen({super.key, this.showAppBar = false});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  final Map<String, Map<String, dynamic>> solutions = {
    'Resident Solar + AI': {
      'widget':  Solution1Page(title: 'Resident Solar + AI',),
      'icon': Icons.home,
      'color': const Color(0xFF34B87C), // Matches your AppColors.themeGreen
      'context':
          'Optimize your home solar setup with AI-driven energy management.',
    },
    'Commercial & Industrial Solar': {
      'widget': const Solution2Page(title:'Commercial & Industrial Solar'),
      'icon': LucideIcons.building2,
      'color': const Color(0xFF3B82F6),
      'context': 'Power large-scale operations with tailored solar solutions.',
    },
    'Smart Grid & Virtual Power Plant': {
      'widget': const Solution3Page(title: 'Smart Grid & Virtual Power Plant'),
      'icon': LucideIcons.network,
      'color': const Color(0xFFF59E0B),
      'context': 'Integrate smart grid tech for an efficient energy ecosystem.',
    },
    'AI Monitoring & Predictive Maintenance': {
      'widget': const Solution4(title: 'AI Monitoring & Predictive Maintenance'),
      'icon': LucideIcons.activity,
      'color': AppColors.themeGreen,
      'context': 'Monitor systems in real-time and predict maintenance needs.',
    },
    'Data Insights & Weather Forecasting': {
      'widget': const Solution5Page(title: 'Data Insights & Weather Forecasting'),
      'icon': LucideIcons.cloudSun,
      'color': const Color(0xFFEC4899),
      'context':
          'Gain deep insights with analytics and accurate weather forecasting.',
    },
    'Cloud Dashboard & Multi-Site Management': {
      'widget': const Solution6Page(title: 'Cloud Dashboard & Multi-Site Management'),
      'icon': LucideIcons.layoutDashboard,
      'color': const Color(0xFF8B5CF6),
      'context':
          'Manage multiple sites seamlessly from one powerful dashboard.',
    },
  };

  @override
  Widget build(BuildContext context) {
    final solutionKeys = solutions.keys.toList();

    return LiquidBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:
            widget.showAppBar
                ? CommonAppBar(title: "Our Solutions")
                : null,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(
            16.w,
            widget.showAppBar ? 20.h : 20.h,
            16.w,
            40.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero / Intro Section
              GlassContainer(
                blur: 20,
                opacity: 0.15,
                color: Colors.white,
                borderRadius: BorderRadius.circular(32.r),
                padding: EdgeInsets.all(28.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore Our AI-Powered\nSolar Solutions',
                      style: GoogleFonts.inter(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'From smart homes to industrial plants — Suncube AI delivers intelligent, sustainable energy management tailored to your needs.',
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        color: Colors.white.withOpacity(0.85),
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(LucideIcons.zap, size: 20.sp),
                      label: Text(
                        'Get a Free Consultation',
                        style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.themeGreen,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: 28.w,
                          vertical: 16.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        elevation: 8,
                        shadowColor: AppColors.themeGreen.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 32.h),

              // Featured Solution Card
              GlassContainer(
                blur: 18,
                opacity: 0.2,
                color: AppColors.themeGreen,
                borderRadius: BorderRadius.circular(32.r),
                padding: EdgeInsets.all(24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.w,
                            vertical: 8.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Text(
                            'Featured',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Icon(
                          LucideIcons.sparkles,
                          color: Colors.amber,
                          size: 22.sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Resident Solar + AI',
                      style: GoogleFonts.inter(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'The #1 choice for homeowners. Save up to 30% on bills with intelligent energy routing, predictive optimization, and real-time monitoring.',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Solution1Page(title: 'Resident Solar + AI',),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.themeGreen,
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 14.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                      ),
                      child: Text(
                        'Explore Residential AI',
                        style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40.h),

              // All Solutions Grid Title
              Text(
                'All Solutions',
                style: GoogleFonts.inter(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.h),

              // Solutions Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: solutionKeys.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.w,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  final title = solutionKeys[index];
                  final data = solutions[title]!;
                  final IconData icon = data['icon'];
                  final Color color = data['color'];
                  final String desc = data['context'];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => data['widget'],
                          transitionDuration: const Duration(
                            milliseconds: 400,
                          ),
                          transitionsBuilder:
                              (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c),
                        ),
                      );
                    },
                    child: GlassContainer(
                      blur: 12,
                      opacity: 0.1,
                      color: color.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20.r),
                      padding: EdgeInsets.all(16.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 56.w,
                            height: 56.w,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  color.withOpacity(0.3),
                                  Colors.transparent,
                                ],
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: color.withOpacity(0.4),
                                width: 2,
                              ),
                            ),
                            child: Icon(
                              icon,
                              size: 28.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Flexible(
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.2,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Flexible(
                            child: Text(
                              desc,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                color: Colors.white.withOpacity(0.8),
                                height: 1.3,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

              SizedBox(height: 40.h),

              // Testimonials & Stats Section
              GlassContainer(
                padding: EdgeInsets.all(24.w),
                borderRadius: BorderRadius.circular(32.r),
                color: Colors.white,
                opacity: 0.05,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          LucideIcons.award,
                          color: AppColors.themeGreen,
                          size: 24.sp,
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Text(
                            'Trusted by Industry Leaders',
                            style: GoogleFonts.inter(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    _testimonialCard(),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: _statItem('500+', 'Happy Homes')),
                        Expanded(child: _statItem('2.5M', 'kWh Saved')),
                        Expanded(child: _statItem('30%', 'Avg. Savings')),
                        Expanded(child: _statItem('24/7', 'AI Support')),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _testimonialCard() => Container(
    width: double.infinity,
    padding: EdgeInsets.all(20.w),
    decoration: BoxDecoration(
      color: AppColors.themeGreen.withOpacity(0.12),
      borderRadius: BorderRadius.circular(20.r),
      border: Border.all(color: AppColors.themeGreen.withOpacity(0.3)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children:
              List.generate(
                5,
                (_) => Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18.sp,
                ),
              ).toList(),
        ),
        SizedBox(height: 12.h),
        Text(
          '"Suncube AI transformed our energy usage. We went from paying bills to earning credits every month!"',
          style: GoogleFonts.inter(
            fontSize: 15.sp,
            color: Colors.white,
            fontStyle: FontStyle.italic,
            height: 1.5,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          '— Priya Sharma, Homeowner, Mumbai',
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            color: AppColors.themeGreen,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );

  Widget _statItem(String value, String label) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.themeGreen,
          ),
        ),
      ),
      SizedBox(height: 4.h),
      FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 11.sp,
            color: Colors.white70,
          ),
        ),
      ),
    ],
  );
}
