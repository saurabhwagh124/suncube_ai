import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureCard extends StatelessWidget {
  final (String title, String description, IconData icon, Color color) data;

  const FeatureCard(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final (title, description, icon, color) = data;
    return Container(
      width: 260.w,
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Color(0xFFE9F3E0),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 56.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: color.withOpacity(.15),
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Icon(icon, size: 28.sp, color: color),
          ),
          SizedBox(height: 16.h),
          Text(
            title,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
