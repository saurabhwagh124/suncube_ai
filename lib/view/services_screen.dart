import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
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
  @override
  Widget build(BuildContext context) {
    final Map<String, Map<String, dynamic>> solutions = {
      'Resident Solar + AI': {
        'widget': Solution1Page(),
        'icon': LucideIcons.house,
        'context':
            'Optimize your home solar setup with AI-driven energy management.',
      },
      'Commercial & Industrial Solar': {
        'widget': Solution2Page(),
        'icon': LucideIcons.building,
        'context':
            'Power large-scale operations with tailored solar solutions.',
      },
      'Smart Grid & Virtual Power Plant': {
        'widget': Solution3Page(),
        'icon': LucideIcons.network,
        'context':
            'Integrate smart grid tech for an efficient energy ecosystem.',
      },
      'AI Monitoring & Predictive Maintenance': {
        'widget': Solution4(),
        'icon': LucideIcons.activity,
        'context':
            'Monitor systems in real-time and predict maintenance needs.',
      },
      'Data Insights & Weather Forecasting': {
        'widget': Solution5Page(),
        'icon': LucideIcons.cloudRain,
        'context': 'Gain insights with analytics and weather forecasting.',
      },
      'Cloud Dashboard & Multi-Site Management': {
        'widget': Solution6Page(),
        'icon': LucideIcons.layoutDashboard,
        'context': 'Manage multiple sites with a cloud-based dashboard.',
      },
    };

    final solutionKeys = solutions.keys.toList();

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar:
          (widget.showAppBar)
              ? AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                ),
                title: Text(
                  'Services',
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
              )
              : null,
      body: Container(
        margin: EdgeInsets.only(top: 84.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060C09), Color(0xFF1A231F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 18.h,
            left: 16.w,
            right: 16.w,
            bottom: 24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Introduction Section
              Text(
                'Explore Our Solutions',
                style: GoogleFonts.inter(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Discover how Suncube AI transforms energy management with innovative solutions tailored to your needs. From residential savings to industrial efficiency, our AI-powered tools lead the future of sustainable energy.',
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 16.h),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.lightbulb_outline),
                label: Text(
                  'Get Started Today',
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.themeGreen,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 12.h,
                  ),
                  elevation: 6,
                ),
              ),
              SizedBox(height: 32.h),

              // Featured Solution Highlight
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.themeGreen.withOpacity(0.2),
                      Colors.white.withOpacity(0.1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Featured Solution',
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Resident Solar + AI',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.themeGreen,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      'Save up to 30% on energy costs with AI-optimized solar panels for your home. Experience real-time monitoring and predictive savings.',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => Solution1Page()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColors.themeGreen),
                        foregroundColor: AppColors.themeGreen,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 10.h,
                        ),
                      ),
                      child: Text(
                        'Learn More',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.h),

              // Solutions Grid
              SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: solutionKeys.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    final title = solutionKeys[index];
                    final icon = solutions[title]!['icon'] as IconData;
                    final contextText = solutions[title]!['context'] as String;
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (_) => solutions[title]!['widget'] as Widget,
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.themeGreen.withOpacity(0.05),
                              Colors.white.withOpacity(0.1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(12.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 10,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                icon,
                                size: 36.r,
                                color: AppColors.themeGreen,
                              ),
                              SizedBox(height: 12.h),
                              Flexible(
                                child: Text(
                                  title,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Flexible(
                                child: Text(
                                  contextText,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    color: Colors.white70,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 32.h),

              // Testimonials/Stats Section
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.05),
                      AppColors.themeGreen.withOpacity(0.1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What Our Users Say',
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      '"Suncube AI saved us 25% on energy costs with their residential solution!" - Priya S., Mumbai',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Stats: 500+ homes optimized, 2.5M kWh saved annually.',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
