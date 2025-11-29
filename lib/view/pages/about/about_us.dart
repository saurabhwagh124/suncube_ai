// lib/view/pages/about_us_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 28.sp),
        ),
        title: Text(
          'About Us',
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: GlassContainer(
          opacity: 0.2,
          blur: 12,
          borderRadius: BorderRadius.zero,
          child: Container(),
        ),
      ),
      body: LiquidBackground(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20.w, 110.h, 20.w, 40.h),
          child: Column(
            children: [
              // HERO SECTION
              _HeroSection(),
              SizedBox(height: 40.h),

              // STORY SECTION
              _StorySection(),
              SizedBox(height: 40.h),

              // STATS SECTION
              _StatsGrid(),
              SizedBox(height: 40.h),

              // LEADERSHIP SECTION
              _LeadershipSection(),
              SizedBox(height: 40.h),

              // VALUES SECTION
              _ValuesSection(),
              SizedBox(height: 40.h),

              // SUSTAINABILITY PLEDGE
              _PledgeSection(),
            ],
          ),
        ),
      ),
    );
  }
}

// HERO
class _HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blur: 20,
      opacity: 0.12,
      borderRadius: BorderRadius.circular(32.r),
      padding: EdgeInsets.all(32.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.themeGreen.withOpacity(0.3),
                  AppColors.themeGreen.withOpacity(0.1),
                ],
              ),
              borderRadius: BorderRadius.circular(30.r),
              border: Border.all(
                color: AppColors.themeGreen.withOpacity(0.4),
                width: 1.5,
              ),
            ),
            child: Text(
              'Our Story',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.themeGreen,
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Text(
            'Pioneering the Future\nof Intelligent Solar Energy',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 36.sp,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              height: 1.2,
              letterSpacing: -0.5,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Founded by energy and AI experts, Suncube AI is on a mission to accelerate the world\'s transition to sustainable energy through intelligent automation and blockchain innovation.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: Colors.white70,
              height: 1.6,
            ),
          ),
          SizedBox(height: 32.h),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeGreen,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 18.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            child: Text(
              'Read Our Full Story',
              style: GoogleFonts.inter(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// STORY
class _StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blur: 18,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(28.r),
      padding: EdgeInsets.all(32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Born from Innovation, Driven by Purpose',
            style: GoogleFonts.inter(
              fontSize: 28.sp,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Suncube AI was founded in 2021 by a team of energy experts and AI researchers who saw the untapped potential of combining artificial intelligence with solar energy management.\n\n'
            'After witnessing inefficiencies in traditional solar installations and missed opportunities for optimization, our founders created a platform that revolutionizes how solar systems operate, maintain themselves, and integrate with the smart grid.\n\n'
            'Today, we\'re proud to lead the charge in AI-powered solar management — helping thousands maximize energy production while building a sustainable future.',
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: Colors.white70,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }
}

// STATS
// REPLACE THIS WIDGET ONLY (or the whole file)
class _StatsGrid extends StatelessWidget {
  final stats = const [
    ('Founded', '2021'),
    ('kWh Managed', '50M+'),
    ('Customers Served', '1,500+'),
    ('Tons CO₂ Saved', '25,000+'),
  ];

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blur: 16,
      opacity: 0.08,
      borderRadius: BorderRadius.circular(24.r),
      padding: EdgeInsets.all(28.w),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool isSmallScreen = constraints.maxWidth < 400;

          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isSmallScreen ? 1 : 2,
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 20.h,
              // Magic ratio that NEVER overflows
              childAspectRatio: isSmallScreen ? 3.8 : 3.2,
            ),
            itemCount: stats.length,
            itemBuilder: (_, i) {
              final stat = stats[i];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    stat.$1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: isSmallScreen ? 13.sp : 14.sp,
                      color: Colors.white60,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    stat.$2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: isSmallScreen ? 22.sp : 24.sp,
                      fontWeight: FontWeight.w900,
                      color: AppColors.themeGreen,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

// LEADERSHIP
class _LeadershipSection extends StatelessWidget {
  final leaders = const [
    _Leader(
      'Dr. Sarah Chen',
      'CEO & Co-Founder',
      'Former Tesla Energy VP\n15+ years in renewable energy & AI',
      'PhD Electrical Engineering\nStanford University',
    ),
    _Leader(
      'Marcus Rodriguez',
      'CTO & Co-Founder',
      'Ex-Google AI researcher\nML & energy optimization expert',
      'MS Computer Science\nMIT',
    ),
    _Leader(
      'Dr. Emily Watson',
      'VP of Sustainability',
      'Environmental scientist\nCarbon reduction specialist',
      'PhD Environmental Science\nUC Berkeley',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Meet Our Leadership',
          style: GoogleFonts.inter(
            fontSize: 28.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'Visionaries combining deep expertise in energy, AI, and sustainability',
          style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
        ),
        SizedBox(height: 24.h),
        SizedBox(
          height: 360.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: leaders.length,
            separatorBuilder: (_, __) => SizedBox(width: 20.w),
            itemBuilder: (_, i) => _LeaderCard(data: leaders[i]),
          ),
        ),
      ],
    );
  }
}

class _Leader {
  final String name, role, desc, edu;
  const _Leader(this.name, this.role, this.desc, this.edu);
}

class _LeaderCard extends StatelessWidget {
  final _Leader data;
  const _LeaderCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width: 280.w,
      blur: 16,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(28.r),
      padding: EdgeInsets.all(24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50.r,
            backgroundColor: AppColors.themeGreen.withOpacity(0.2),
          ),
          SizedBox(height: 20.h),
          Text(
            data.name,
            style: GoogleFonts.inter(
              fontSize: 20.sp,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            data.role,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              color: AppColors.themeGreen,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            data.desc,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            data.edu,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 13.sp, color: Colors.white60),
          ),
        ],
      ),
    );
  }
}

