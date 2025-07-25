import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/widgets/step_tile.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  final steps = const [
    ('Smart Installation', LucideIcons.sun, '01'),
    ('Real-time Monitoring', LucideIcons.activity, '02'),
    ('Smart Grid Integration', LucideIcons.grid3x3, '03'),
    ('Automated Payments', LucideIcons.battery, '04'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE9F3E0),
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
      child: Column(
        children: [
          Text(
            'How It Works',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 12.h),
          Text(
            'Simple, Smart, Sustainable',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40.h),
          Wrap(
            spacing: 32.w,
            runSpacing: 32.h,
            alignment: WrapAlignment.center,
            children: steps.map((e) => StepTile(e)).toList(),
          ),
        ],
      ),
    );
  }
}
