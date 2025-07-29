import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/view/about_us.dart';
import 'package:suncube_ai/view/billings_blockchain.dart';
import 'package:suncube_ai/view/blogs_page.dart';
import 'package:suncube_ai/view/case_studies_page.dart';
import 'package:suncube_ai/view/commitment_page.dart';
import 'package:suncube_ai/view/contact_page.dart';
import 'package:suncube_ai/view/landing_page.dart';
import 'package:suncube_ai/view/success_stories_page.dart';

class AppSidebar extends StatelessWidget {
  final String username;

  const AppSidebar({super.key, this.username = 'User'});

  @override
  Widget build(BuildContext context) {
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
                  DrawerHeader(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.symmetric(
                      vertical: 18.h,
                      horizontal: 8.w,
                    ),
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor: AppColors.themeGreen,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 25.sp,
                          ),
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
                            Text(
                              username,
                              style: TextStyle(
                                color: AppColors.themeGreen,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                                letterSpacing: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _SidebarItem(
                    icon: Icons.home_rounded,
                    label: 'Home',
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LandingPage(),
                        ),
                      );
                    },
                  ),
                  _SidebarItem(
                    icon: Icons.library_books_outlined,
                    label: 'Blogs',
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BlogsPage(),
                        ),
                      );
                    },
                  ),
                  _SidebarItem(
                    icon: Icons.auto_graph_rounded,
                    label: 'About Us',
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutUsPage()),
                      );
                    },
                  ),
                  _SidebarItem(
                    icon: Icons.receipt_long_rounded,
                    label: 'Case Studies',
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CaseStudiesPage(),
                        ),
                      );
                    },
                  ),
                  _SidebarItem(
                    icon: Icons.mail_outline_rounded,
                    label: 'Contact',
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactPage()),
                      );
                    },
                  ),
                  _SidebarItem(
                    icon: Icons.check_circle_outline,
                    label: 'Success Stories',
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SuccessStoriesPage(),
                        ),
                      );
                    },
                  ),
                  _SidebarItem(
                    icon: Icons.verified_rounded,
                    label: 'Our Commitment',
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CommitmentPage(),
                        ),
                      );
                    },
                  ),
                  Divider(
                    color: Colors.white.withOpacity(0.12),
                    thickness: 1,
                    height: 30.h,
                    indent: 18.w,
                    endIndent: 18.w,
                  ),
                  _SidebarItem(
                    icon: Icons.payment_rounded,
                    label: 'Billing',
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BillingPage(),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                  _SidebarItem(
                    icon: Icons.logout,
                    label: 'Logout',
                    color: Colors.redAccent,
                    onTap: () {
                      // Insert your logout logic here
                      Navigator.of(context).pop();
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
}

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