// VALUES
class _ValuesSection extends StatelessWidget {
  final values = const [
    (
      'Mission',
      Icons.track_changes_rounded,
      'Accelerate global adoption of clean energy through intelligent automation and innovation.',
    ),
    (
      'Innovation',
      Icons.lightbulb_outline,
      'Push boundaries of AI and renewable energy integration.',
    ),
    (
      'Sustainability',
      Icons.eco,
      'Every decision prioritizes long-term environmental impact.',
    ),
    (
      'Community',
      Icons.diversity_3,
      'Empower communities to achieve true energy independence.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What Drives Us',
          style: GoogleFonts.inter(
            fontSize: 28.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 24.h),
        SizedBox(
          height: 240.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: values.length,
            separatorBuilder: (_, __) => SizedBox(width: 20.w),
            itemBuilder: (_, i) {
              final v = values[i];
              return GlassContainer(
                width: 260.w,
                blur: 16,
                opacity: 0.1,
                borderRadius: BorderRadius.circular(24.r),
                padding: EdgeInsets.all(24.w),
                child: Column(
                  children: [
                    Icon(v.$2, size: 48.sp, color: AppColors.themeGreen),
                    SizedBox(height: 16.h),
                    Text(
                      v.$1,
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      v.$3,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: Colors.white70,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// PLEDGE
class _PledgeSection extends StatelessWidget {
  final pledges = const [
    (
      'Carbon Negative by 2025',
      Icons.bar_chart,
      'Remove more carbon than we emit across all operations',
    ),
    (
      '100% Renewable Powered',
      Icons.flash_on,
      'All offices and servers run on clean energy',
    ),
    (
      'B-Corp Certified',
      Icons.verified,
      'Highest standards of social & environmental performance',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blur: 18,
      opacity: 0.12,
      borderRadius: BorderRadius.circular(28.r),
      padding: EdgeInsets.all(32.w),
      child: Column(
        children: [
          Text(
            'Our Sustainability Pledge',
            style: GoogleFonts.inter(
              fontSize: 28.sp,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'We don\'t just sell clean energy — we live it.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
          ),
          SizedBox(height: 32.h),
          ...pledges.map(
            (p) => Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Row(
                children: [
                  Icon(p.$2, size: 36.sp, color: AppColors.themeGreen),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          p.$1,
                          style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          p.$3,
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
