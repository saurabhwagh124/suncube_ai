import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/view/billings_blockchain.dart';
import 'package:suncube_ai/view/dashboard_screen.dart';
import 'package:suncube_ai/view/login_screen.dart';
import 'package:suncube_ai/view/services_screen.dart';
import 'package:suncube_ai/widgets/app_sidebar.dart';
import 'package:suncube_ai/widgets/benefits_section.dart';
import 'package:suncube_ai/widgets/customized_nav_bar.dart';
import 'package:suncube_ai/widgets/final_cta.dart';
import 'package:suncube_ai/widgets/hero_section.dart';
import 'package:suncube_ai/widgets/how_it_works.dart';
import 'package:suncube_ai/widgets/impact_section.dart';
import 'package:suncube_ai/widgets/predictive_alert.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get status bar height for padding adjustment if needed later (optional)
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF060C09),
      drawer: const AppSidebar(),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(LucideIcons.menu, color: Colors.white, size: 22.sp),
        ),
        backgroundColor: Color(0xFF060C09).withOpacity(0.9),
        automaticallyImplyLeading: false,

        title: Text(
          'Suncube AI',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w800,
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'Login',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF73E0A9),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 64.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060C09), Color(0xFF1A231F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    const HeroSection(),
                    // SizedBox(
                    //   // height: 20.h,
                    // ), // reduce from large values like 50.h or 60.h
                    const BenefitsSection(),
                    // SizedBox(height: 20.h),
                    const HowItWorks(),
                    // SizedBox(height: 20.h),
                    const PredictiveAlerts(),
                    // SizedBox(height: 20.h),
                    const ImpactSection(),
                    // SizedBox(height: 20.h),
                    const FinalCTA(),
                    SizedBox(height: 50.h), // bottom padding if desired
                  ]),
                ),
              ],
            ),
            const ServicesScreen(),
            const DashboardScreen(),
            const BillingPage(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.05),
                Colors.grey.withOpacity(0.1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: CustomizedNavBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// class _StickyHeader extends StatelessWidget {
//   final VoidCallback function;
//
//   const _StickyHeader({required this.function});
//
//   @override
//   Widget build(BuildContext context) {
//     final double statusBarHeight = MediaQuery.of(context).padding.top;
//
//     return SliverAppBar(
//       pinned: true,
//       floating: false,
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       toolbarHeight: 64.h + statusBarHeight,
//
//       // Add status bar height here
//       flexibleSpace: Container(
//         padding: EdgeInsets.only(
//           top: statusBarHeight,
//         ), // Padding to avoid notch
//         decoration: BoxDecoration(
//           color: const Color(0xFF060C09).withOpacity(0.9),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 8,
//               offset: const Offset(0, 2),
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
//               child: Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       function;
//                     },
//                     child: Icon(
//                       LucideIcons.menu,
//                       color: Colors.white,
//                       size: 22.sp,
//                     ),
//                   ),
//                   SizedBox(width: 12.w),
//                   Expanded(
//                     child: Text(
//                       'Suncube AI',
//                       style: GoogleFonts.inter(
//                         fontWeight: FontWeight.w800,
//                         fontSize: 20.sp,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const LoginScreen(),
//                         ),
//                       );
//                     },
//                     style: TextButton.styleFrom(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 16.w,
//                         vertical: 8.h,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.r),
//                       ),
//                     ),
//                     child: Text(
//                       'Login',
//                       style: GoogleFonts.inter(
//                         fontSize: 14.sp,
//                         fontWeight: FontWeight.w600,
//                         color: const Color(0xFF73E0A9),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

const _grad = LinearGradient(
  colors: [Color(0xFF73E0A9), Color(0xFF34B87C)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
