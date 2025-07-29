import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suncube_ai/utils/AppColors.dart';

class CommitmentPage extends StatelessWidget {
  const CommitmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Our Commitment',
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF060C09).withOpacity(0.9),
                const Color(0xFF1A231F).withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060C09), Color(0xFF1A231F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.themeGreen.withOpacity(0.3),
                      const Color(0xFF106B43).withOpacity(0.2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'We\'re not just a company — we\'re a movement. Join us in building a sustainable future.',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'We Don\'t Just Build Solar Tech. We Live It.',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'From our development choices to cloud hosting, every decision at Suncube AI is rooted in sustainability.',
                      style: GoogleFonts.inter(
                        color: Colors.white70,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Read Our Sustainability Pledge',
                        style: GoogleFonts.inter(fontSize: 14.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: AppColors.themeGreen,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              // Low-Carbon Engineering Practices Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Low-Carbon Engineering Practices',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Our backend hosting on green data centers and optimized code efficiency means we use 37% fewer compute cycles than average platforms.',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        height: 125.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            EngineeringCard(
                              icon: Icons.bar_chart,
                              title: 'Traditional Architecture',
                              description: 'Compute Usage: 100%',
                              color: Colors.red,
                            ),
                            EngineeringCard(
                              icon: Icons.flash_on,
                              title: 'Suncube Optimized Architecture',
                              description: 'Compute Usage: 63%',
                              color: AppColors.themeGreen,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Circular Hardware Advocacy Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Circular Hardware Advocacy',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'We only support panels made using recyclable materials\nand promote manufacturers with\ncomprehensive reuse and repurpose programs.',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        height: 155.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            HardwareCard(
                              icon: Icons.terrain,
                              title: 'Recyclable Materials',
                              description:
                                  'All supported solar panels use materials \nthat can be fully recycled at end-of-life,\nreducing environmental impact.',
                            ),
                            HardwareCard(
                              icon: Icons.tour_sharp,
                              title: 'Preferred Vendors',
                              description:
                                  'We maintain a curated list of manufacturers\nwith proven sustainability and circular economy practices.',
                            ),
                            HardwareCard(
                              icon: Icons.water_outlined,
                              title: 'Reuse Programs',
                              description:
                                  'Supporting manufacturers that offer comprehensive\nreuse and repurpose programs for end-of-life panels.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Carbon-Neutral Operations Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Carbon-Neutral Operations',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'We track our emissions and support offset projects to maintain carbon-neutral operations across all our activities.',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        height: 135.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            CarbonCard(
                              icon: Icons.terrain_rounded,
                              title: 'Our Carbon Footprint',
                              description:
                                  'Office Emissions: 24.5 tons CO₂\nOffset Projects: 25.2 tons CO₂',
                            ),
                            CarbonCard(
                              icon: Icons.map,
                              title: 'Reforestation Zones We Support',
                              description:
                                  'Interactive Map\nReforested areas we support',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Open Impact Reporting Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Open Impact Reporting',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Built with open-source values and planet-first decisions. We believe in complete transparency about our environmental impact.',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Card(
                        color: Colors.white.withOpacity(0.1),
                        child: Padding(
                          padding: EdgeInsets.all(16.w),
                          child: Column(
                            children: [
                              Text(
                                'Monthly Company Sustainability Report',
                                style: GoogleFonts.inter(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Preview of our comprehensive environmental impact assessment',
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  color: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 20.h),
                              SizedBox(
                                height: 125.h,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    ImpactCard(
                                      icon: Icons.energy_savings_leaf,
                                      title: 'Energy Usage',
                                      value: '-37%',
                                      color: AppColors.themeGreen,
                                    ),
                                    ImpactCard(
                                      icon: Icons.cloud,
                                      title: 'Green Hosting',
                                      value: '100%',
                                      color: Colors.blue,
                                    ),
                                    ImpactCard(
                                      icon: Icons.eco,
                                      title: 'Carbon Offset',
                                      value: '+0.7t',
                                      color: Colors.purple,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.h),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Download Company Impact PDF',
                                  style: GoogleFonts.inter(fontSize: 14.sp),
                                ),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: AppColors.themeGreen,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GlassCard extends StatelessWidget {
  final Widget child;

  GlassCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.05),
            Colors.white.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

class EngineeringCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  const EngineeringCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48.r, color: color),
            SizedBox(height: 10.h),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              description,
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}

class HardwareCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const HardwareCard({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48.r, color: AppColors.themeGreen),
            SizedBox(height: 10.h),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              description,
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}

class CarbonCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const CarbonCard({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48.r, color: AppColors.themeGreen),
            SizedBox(height: 10.h),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              description,
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}

class ImpactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  const ImpactCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48.r, color: color),
            SizedBox(height: 10.h),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              value,
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
