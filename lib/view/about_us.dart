import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suncube_ai/utils/AppColors.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
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
                      'Our Story',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Pioneering the Future of Solar Energy',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Founded by energy and AI experts, Suncube AI is on a mission to accelerate the world\'s transition to sustainable energy through intelligent automation and blockchain innovation.',
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
                        'Our Story',
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
              // Content Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Born from Innovation, Driven by Purpose',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Suncube AI was founded in 2021 by a team of energy experts and AI researchers who saw the untapped potential of combining artificial intelligence with solar energy management.',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'After witnessing the inefficiencies in traditional solar installations and the missed opportunities for optimization, our founders set out to create a platform that would revolutionize how solar energy systems operate, maintain themselves, and integrate with the smart grid.',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Today, we\'re proud to be leading the charge in AI-powered solar management, helping thousands of customers maximize their energy production while contributing to a sustainable future.',
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Founded',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    '2021',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'kWh Managed',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    '50M+',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Customers',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    '1,500+',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tons CO₂ Saved',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    '25,000',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Leadership Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Meet Our Leadership Team',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Experienced leaders combining deep expertise in energy, technology, and sustainability.',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            LeadershipCard(
                              name: 'Dr. Sarah Chen',
                              role: 'CEO & Co-Founder',
                              description:
                                  'Former Tesla Energy VP with 15+ years in renewable energy and AI research.',
                              education:
                                  'PhD in Electrical Engineering, Stanford University',
                            ),
                            LeadershipCard(
                              name: 'Marcus Rodriguez',
                              role: 'CTO & Co-Founder',
                              description:
                                  'Ex-Google AI researcher specializing in machine learning and energy optimization.',
                              education: 'MS Computer Science, MIT',
                            ),
                            LeadershipCard(
                              name: 'Dr. Emily Watson',
                              role: 'VP of Sustainability',
                              description:
                                  'Environmental scientist and clean energy advocate with focus on carbon reduction.',
                              education:
                                  'PhD Environmental Science, UC Berkeley',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Mission & Values Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What Drives Us',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MissionCard(
                              icon: Icons.track_changes_rounded,
                              title: 'Mission',
                              description:
                                  'Accelerate global adoption of clean energy through intelligent automation and innovation.',
                            ),
                            MissionCard(
                              icon: Icons.lightbulb,
                              title: 'Innovation',
                              description:
                                  'Continuously push the boundaries of what\'s possible with AI and renewable energy.',
                            ),
                            MissionCard(
                              icon: Icons.energy_savings_leaf_rounded,
                              title: 'Sustainability',
                              description:
                                  'Every decision we make considers environmental impact and long-term sustainability.',
                            ),
                            MissionCard(
                              icon: Icons.group,
                              title: 'Community',
                              description:
                                  'Build strong partnerships and empower communities to achieve energy independence.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Sustainability Pledge Section
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.themeGreen.withOpacity(0.3),
                      const Color(0xFF106B43).withOpacity(0.2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our Sustainability Pledge',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'We\'re committed to not just providing clean energy solutions, but operating as a carbon-negative company.',
                        style: GoogleFonts.inter(
                          color: Colors.white70,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PledgeCard(
                              icon: Icons.bar_chart_outlined,
                              title: 'Carbon Negative by 2025',
                              description:
                                  'We will remove more carbon from the atmosphere than we produce across all operations.',
                            ),
                            PledgeCard(
                              icon: Icons.trending_up,
                              title: '100% Renewable Energy',
                              description:
                                  'All our facilities and operations are powered by renewable energy sources.',
                            ),
                            PledgeCard(
                              icon: Icons.rate_review_sharp,
                              title: 'B-Corp Certification',
                              description:
                                  'Certified as a business that meets the highest standards of social and environmental performance.',
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

class LeadershipCard extends StatelessWidget {
  final String name;
  final String role;
  final String description;
  final String education;

  LeadershipCard({
    required this.name,
    required this.role,
    required this.description,
    required this.education,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundColor: AppColors.themeGreen.withOpacity(0.3),
            ),
            SizedBox(height: 10.h),
            Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              role,
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
            ),
            SizedBox(height: 10.h),
            Text(
              description,
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
            ),
            Text(
              education,
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}

class MissionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  MissionCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
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

class PledgeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  PledgeCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.themeGreen.withOpacity(0.2),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Icon(icon, size: 48.r, color: Colors.white),
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
