import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class CommitmentPage extends StatelessWidget {
  const CommitmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp),
        ),
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
        flexibleSpace: GlassContainer(
          opacity: 0.2,
          blur: 10,
          borderRadius: BorderRadius.zero,
          child: Container(),
        ),
      ),
      body: LiquidBackground(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100.h),
              // Header Section
              GlassContainer(
                padding: EdgeInsets.all(20.w),
                opacity: 0.1,
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
              GlassContainer(
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
                      height: 150.h,
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
              SizedBox(height: 20.h),
              // Circular Hardware Advocacy Section
              GlassContainer(
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
                      'We only support panels made using recyclable materials and promote manufacturers with comprehensive reuse and repurpose programs.',
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 280.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          HardwareCard(
                            icon: Icons.terrain,
                            title: 'Recyclable Materials',
                            description:
                                'All supported solar panels use materials that can be fully recycled at end-of-life, reducing environmental impact.',
                          ),
                          HardwareCard(
                            icon: Icons.tour_sharp,
                            title: 'Preferred Vendors',
                            description:
                                'We maintain a curated list of manufacturers with proven sustainability and circular economy practices.',
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
              SizedBox(height: 20.h),
              // Carbon-Neutral Operations Section
              GlassContainer(
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
                      height: 170.h,
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
              SizedBox(height: 20.h),
              // Open Impact Reporting Section
              GlassContainer(
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
                    GlassContainer(
                      opacity: 0.05,
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
                            height: 150.h,
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
                  ],
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
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
    return GlassContainer(
      opacity: 0.1,
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
    return SizedBox(
      width: 200.w,
      child: GlassContainer(
        opacity: 0.1,
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
            Wrap(
              children: [
                Text(
                  description,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    color: Colors.white70,
                  ),
                ),
              ],
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
    return GlassContainer(
      opacity: 0.1,
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
    return GlassContainer(
      opacity: 0.1,
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
    );
  }
}
