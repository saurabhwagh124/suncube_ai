import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/common_app_%20bar.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

class Solution3Page extends StatelessWidget {
  final String title;
  const Solution3Page({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return LiquidBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
      appBar: CommonAppBar(title: title),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              GlassContainer(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
                color: AppColors.themeGreen,
                opacity: 0.2,
                borderRadius: BorderRadius.circular(16.r),
                child: Column(
                  children: [
                    Text(
                      'Grid Integration & Energy Trading',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'The Grid Is Getting Smarter — Are You In?',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Turn homes, offices, and industries into one seamless, intelligent energy ecosystem.',
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
                        'Explore Smart Grid Demo',
                        style: GoogleFonts.inter(fontSize: 14.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: AppColors.themeGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              // Content Section
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What Is a Virtual Power Plant?',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Many homes → Central logic → Energy balancing',
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GlassContainer(
                          padding: EdgeInsets.all(16.w),
                          borderRadius: BorderRadius.circular(12.r),
                          child: Column(
                            children: [
                              Text(
                                'Distributed Energy Resources',
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    'Solar panels across 1,247 homes',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    'Battery storage systems',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    'Smart thermostats & appliances',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    'EV charging stations',
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
                        SizedBox(height: 20.h),
                        GlassContainer(
                          padding: EdgeInsets.all(16.w),
                          borderRadius: BorderRadius.circular(12.r),
                          child: Column(
                            children: [
                              Text(
                                'Central AI Control Center',
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Real-time monitoring',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Chip(
                                    label: Text(
                                      'Active',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    backgroundColor: AppColors.themeGreen,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Predictive analytics',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Chip(
                                    label: Text(
                                      'Active',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    backgroundColor: AppColors.themeGreen,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Load balancing',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Chip(
                                    label: Text(
                                      'Active',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    backgroundColor: AppColors.themeGreen,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Grid stability',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Chip(
                                    label: Text(
                                      'Active',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    backgroundColor: AppColors.themeGreen,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
