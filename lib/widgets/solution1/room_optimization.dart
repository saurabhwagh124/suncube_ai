import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomOptimization extends StatelessWidget {
  const RoomOptimization({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              spacing: 10.w,
              children: [
                Icon(Icons.home),
                Text(
                  "Room Optimization",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text("Living Room"),
                Spacer(),
                SizedBox(
                  width: 200.w,
                  child: LinearProgressIndicator(
                    semanticsLabel: "75%",
                    semanticsValue: "75%",
                    borderRadius: BorderRadius.circular(15.r),
                    minHeight: 10.h,
                    value: 0.75,
                    backgroundColor: Colors.grey.shade300,
                    valueColor: AlwaysStoppedAnimation(Colors.yellow),
                  ),
                ),
                Text("75%"),
              ],
            ),
            Row(
              children: [
                Text("Kitchen"),
                Spacer(),
                SizedBox(
                  width: 200.w,
                  child: LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(15.r),
                    minHeight: 10.h,
                    value: 0.90,
                    backgroundColor: Colors.grey.shade300,
                    valueColor: AlwaysStoppedAnimation(Colors.orange),
                  ),
                ),
                Text("90%"),
              ],
            ),
            Row(
              children: [
                Text("Bedrooms"),
                Spacer(),
                SizedBox(
                  width: 200.w,
                  child: LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(15.r),
                    minHeight: 10.h,
                    value: 0.45,
                    backgroundColor: Colors.grey.shade300,
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                  ),
                ),
                Text("45%"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
