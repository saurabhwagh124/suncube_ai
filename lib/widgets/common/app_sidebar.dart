import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/utils/user_data.dart';
import 'package:suncube_ai/view/dashboard/Dashboards/user_dashboard.dart';
import 'package:suncube_ai/view/pages/about/about_us.dart';
import 'package:suncube_ai/view/pages/services/ai_payment_engine_page.dart';
import 'package:suncube_ai/view/pages/services/billings_blockchain.dart';
import 'package:suncube_ai/view/pages/services/blockchain_security_page.dart';
import 'package:suncube_ai/view/pages/content/blogs_page.dart';
import 'package:suncube_ai/view/pages/content/case_studies_page.dart';
import 'package:suncube_ai/view/pages/about/commitment_page.dart';
import 'package:suncube_ai/view/pages/contact/contact_page.dart';
import 'package:suncube_ai/view/landing/landing_page.dart';
import 'package:suncube_ai/view/auth/login_screen.dart';
import 'package:suncube_ai/view/pages/services/services_screen.dart';
import 'package:suncube_ai/view/pages/content/success_stories_page.dart';
import 'package:suncube_ai/view/pages/about/sustainability_page.dart';
import 'package:suncube_ai/view/pages/about/transparency_page.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  /* ----------------------------------------------------------
     single navigation helper
     ---------------------------------------------------------- */
  void _handleNavigation(BuildContext c, String route) {
    Navigator.pop(c);
    Widget page;
    switch (route) {
      case 'home':
        page = const LandingPage();
        break;
      case 'services':
        page = const ServicesScreen(showAppBar: true);
        break;
      case 'dashboard':
        page = const UserDashboardHome(showAppBar: true);
        break;
      case 'billings':
        page = const BillingPage(showAppBar: true);
        break;
      case 'blogs':
        page = const BlogsPage();
        break;
      case 'about':
        page = AboutUsPage();
        break;
      case 'cases':
        page = const CaseStudiesPage();
        break;
      case 'contact':
        page = ContactPage();
        break;
      case 'success':
        page = const SuccessStoriesPage();
        break;
      case 'commitment':
        page = CommitmentPage();
        break;
      case 'ai-payment':
        page = AiPaymentEnginePage();
        break;
      case 'blockchain':
        page = BlockchainSecurityPage();
        break;
      case 'transparency':
        page = TransparencyPage();
        break;
      case 'sustainability':
        page = SustainabilityPage();
        break;
      default:
        return;
    }
    Navigator.of(c).push(_fadeRoute(page));
  }

  Route _fadeRoute(Widget child) => PageRouteBuilder(
    pageBuilder: (_, __, ___) => child,
    transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
    transitionDuration: const Duration(milliseconds: 220),
  );

  /* ----------------------------------------------------------
     drawer header – rebuilds automatically when email changes
     ---------------------------------------------------------- */
  /* ----------------------------------------------------------
   card-style header
   ---------------------------------------------------------- */
  Widget _header() => Padding(
    padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 8.h),
    child: Material(
      color: Colors.white.withOpacity(.09),
      elevation: 4, // tweak for more/less lift
      borderRadius: BorderRadius.circular(16.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.r),
        onTap: () {}, // empty if you want no ripple
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: ValueListenableBuilder<String?>(
            valueListenable: ValueNotifier(UserData().read<String>('email')),
            builder: (_, email, __) {
              final name = email?.split('@').firstOrNull ?? 'Guest';
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 22.r,
                    backgroundColor: AppColors.themeGreen,
                    child: Icon(Icons.person, color: Colors.white, size: 25.sp),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    // ← let text compress
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.78),
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                            letterSpacing: 1.1,
                          ),
                        ),
                        Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          // ← graceful truncation
                          style: TextStyle(
                            color: AppColors.themeGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.horizontal(right: Radius.circular(30.r));
    final isLogged = UserData().read<bool>('isLogged') ?? false;

    return Drawer(
      backgroundColor: Colors.transparent,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: Container(
            width: 340.w,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.68),
              borderRadius: borderRadius,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.18),
                  blurRadius: 18,
                  offset: const Offset(0, 6),
                ),
              ],
              border: Border(
                right: BorderSide(color: AppColors.themeGreen.withOpacity(.23)),
              ),
            ),
            child: ListView(
              children: [
                SizedBox(height: 20.h),
                _header(),
                menuButton(
                  Icons.home_rounded,
                  'Home',
                  () => _handleNavigation(context, 'home'),
                ),
                menuButton(
                  LucideIcons.settings,
                  'Services',
                  () => _handleNavigation(context, 'services'),
                ),
                menuButton(
                  LucideIcons.layoutDashboard,
                  'Dashboard',
                  () => _handleNavigation(context, 'dashboard'),
                ),
                menuButton(
                  LucideIcons.wallet,
                  'Billings',
                  () => _handleNavigation(context, 'billings'),
                ),
                menuButton(
                  Icons.library_books_outlined,
                  'Blogs',
                  () => _handleNavigation(context, 'blogs'),
                ),
                menuButton(
                  Icons.auto_graph_rounded,
                  'About Us',
                  () => _handleNavigation(context, 'about'),
                ),
                menuButton(
                  Icons.receipt_long_rounded,
                  'Case Studies',
                  () => _handleNavigation(context, 'cases'),
                ),
                menuButton(
                  Icons.mail_outline_rounded,
                  'Contact',
                  () => _handleNavigation(context, 'contact'),
                ),
                menuButton(
                  Icons.check_circle_outline,
                  'Success Stories',
                  () => _handleNavigation(context, 'success'),
                ),
                menuButton(
                  Icons.verified_rounded,
                  'Our Commitment',
                  () => _handleNavigation(context, 'commitment'),
                ),
                menuButton(
                  LucideIcons.shield,
                  'Sustainability',
                  () => _handleNavigation(context, 'sustainability'),
                ),
                billingCard(context),
                if (isLogged)
                  menuButton(
                    Icons.logout,
                    'Logout',
                    () => _logout(context),
                    color: Colors.redAccent,
                  )
                else
                  menuButton(
                    Icons.login,
                    'Login',
                    () {
                      Navigator.pop(context); // Close drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    color: AppColors.themeGreen,
                  ),
                SizedBox(height: 12.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /* ----------------------------------------------------------
   single widget – card-style expansion block
   ---------------------------------------------------------- */
  /* ----------------------------------------------------------
   single card – all three billing rows
   ---------------------------------------------------------- */
  Widget billingCard(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
    child: Material(
      color: Colors.white.withOpacity(.09),
      borderRadius: BorderRadius.circular(16.r),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(
                  LucideIcons.creditCard,
                  color: Colors.white70,
                  size: 18.sp,
                ),
                SizedBox(width: 12.w),
                Text(
                  "Billings & Blockchain",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.92),
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    letterSpacing: .1,
                  ),
                ),
              ],
            ),
            Divider(color: AppColors.themeGreen),
            _row(
              context,
              Icons.electric_bolt,
              'AI Payment Engine',
              () => _handleNavigation(context, 'ai-payment'),
            ),
            _row(
              context,
              Icons.security,
              'Blockchain Security',
              () => _handleNavigation(context, 'blockchain'),
            ),
            _row(
              context,
              Icons.visibility,
              'Transparency',
              () => _handleNavigation(context, 'transparency'),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _row(BuildContext c, IconData ic, String txt, VoidCallback tap) =>
      InkWell(
        borderRadius: BorderRadius.circular(12.r),
        onTap: tap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
          child: Row(
            children: [
              Icon(ic, color: Colors.white70, size: 18.sp),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  txt,
                  style: TextStyle(
                    color: Colors.white.withOpacity(.92),
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    letterSpacing: .1,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  /* ----------------------------------------------------------
     unified menu row
     ---------------------------------------------------------- */
  Widget menuButton(
    IconData icon,
    String label,
    VoidCallback onTap, {
    Color? color,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.09),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: ListTile(
        leading: Icon(icon, color: color ?? Colors.white70, size: 18.sp),
        title: Text(
          label,
          style: TextStyle(
            color: color ?? Colors.white.withOpacity(.92),
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            letterSpacing: .1,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.r),
        ),
        onTap: onTap,
        minLeadingWidth: 28,
        horizontalTitleGap: 0,
      ),
    );
  }

  /* ----------------------------------------------------------
     logout
     ---------------------------------------------------------- */
  void _logout(BuildContext c) {
    UserData().clear();
    Navigator.pushReplacement(
      c,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }
}
