import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/view/about_us.dart';
import 'package:suncube_ai/view/features_screen.dart';
import 'package:suncube_ai/view/landing_page.dart';
import 'package:suncube_ai/view/services_screen.dart';

class CustomizedNavBar extends StatelessWidget {
  final int selectedIndex;

  const CustomizedNavBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
      width: 300.w,
      child: NavigationBar(
        selectedIndex: selectedIndex,
        height: 70.h,
        backgroundColor: Colors.black,
        indicatorColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(LucideIcons.settings),
            label: 'Services',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.library),
            label: 'Features',
          ),
          NavigationDestination(icon: Icon(Icons.more), label: 'About Us'),
        ],
        onDestinationSelected: (value) {
          switch (value) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LandingPage()),
              );
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ServicesScreen()),
              );
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => FeaturesScreen()),
              );

            case 3:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AboutUs()),
              );
          }
        },
      ),
    );
  }
}
