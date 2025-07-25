import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class PredictiveAlerts extends StatelessWidget {
  const PredictiveAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
      child: Column(
        children: [
          Text(
            'AI Intelligence',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 12.h),
          Text(
            'Predictive Maintenance in Action',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Our AI continuously monitors your system and predicts issues before they impact performance.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: Colors.black54),
          ),
          SizedBox(height: 32.h),
          Container(
            width: 600.w,
            constraints: BoxConstraints(maxWidth: 600.w),
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      LucideIcons.triangleAlert,
                      color: Color(0XFF34B87C),
                      size: 22.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'AI Predictive Alerts',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0XFF34B87C).withOpacity(.15),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        '3 Active',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                _AlertTile(
                  'Panel Cleaning Required',
                  'Dust accumulation detected on panels 3-7. Efficiency reduced by 8%.',
                  94,
                  Colors.orange,
                ),
                _AlertTile(
                  'Temporary Shading Detected',
                  'Tree shadow affecting Panel Row B...',
                  87,
                  Colors.blue,
                ),
                _AlertTile(
                  'Inverter Anomaly',
                  'Inverter 2 showing irregular output patterns...',
                  96,
                  Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AlertTile extends StatelessWidget {
  final String title, desc;
  final int confidence;
  final Color color;

  const _AlertTile(this.title, this.desc, this.confidence, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: color.withOpacity(.08),
        border: Border.all(color: color.withOpacity(.3)),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: color.withOpacity(.2),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  '$confidence% AI Confidence',
                  style: TextStyle(fontSize: 11.sp),
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Text(desc, style: TextStyle(fontSize: 13.sp)),
        ],
      ),
    );
  }
}
