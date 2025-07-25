import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StepTile extends StatelessWidget {
  final (String title, IconData icon, String number) data;

  const StepTile(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final (title, icon, number) = data;
    return SizedBox(
      width: 220.w,
      child: Column(
        children: [
          Container(
            width: 72.w,
            height: 72.h,
            decoration: BoxDecoration(gradient: _grad, shape: BoxShape.circle),
            child: Icon(icon, size: 32.sp, color: Colors.white),
          ),
          SizedBox(height: 12.h),
          Text(
            number,
            style: GoogleFonts.inter(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black12,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 6.h),
          Text(
            'AI-optimized panel placement and grid integration',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  static const _grad = LinearGradient(
    colors: [Color(0XFF34B87C), Color.fromARGB(255, 20, 106, 67)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
