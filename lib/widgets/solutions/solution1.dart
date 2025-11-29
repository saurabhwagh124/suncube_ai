import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

class Solution1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LiquidBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp),
        ),
        title: Text(
          'Solution1',
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(),
      ),
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
                      'AI-Powered Optimization',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Smart Solar Starts at Home.',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'From rooftops to dashboards — make every ray count with AI-enhanced solar for your home.',
                      style: GoogleFonts.inter(
                        color: Colors.white70,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: AppColors.themeGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      child: Text(
                        'Get a Smart Solar Plan',
                        style: GoogleFonts.inter(fontSize: 14.sp),
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
                      'Raw vs Optimized Yield',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GlassContainer(
                          width: double.infinity,
                          margin: EdgeInsets.all(10.r),
                          padding: EdgeInsets.all(12.w),
                          borderRadius: BorderRadius.circular(12.r),
                          child: Column(
                            children: [
                              Text(
                                'Solar Generation',
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                '4.5 kW',
                                style: GoogleFonts.inter(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                '+12% from yesterday',
                                style: GoogleFonts.inter(
                                  color: AppColors.themeGreen,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GlassContainer(
                          width: double.infinity,
                          margin: EdgeInsets.all(10.r),
                          padding: EdgeInsets.all(12.w),
                          borderRadius: BorderRadius.circular(12.r),
                          child: Column(
                            children: [
                              Text(
                                'Consumption',
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                '3.3 kW',
                                style: GoogleFonts.inter(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Normal',
                                style: GoogleFonts.inter(
                                  color: Colors.blue,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GlassContainer(
                          width: double.infinity,
                          margin: EdgeInsets.all(10.r),
                          padding: EdgeInsets.all(12.w),
                          borderRadius: BorderRadius.circular(12.r),
                          child: Column(
                            children: [
                              Text(
                                'Battery Level',
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                '84%',
                                style: GoogleFonts.inter(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              LinearProgressIndicator(
                                value: 0.84,
                                backgroundColor: Colors.grey[200],
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.themeGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GlassContainer(
                          width: double.infinity,
                          margin: EdgeInsets.all(10.r),
                          padding: EdgeInsets.all(12.w),
                          borderRadius: BorderRadius.circular(12.r),
                          child: Column(
                            children: [
                              Text(
                                'Grid Feed-in',
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                '1.2 kW',
                                style: GoogleFonts.inter(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Earning Credits',
                                style: GoogleFonts.inter(
                                  color: AppColors.themeGreen,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    GlassContainer(
                      padding: EdgeInsets.all(16.w),
                      borderRadius: BorderRadius.circular(12.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Optimization Benefits',
                            style: GoogleFonts.inter(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Standard Output',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: Colors.white70,
                                ),
                              ),
                              Text(
                                '24.5 kWh/day',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'AI-Optimized Output',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: Colors.white70,
                                ),
                              ),
                              Text(
                                '31.2 kWh/day',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Efficiency Gain',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: Colors.white70,
                                ),
                              ),
                              Text(
                                '+27.3%',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: Colors.white,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AI Learning Factors',
                            style: GoogleFonts.inter(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            '• Weather pattern analysis',
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            '• Shading optimization',
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            '• Usage pattern matching',
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            '• Seasonal adjustments',
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
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
