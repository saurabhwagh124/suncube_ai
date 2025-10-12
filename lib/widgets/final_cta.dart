import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/view/contact_page.dart';

class FinalCTA extends StatelessWidget {
  const FinalCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
        decoration: BoxDecoration(
          color: const Color(0xFF060C09).withOpacity(0.4),
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.05),
              const Color(0xFF1A231F).withOpacity(0.3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Ready to Transform Your Energy Future?',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 28.sp,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'Join the solar revolution with AI-powered intelligence and blockchain security.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.75),
                height: 1.5,
              ),
            ),
            SizedBox(height: 32.h),
            Wrap(
              spacing: 16.w,
              runSpacing: 16.h,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactPage()),
                    );
                  },
                  icon: Icon(LucideIcons.arrowRight, size: 16.sp),
                  label: Text(
                    'Get Your Free Assessment',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF73E0A9),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 16.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    elevation: 0,
                    shadowColor: const Color(0xFF73E0A9).withOpacity(0.3),
                  ),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactPage()),
                    );
                  },
                  icon: Icon(LucideIcons.play, size: 16.sp),
                  label: Text(
                    'View Live Demo',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: const Color(0xFF73E0A9),
                      width: 1.5.w,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 16.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    foregroundColor: const Color(0xFF73E0A9),
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
