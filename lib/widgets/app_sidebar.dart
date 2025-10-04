import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/utils/user_data.dart';
import 'package:suncube_ai/view/about_us.dart';
import 'package:suncube_ai/view/ai_payment_engine_page.dart';
import 'package:suncube_ai/view/billings_blockchain.dart';
import 'package:suncube_ai/view/blockchain_security_page.dart';
import 'package:suncube_ai/view/blogs_page.dart';
import 'package:suncube_ai/view/case_studies_page.dart';
import 'package:suncube_ai/view/commitment_page.dart';
import 'package:suncube_ai/view/contact_page.dart';
import 'package:suncube_ai/view/landing_page.dart';
import 'package:suncube_ai/view/login_screen.dart';
import 'package:suncube_ai/view/success_stories_page.dart';
import 'package:suncube_ai/view/sustainability_page.dart';
import 'package:suncube_ai/view/transparency_page.dart';          // create if not exists

class AppSidebar extends StatelessWidget {
  final String username;
  const AppSidebar({super.key, this.username = 'User'});

  @override
  Widget build(BuildContext context) {
    final userData = UserData();
    final index = userData.read<String>('email')?.indexOf('@') ?? 0;
    return Drawer(
      backgroundColor: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: Container(
            width: 270.w,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.68),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.18),
                  blurRadius: 18,
                  offset: const Offset(0, 6),
                ),
              ],
              border: Border(
                right: BorderSide(
                  color: AppColors.themeGreen.withOpacity(0.23),
                  width: 2,
                ),
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*  ----  header  ----  */
                  _drawerHeader(index, userData),
                  /*  ----  normal items  ----  */
                  _SidebarItem(
                    icon: Icons.home_rounded,
                    label: 'Home',
                    onTap: () => _navPush(context, const LandingPage()),
                  ),
                  _SidebarItem(
                    icon: Icons.library_books_outlined,
                    label: 'Blogs',
                    onTap: () => _navPush(context, const BlogsPage()),
                  ),
                  _SidebarItem(
                    icon: Icons.auto_graph_rounded,
                    label: 'About Us',
                    onTap: () => _navPush(context, AboutUsPage()),
                  ),
                  _SidebarItem(
                    icon: Icons.receipt_long_rounded,
                    label: 'Case Studies',
                    onTap: () => _navPush(context, const CaseStudiesPage()),
                  ),
                  _SidebarItem(
                    icon: Icons.mail_outline_rounded,
                    label: 'Contact',
                    onTap: () => _navPush(context, ContactPage()),
                  ),
                  _SidebarItem(
                    icon: Icons.check_circle_outline,
                    label: 'Success Stories',
                    onTap: () => _navPush(context, const SuccessStoriesPage()),
                  ),
                  _SidebarItem(
                    icon: Icons.verified_rounded,
                    label: 'Our Commitment',
                    onTap: () => _navPush(context, CommitmentPage()),
                  ),
                  /*  =========  NEW : BILLING & BLOCKCHAIN  =========  */
                  ExpansionTile(
                    leading: Icon(Icons.payment_rounded, color: Colors.white70, size: 22.sp),
                    title: Text(
                      'Billing & Blockchain',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.92),
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        letterSpacing: 0.1,
                      ),
                    ),
                    iconColor: Colors.white70,
                    collapsedIconColor: Colors.white70,
                    childrenPadding: EdgeInsets.only(left: 40.w),
                    children: [
                      _SidebarItem(
                        icon: Icons.electric_bolt,
                        label: 'AI Payment Engine',
                        onTap: () => _navPush(context, AiPaymentEnginePage()),
                      ),
                      _SidebarItem(
                        icon: Icons.security,
                        label: 'Blockchain Security',
                        onTap: () => _navPush(context, const BlockchainSecurityPage()),
                      ),
                      _SidebarItem(
                        icon: Icons.visibility,
                        label: 'Transparency',
                        onTap: () => _navPush(context, const TransparencyPage()),
                      ),
                    ],
                  ),
                  _SidebarItem(
                    icon: LucideIcons.shield,
                    label: 'Sustainability',
                    onTap: () => _navPush(context, SustainabilityPage()),
                  ),
                  const Spacer(),
                  _SidebarItem(
                    icon: Icons.logout,
                    label: 'Logout',
                    color: Colors.redAccent,
                    onTap: () {
                      UserData().clear();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /* ----------------------------------------------------------
     helper widgets
     ---------------------------------------------------------- */
  Widget _drawerHeader(int index, UserData userData) => DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 8.w),
    decoration: const BoxDecoration(color: Colors.transparent),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: AppColors.themeGreen,
          child: Icon(Icons.person, color: Colors.white, size: 25.sp),
        ),
        SizedBox(width: 12.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                color: Colors.white.withOpacity(0.78),
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
                letterSpacing: 1.1,
              ),
            ),
            Wrap(
              children: [
                Text(
                  (userData.read<String>('email') != null)
                      ? userData.read<String>('email')!.substring(0, index)
                      : username,
                  style: TextStyle(
                    color: AppColors.themeGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );

  void _navPush(BuildContext ctx, Widget page) {
    Navigator.pop(ctx);
    Navigator.push(ctx, MaterialPageRoute(builder: (_) => page));
  }
}

/* ----------------------------------------------------------
   reusable sidebar item
   ---------------------------------------------------------- */
class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? color;

  const _SidebarItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color ?? Colors.white70, size: 22.sp),
      title: Text(
        label,
        style: TextStyle(
          color: color ?? Colors.white.withOpacity(0.92),
          fontWeight: FontWeight.w600,
          fontSize: 15.sp,
          letterSpacing: 0.1,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.r)),
      onTap: onTap,
      minLeadingWidth: 28,
      horizontalTitleGap: 0,
    );
  }
}