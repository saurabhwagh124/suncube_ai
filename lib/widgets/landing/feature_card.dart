import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

class FeatureCard extends StatelessWidget {
  final (String, String, IconData, Color) data;

  const FeatureCard(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final (title, desc, icon, accentColor) = data;
    return GestureDetector(
      onTap: () {},
      child: GlassContainer(
        width: 260.w,
        blur: 12,
        opacity: 0.08,
        color: accentColor,
        borderRadius: BorderRadius.circular(24.r),
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.15),
                shape: BoxShape.circle,
                border: Border.all(
                  color: accentColor.withOpacity(0.3),
                  width: 1.w,
                ),
              ),
              child: Icon(icon, size: 28.sp, color: accentColor),
            ),
            SizedBox(height: 16.h),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
