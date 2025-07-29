import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';

class Solution4 extends StatelessWidget {
  const Solution4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp),
        ),
        title: Text(
          'Solution 4',
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
            children: [
              // Hero Section
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
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
                      'Know Before It Breaks.',
                      style: GoogleFonts.inter(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Suncube AI doesn\'t just track solar performance — it predicts and prevents failures before they cost you.',
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Preview AI Monitoring Panel',
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
              SizedBox(height: 20.h),
              // Status Cards Section
              Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 110.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 1.w),
                            padding: EdgeInsets.all(2.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'System Status',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Online',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'All systems operational',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(5.r),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_activity_sharp,
                                  color: Colors.blue,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Monitoring Points',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '247',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Active sensors',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(2.r),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shield,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Uptime',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '99.97%',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Last 365 days',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      padding: EdgeInsets.all(5.r),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.05),
                            Colors.white.withOpacity(0.1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Live System Status',
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'AI Predictive Alerts',
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          ListTile(
                            leading: Icon(
                              Icons.cloud,
                              color: Colors.orange,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Panel Cleaning Required',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Dust accumulation detected on panels 3-7. Efficiency reduced by 8%. Recommended cleaning within 48 hours.',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.trending_neutral_rounded,
                              color: Colors.green,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Temporary Shading Detected',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Tree shadow affecting Panel Row B. Consider trimming branches or adjusting panel angle.',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.tour_outlined,
                              color: Colors.red,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Inverter Anomaly',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Inverter 2 showing irregular output patterns. Schedule technician inspection immediately.',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
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
              // Monitoring Categories Section
              Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    Text(
                      'Monitoring Categories',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 110.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.wb_sunny,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Panel Performance',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '48 panels monitored',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                                Text(
                                  'Normal',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_box_outline_blank,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Inverter Health',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '3 inverters active',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                                Text(
                                  'Normal',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.cloud,
                                  color: Colors.orange,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Weather Impact',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Cloud coverage detected',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                                Text(
                                  'Advisory',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.grid_on,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Grid Connection',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Stable connection',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                                Text(
                                  'Normal',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
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
              SizedBox(height: 20.h),
              // AI Detection Capabilities Section
              Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    Text(
                      'AI Detection Capabilities',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 80.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.thermostat,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Hot spot detection',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.sunny,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Shading analysis',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.trending_down,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Performance degradation',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.cloud,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Weather correlation',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.grid_on,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Grid anomalies',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    color: Colors.white,
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
              SizedBox(height: 20.h),
              // Recent Activity Section
              Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    Text(
                      'Recent Activity',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
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
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 20.sp,
                            ),
                            title: Text(
                              '2 min ago: All systems performing optimally',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.cleaning_services,
                              color: Colors.blue,
                              size: 20.sp,
                            ),
                            title: Text(
                              '15 min ago: Panel cleaning alert cleared',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.sunny,
                              color: Colors.green,
                              size: 20.sp,
                            ),
                            title: Text(
                              '1 hour ago: Peak generation detected',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.alarm,
                              color: Colors.grey,
                              size: 20.sp,
                            ),
                            title: Text(
                              '3 hours ago: Morning startup sequence completed',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
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
              // Smart Anomaly Detection Section
              Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    Text(
                      'Smart Anomaly Detection',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
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
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Critical Alert',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              '20% drop in Panel Group B',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.battery_alert,
                              color: Colors.orange,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Warning Alert',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Low discharge from Battery Line 2',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.flash_on,
                              color: Colors.blue,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Info Alert',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Inverter efficiency below optimal range',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
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
              // Maintenance Scheduler Section
              Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    Text(
                      'Maintenance Scheduler',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
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
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.cleaning_services,
                              color: Colors.blue,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Panel Cleaning',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Due in 3 days',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.orange,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Inverter Inspection',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Due in 1 week',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.battery_full,
                              color: Colors.green,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Battery Health Check',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Due in 2 weeks',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
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
              // Alerts System Section
              Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    Text(
                      'Alerts System',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
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
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.notifications,
                              color: Colors.blue,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Alert Preferences',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Customize your notification preferences and escalation protocols',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.sms,
                              color: Colors.blue,
                              size: 20.sp,
                            ),
                            title: Text(
                              'SMS Alerts',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Critical system alerts',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.email,
                              color: Colors.blue,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Email Alerts',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Detailed reports and summaries',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.push_pin,
                              color: Colors.blue,
                              size: 20.sp,
                            ),
                            title: Text(
                              'Push Notifications',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Mobile app notifications',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white70,
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
              // Performance Over Time Section
              Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    Text(
                      'Performance Over Time',
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 110.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(5.r),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.graphic_eq,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Uptime %',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '99.97%',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Last 30 days',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(5.r),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: Colors.blue,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Avg Resolution Time',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '2.3h',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Issue resolution',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            padding: EdgeInsets.all(5.r),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.green,
                                  size: 24.sp,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Maintenance Logs',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '47',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Completed tasks',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
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
            ],
          ),
        ),
      ),
    );
  }
}
