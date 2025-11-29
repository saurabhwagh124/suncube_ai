import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class LiveEnergyFlow extends StatelessWidget {
  const LiveEnergyFlow({super.key});

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
                Icon(LucideIcons.zap),
                Text(
                  "Live Energy Flow",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.lightGreenAccent,
              child: Row(children: [Text("Solar Generation"), Text("2.4kW")]),
            ),
            Container(
              color: Colors.blueAccent,
              child: Row(children: [Text("Home Consumption"), Text("1.8kW")]),
            ),
            Container(
              color: Colors.purpleAccent,
              child: Row(children: [Text("Grid Export"), Text("0.6kW")]),
            ),
          ],
        ),
      ),
    );
  }
}
