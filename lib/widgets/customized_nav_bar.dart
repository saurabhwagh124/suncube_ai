// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:suncube_ai/view/about_us.dart';
// import 'package:suncube_ai/view/dashboard_screen.dart';
// import 'package:suncube_ai/view/landing_page.dart';
// import 'package:suncube_ai/view/services_screen.dart';

// class CustomizedNavBar extends StatelessWidget {
//   final int selectedIndex;
//   final Function(int) onItemTapped;

//   const CustomizedNavBar({
//     super.key,
//     required this.selectedIndex,
//     required this.onItemTapped,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 220.w, // much narrower
//       height: 70.h,
//       padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.h),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Colors.black.withOpacity(0.2),
//             Colors.black.withOpacity(0.4),
//           ],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//         borderRadius: BorderRadius.circular(30.r),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _buildNavItem(
//             context,
//             icon: LucideIcons.house,
//             index: 0,
//             label: 'Home',
//             page: const LandingPage(),
//           ),
//           // No (or minimal) sized boxes for ultra-closeness
//           _buildNavItem(
//             context,
//             icon: LucideIcons.settings,
//             index: 1,
//             label: 'Services',
//             page: const ServicesScreen(),
//           ),
//           _buildNavItem(
//             context,
//             icon: LucideIcons.squareChartGantt,
//             index: 2,
//             label: 'Guidelines',
//             page: const FeaturesScreen(),
//           ),
//           _buildNavItem(
//             context,
//             icon: LucideIcons.wallet,
//             index: 3,
//             label: 'About Us',
//             page: const AboutUs(),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNavItem(
//     BuildContext context, {
//     required IconData icon,
//     required int index,
//     required String label,
//     required Widget page,
//   }) {
//     bool isSelected = selectedIndex == index;

//     return GestureDetector(
//       onTap: () {
//         if (!isSelected) {
//           onItemTapped(index);
//         }
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 200),
//         width: 44.w, // smaller nav item width for tight layout
//         height: 44.h,
//         margin: EdgeInsets.symmetric(horizontal: 2.w),
//         decoration: BoxDecoration(
//           color:
//               isSelected ? Colors.white.withOpacity(0.18) : Colors.transparent,
//           borderRadius: BorderRadius.circular(15.r),
//           boxShadow:
//               isSelected
//                   ? [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.15),
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ]
//                   : [],
//         ),
//         alignment: Alignment.center,
//         child: Icon(
//           icon,
//           color:
//               isSelected
//                   ? const Color(0xFF73E0A9)
//                   : Colors.white.withOpacity(0.6),
//           size: 24.sp,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/view/Dashboards/user_dashboard.dart';
import 'package:suncube_ai/view/billings_blockchain.dart';
import 'package:suncube_ai/view/landing_page.dart';
import 'package:suncube_ai/view/services_screen.dart';
// import 'package:suncube_ai/view/billings_page.dart'; // Add your billing page import here

class CustomizedNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomizedNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      // tight navbar
      height: 70.h,
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.black, // SOLID BACKGROUND COLOR
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNavItem(
            context,
            icon: LucideIcons.house,
            index: 0,
            label: 'Home',
            page: const LandingPage(),
          ),
          _buildNavItem(
            context,
            icon: LucideIcons.settings,
            index: 1,
            label: 'Services',
            page: const ServicesScreen(),
          ),
          _buildNavItem(
            context,
            icon: LucideIcons.layoutDashboard,
            index: 2,
            label: 'Guidelines',
            page: const UserDashboardHome(),
          ),
          _buildNavItem(
            context,
            icon: LucideIcons.wallet,
            index: 3,
            label: 'Billings', // Updated label
            page:  BillingPage(), // Updated page widget
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required IconData icon,
    required int index,
    required String label,
    required Widget page,
  }) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          onItemTapped(index);
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(builder: (_) => page),
          // );
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 44.w,
        height: 44.h,
        margin: EdgeInsets.symmetric(horizontal: 2.w),
        decoration: BoxDecoration(
          color:
              isSelected ? Colors.white.withOpacity(0.18) : Colors.transparent,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow:
              isSelected
                  ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ]
                  : [],
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          color:
              isSelected
                  ? const Color(0xFF73E0A9)
                  : Colors.white.withOpacity(0.6),
          size: 24.sp,
        ),
      ),
    );
  }
}
