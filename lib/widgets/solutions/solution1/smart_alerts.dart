import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class SmartAlerts extends StatelessWidget {
  const SmartAlerts({super.key});

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
                Icon(LucideIcons.shieldAlert),
                Text(
                  "Smart Alerts",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.yellowAccent.shade100,
              child: Column(
                children: [
                  Text("High consumption detected in the kitchen"),
                  Text("2 minutes ago"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.green.shade100,
              child: Column(
                children: [
                  Text("Optimal generation conditions"),
                  Text("5 minutes ago"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.blueAccent.shade100,
              child: Column(
                children: [
                  Text("Battery at 85% - Grid export active"),
                  Text("10 minutes ago"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
