import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class FinalCTA extends StatelessWidget {
  const FinalCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
      child: Column(
        children: [
          Text(
            'Ready to Transform Your Energy Future?',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Join the solar revolution with AI-powered intelligence and blockchain security.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: Colors.black54),
          ),
          SizedBox(height: 32.h),
          Wrap(
            spacing: 16.w,
            runSpacing: 16.h,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(LucideIcons.arrowRight, size: 16.sp),
                label: Text(
                  'Get Your Free Assessment',
                  style: TextStyle(fontSize: 16.sp),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF34B87C),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.w,
                    vertical: 18.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.w,
                    vertical: 18.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text(
                  'View Live Demo',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
