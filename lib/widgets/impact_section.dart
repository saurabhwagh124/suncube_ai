import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';

class ImpactSection extends StatelessWidget {
  const ImpactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
      decoration: BoxDecoration(color: AppColors.themeGreen),
      child: Column(
        children: [
          Text(
            'Delivering Real Impact',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40.h),
          Wrap(
            spacing: 60.w,
            runSpacing: 30.h,
            alignment: WrapAlignment.center,
            children: const [
              _ImpactStat('2.5M+', 'kWh Generated', 'This month'),
              _ImpactStat('98.5%', 'System Uptime', 'AI-optimized'),
              _ImpactStat('1 200+', 'Tons CO₂ Saved', 'Environmental impact'),
            ],
          ),
        ],
      ),
    );
  }
}

class _ImpactStat extends StatelessWidget {
  final String value, label, sub;

  const _ImpactStat(this.value, this.label, this.sub);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 42.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            color: Colors.white.withOpacity(.9),
          ),
        ),
        Text(
          sub,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            color: Colors.white.withOpacity(.7),
          ),
        ),
      ],
    );
  }
}
