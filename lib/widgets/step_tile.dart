import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StepTile extends StatelessWidget {
  final (String title, IconData icon, String number, String description) data;

  const StepTile(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final (title, icon, number, description) = data;
    return GestureDetector(
      onTap: () {}, // Add tap functionality if needed
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: 240.w,
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: const Color(0xFF73E0A9).withOpacity(0.2),
            width: 1.w,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                gradient: _grad,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF73E0A9).withOpacity(0.3),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Icon(icon, size: 26.sp, color: Colors.white),
            ),
            SizedBox(height: 12.h),
            Text(
              number,
              style: GoogleFonts.inter(
                fontSize: 32.sp,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF73E0A9).withOpacity(0.2),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF060C09),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.h),
            Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF060C09).withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static const _grad = LinearGradient(
    colors: [Color(0xFF73E0A9), Color(0xFF34B87C)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
