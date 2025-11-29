import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/user_data.dart';
import 'package:suncube_ai/view/dashboard/Dashboards/user_dashboard.dart';
import 'package:suncube_ai/view/pages/services/billings_blockchain.dart';
import 'package:suncube_ai/view/auth/login_screen.dart';
import 'package:suncube_ai/view/pages/services/services_screen.dart';
import 'package:suncube_ai/widgets/common/app_sidebar.dart';
import 'package:suncube_ai/widgets/landing/benefits_section.dart';
import 'package:suncube_ai/widgets/common/customized_nav_bar.dart';
import 'package:suncube_ai/widgets/common/final_cta.dart';
import 'package:suncube_ai/widgets/landing/hero_section.dart';
import 'package:suncube_ai/widgets/landing/how_it_works.dart';
import 'package:suncube_ai/widgets/landing/impact_section.dart';
import 'package:suncube_ai/widgets/solutions/predictive_alert.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final userData = UserData();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  final pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Future.delayed(Duration.zero, () {
      pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 100),
        curve: Curves.easeIn,
      );
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
          (userData.read<bool>('isLogged') ?? false)
              ? (_selectedIndex == 2)
                  ? Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: Center(
                      child: Text(
                        (userData.read<String>("role") != null)
                            ? userData.read<String>("role") ?? ""
                            : 'User',
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                  : SizedBox.shrink()
              : TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
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
      body: PageView(
        controller: pageController,
        children: [
          landingPageView(),
          ServicesScreen(),
          UserDashboardHome(),
          BillingPage(),
        ],
        onPageChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
      // floatingActionButton: Padding(
      //   padding: EdgeInsets.only(bottom: 16.h),
      //   child: Container(
      //     decoration: BoxDecoration(
      //       color: Colors.white.withOpacity(0.1),
      //       borderRadius: BorderRadius.circular(12.r),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.black.withOpacity(0.1),
      //           blurRadius: 10,
      //           offset: const Offset(0, 4),
      //         ),
      //       ],
      //       gradient: LinearGradient(
      //         colors: [
      //           Colors.white.withOpacity(0.05),
      //           Colors.grey.withOpacity(0.1),
      //         ],
      //         begin: Alignment.topLeft,
      //         end: Alignment.bottomRight,
      //       ),
      //     ),
      //     child: CustomizedNavBar(
      //       selectedIndex: _selectedIndex,
      //       onItemTapped: _onItemTapped,
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomizedNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

Widget landingPageView() {
  return LiquidBackground(
    child: Container(
      margin: EdgeInsets.only(top: 64.h),
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const HeroSection(),
              const BenefitsSection(),
              const HowItWorks(),
              const PredictiveAlerts(),
              const ImpactSection(),
              const FinalCTA(),
              SizedBox(height: 50.h),
            ]),
          ),
        ],
      ),
    ),
  );
}

const _grad = LinearGradient(
  colors: [Color(0xFF73E0A9), Color(0xFF34B87C)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
