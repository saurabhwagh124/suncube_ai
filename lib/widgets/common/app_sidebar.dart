// // lib/widgets/common/app_sidebar.dart

// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';

// import 'package:suncube_ai/utils/AppColors.dart';
// import 'package:suncube_ai/utils/user_data.dart';
// import 'package:suncube_ai/view/dashboard/Dashboards/user_dashboard.dart';
// import 'package:suncube_ai/view/pages/about/about_us.dart';
// import 'package:suncube_ai/view/pages/services/ai_payment_engine_page.dart';
// import 'package:suncube_ai/view/pages/services/billings_blockchain.dart';
// import 'package:suncube_ai/view/pages/services/blockchain_security_page.dart';
// import 'package:suncube_ai/view/pages/content/blogs_page.dart';
// import 'package:suncube_ai/view/pages/content/case_studies_page.dart';
// import 'package:suncube_ai/view/pages/about/commitment_page.dart';
// import 'package:suncube_ai/view/pages/contact/contact_page.dart';
// import 'package:suncube_ai/view/landing/landing_page.dart';
// import 'package:suncube_ai/view/auth/login_screen.dart';
// import 'package:suncube_ai/view/pages/services/services_screen.dart';
// import 'package:suncube_ai/view/pages/content/success_stories_page.dart';
// import 'package:suncube_ai/view/pages/about/sustainability_page.dart';
// import 'package:suncube_ai/view/pages/about/transparency_page.dart';

// class AppSidebar extends StatefulWidget {
//   const AppSidebar({super.key});
//   @override State<AppSidebar> createState() => _AppSidebarState();
// }

// class _AppSidebarState extends State<AppSidebar> with TickerProviderStateMixin {
//   final ValueNotifier<bool> _aboutOpen = ValueNotifier(false);
//   final ValueNotifier<bool> _contentOpen = ValueNotifier(false);
//   final ValueNotifier<bool> _billingOpen = ValueNotifier(false);

//   @override
//   void dispose() {
//     _aboutOpen.dispose();
//     _contentOpen.dispose();
//     _billingOpen.dispose();
//     super.dispose();
//   }

//   void _navigate(String route) {
//     Navigator.pop(context);
//     Widget page;
//     switch (route) {
//       case 'home': page = const LandingPage(); break;
//       case 'services': page = const ServicesScreen(showAppBar: true); break;
//       case 'dashboard': page = const UserDashboardHome(showAppBar: true); break;
//       case 'billings': page = const BillingPage(showAppBar: true); break;
//       case 'blogs': page = const BlogsPage(); break;
//       case 'about': page = AboutUsPage(); break;
//       case 'cases': page = const CaseStudiesPage(); break;
//       case 'contact': page = ContactPage(); break;
//       case 'success': page = const SuccessStoriesPage(); break;
//       case 'commitment': page = CommitmentPage(); break;
//       case 'ai-payment': page = AiPaymentEnginePage(); break;
//       case 'blockchain': page = BlockchainSecurityPage(); break;
//       case 'transparency': page = TransparencyPage(); break;
//       case 'sustainability': page = SustainabilityPage(); break;
//       default: return;
//     }
//     Navigator.push(context, PageRouteBuilder(
//       pageBuilder: (_, __, ___) => page,
//       transitionDuration: const Duration(milliseconds: 300),
//       transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isLogged = UserData().read<bool>('isLogged') ?? false;
//     final email = UserData().read<String>('email');
//     final name = email?.split('@').firstOrNull?.capitalize() ?? 'Guest';

//     return Drawer(
//       width: 290.w,
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       child: Stack(
//         children: [
//           // ONE blur layer for entire drawer (no lag!)
//           Positioned.fill(
//             child: BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [Color(0xFF060C09), Color(0xFF1A231F)],
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           // Frosted glass overlay
//           Positioned.fill(
//             child: Container(color: Colors.black.withOpacity(0.4)),
//           ),

//           // Content - super lightweight!
//           Material(
//             color: Colors.transparent,
//             child: ListView(
//               padding: EdgeInsets.fromLTRB(16.w, 50.h, 16.w, 40.h),
//               physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
//               children: [
//                 // Header
//                 Container(
//                   padding: EdgeInsets.all(20.w),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(24.r),
//                     color: Colors.white.withOpacity(0.08),
//                     border: Border.all(color: AppColors.themeGreen.withOpacity(0.3)),
//                   ),
//                   child: Row(children: [
//                     Container(
//                       padding: EdgeInsets.all(14.w),
//                       decoration: BoxDecoration(
//                         gradient: RadialGradient(colors: [
//                           AppColors.themeGreen.withOpacity(0.4),
//                           Colors.transparent
//                         ]),
//                         shape: BoxShape.circle,
//                       ),
//                       child: Icon(LucideIcons.user, color: AppColors.themeGreen, size: 28.sp),
//                     ),
//                     SizedBox(width: 16.w),
//                     Expanded(
//                       child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                         Text('Welcome', style: GoogleFonts.inter(color: Colors.white60, fontSize: 13.sp)),
//                         Text(name, style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.sp)),
//                       ]),
//                     ),
//                   ]),
//                 ),

//                 SizedBox(height: 32.h),

//                 // Main Menu Items
//                 _buildMenuItem(LucideIcons.house, 'Home', () => _navigate('home')),
//                 _buildMenuItem(LucideIcons.zap, 'Services', () => _navigate('services')),
//                 _buildMenuItem(LucideIcons.layoutDashboard, 'Dashboard', () => _navigate('dashboard')),
//                 _buildMenuItem(LucideIcons.wallet, 'Billings', () => _navigate('billings')),
//                 _buildMenuItem(LucideIcons.mail, 'Contact', () => _navigate('contact')),

//                 SizedBox(height: 20.h),

//                 // Expandable Sections
//                 _buildExpandable(
//                   title: 'About',
//                   icon: LucideIcons.info,
//                   notifier: _aboutOpen,
//                   items: ['About Us', 'Our Commitment', 'Sustainability'],
//                   routes: ['about', 'commitment', 'sustainability'],
//                 ),
//                 _buildExpandable(
//                   title: 'Content',
//                   icon: LucideIcons.fileText,
//                   notifier: _contentOpen,
//                   items: ['Blogs', 'Case Studies', 'Success Stories'],
//                   routes: ['blogs', 'cases', 'success'],
//                 ),
//                 _buildExpandable(
//                   title: 'Billing & Blockchain',
//                   icon: LucideIcons.creditCard,
//                   notifier: _billingOpen,
//                   items: ['AI Payment Engine', 'Blockchain Security', 'Transparency'],
//                   routes: ['ai-payment', 'blockchain', 'transparency'],
//                 ),

//                 SizedBox(height: 40.h),

//                 // Login / Logout
//                 if (isLogged)
//                   _buildMenuItem(LucideIcons.logOut, 'Logout', () {
//                     UserData().clear();
//                     Navigator.pushAndRemoveUntil(
//                       context,
//                       MaterialPageRoute(builder: (_) => const LoginScreen()),
//                       (r) => false,
//                     );
//                   }, color: Colors.redAccent)
//                 else
//                   _buildMenuItem(LucideIcons.logIn, 'Login', () {
//                     Navigator.pop(context);
//                     Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
//                   }, color: AppColors.themeGreen),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMenuItem(IconData icon, String label, VoidCallback onTap, {Color? color}) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 6.h),
//       child: Material(
//         color: Colors.white.withOpacity(0.06),
//         borderRadius: BorderRadius.circular(16.r),
//         child: InkWell(
//           borderRadius: BorderRadius.circular(16.r),
//           onTap: onTap,
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
//             child: Row(children: [
//               Container(
//                 padding: EdgeInsets.all(10.w),
//                 decoration: BoxDecoration(
//                   color: (color ?? AppColors.themeGreen).withOpacity(0.15),
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 child: Icon(icon, color: color ?? Colors.white, size: 20.sp),
//               ),
//               SizedBox(width: 16.w),
//               Text(label,
//                   style: GoogleFonts.inter(
//                     color: color ?? Colors.white,
//                     fontSize: 15.sp,
//                     fontWeight: FontWeight.w600,
//                   )),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildExpandable({
//     required String title,
//     required IconData icon,
//     required ValueNotifier<bool> notifier,
//     required List<String> items,
//     required List<String> routes,
//   }) {
//     return ValueListenableBuilder<bool>(
//       valueListenable: notifier,
//       builder: (context, isOpen, _) {
//         return Column(
//           children: [
//             Material(
//               color: AppColors.themeGreen.withOpacity(0.12),
//               borderRadius: BorderRadius.circular(16.r),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(16.r),
//                 onTap: () => notifier.value = !notifier.value,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
//                   child: Row(children: [
//                     Container(
//                       padding: EdgeInsets.all(10.w),
//                       decoration: BoxDecoration(color: AppColors.themeGreen.withOpacity(0.25), borderRadius: BorderRadius.circular(12.r)),
//                       child: Icon(icon, color: Colors.white, size: 20.sp),
//                     ),
//                     SizedBox(width: 16.w),
//                     Expanded(child: Text(title, style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15.sp))),
//                     AnimatedRotation(
//                       turns: isOpen ? 0.5 : 0,
//                       duration: const Duration(milliseconds: 250),
//                       child: Icon(LucideIcons.chevronDown, color: AppColors.themeGreen, size: 20.sp),
//                     ),
//                   ]),
//                 ),
//               ),
//             ),

//             // Ultra-smooth height animation
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 250),
//               curve: Curves.easeOutCubic,
//               height: isOpen ? items.length * 58.0 : 0,
//               child: ListView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 padding: EdgeInsets.zero,
//                 itemCount: items.length,
//                 itemBuilder: (ctx, i) => Padding(
//                   padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
//                   child: InkWell(
//                     onTap: () => _navigate(routes[i]),
//                     child: Row(children: [
//                       Container(width: 6.w, height: 6.h, decoration: BoxDecoration(color: AppColors.themeGreen, shape: BoxShape.circle)),
//                       SizedBox(width: 16.w),
//                       Text(items[i], style: GoogleFonts.inter(color: Colors.white70, fontSize: 14.sp)),
//                       const Spacer(),
//                       Icon(LucideIcons.arrowRight, color: Colors.white30, size: 16.sp),
//                     ]),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 8.h),
//           ],
//         );
//       },
//     );
//   }
// }

// extension StringX on String {
//   String capitalize() => isEmpty ? this : this[0].toUpperCase() + substring(1);
// }





// lib/widgets/common/app_sidebar.dart

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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

class AppSidebar extends StatefulWidget {
  const AppSidebar({super.key});
  @override State<AppSidebar> createState() => _AppSidebarState();
}

class _AppSidebarState extends State<AppSidebar> {
  final ValueNotifier<bool> aboutOpen = ValueNotifier(false);
  final ValueNotifier<bool> contentOpen = ValueNotifier(false);
  final ValueNotifier<bool> billingOpen = ValueNotifier(false);

  @override
  void dispose() {
    aboutOpen.dispose();
    contentOpen.dispose();
    billingOpen.dispose();
    super.dispose();
  }

  void _navigate(String route) {
    Navigator.pop(context);

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
        page = AboutUsPage(); // Not const → normal constructor
        break;
      case 'cases':
        page = const CaseStudiesPage();
        break;
      case 'contact':
        page = ContactPage(); // Not const
        break;
      case 'success':
        page = const SuccessStoriesPage();
        break;
      case 'commitment':
        page = CommitmentPage(); // Not const
        break;
      case 'ai-payment':
        page = AiPaymentEnginePage(); // Not const
        break;
      case 'blockchain':
        page = BlockchainSecurityPage(); // Not const
        break;
      case 'transparency':
        page = TransparencyPage(); // Not const
        break;
      case 'sustainability':
        page = SustainabilityPage(); // Not const
        break;
      case 'login':
        page = const LoginScreen();
        break;
      case 'logout':
        UserData().clear();
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const LoginScreen()),
          (_) => false,
        );
        return;
      default:
        return;
    }

    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (_, __, ___) => page,
      transitionDuration: const Duration(milliseconds: 280),
      transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final isLogged = UserData().read<bool>('isLogged') ?? false;
    final name = (UserData().read<String>('email')?.split('@').firstOrNull ?? 'Guest').capitalize();

    return Drawer(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          // ONE blur layer → zero lag
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF060C09), Color(0xFF1A231F)],
                  ),
                ),
                child: Container(color: Colors.white.withOpacity(0.08)),
              ),
            ),
          ),

          RepaintBoundary(
            child: ListView(
              padding: EdgeInsets.fromLTRB(16.w, 50.h, 16.w, 50.h),
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children: [
                _GlassHeader(name: name),
                SizedBox(height: 32.h),

                const _MenuTile(icon: LucideIcons.house, label: 'Home', route: 'home'),
                const _MenuTile(icon: LucideIcons.zap, label: 'Services', route: 'services'),
                const _MenuTile(icon: LucideIcons.layoutDashboard, label: 'Dashboard', route: 'dashboard'),
                const _MenuTile(icon: LucideIcons.wallet, label: 'Billings', route: 'billings'),
                const _MenuTile(icon: LucideIcons.mail, label: 'Contact', route: 'contact'),

                SizedBox(height: 20.h),

                _Expandable120(
                  title: 'About',
                  icon: LucideIcons.info,
                  open: aboutOpen,
                  items: const ['About Us', 'Our Commitment', 'Sustainability'],
                  routes: const ['about', 'commitment', 'sustainability'],
                  onNavigate: _navigate,
                ),
                _Expandable120(
                  title: 'Content',
                  icon: LucideIcons.fileText,
                  open: contentOpen,
                  items: const ['Blogs', 'Case Studies', 'Success Stories'],
                  routes: const ['blogs', 'cases', 'success'],
                  onNavigate: _navigate,
                ),
                _Expandable120(
                  title: 'Billing & Blockchain',
                  icon: LucideIcons.creditCard,
                  open: billingOpen,
                  items: const ['AI Payment Engine', 'Blockchain Security', 'Transparency'],
                  routes: const ['ai-payment', 'blockchain', 'transparency'],
                  onNavigate: _navigate,
                ),

                SizedBox(height: 40.h),

                if (isLogged)
                  const _MenuTile(icon: LucideIcons.logOut, label: 'Logout', route: 'logout', color: Colors.redAccent)
                else
                  _MenuTile(icon: LucideIcons.logIn, label: 'Login', route: 'login', color: AppColors.themeGreen),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Your exact premium header
class _GlassHeader extends StatelessWidget {
  final String name;
  const _GlassHeader({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: Colors.white.withOpacity(0.1),
        border: Border.all(color: AppColors.themeGreen.withOpacity(0.3)),
      ),
      child: Row(children: [
        Container(
          padding: EdgeInsets.all(14.w),
          decoration: BoxDecoration(
            gradient: RadialGradient(colors: [AppColors.themeGreen.withOpacity(0.4), Colors.transparent]),
            shape: BoxShape.circle,
          ),
          child: Icon(LucideIcons.user, color: AppColors.themeGreen, size: 28.sp),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Welcome', style: GoogleFonts.inter(color: Colors.white60, fontSize: 13.sp)),
            Text(name, style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.sp)),
          ]),
        ),
      ]),
    );
  }
}

// 120 FPS menu tile
class _MenuTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String route;
  final Color? color;
  const _MenuTile({required this.icon, required this.label, required this.route, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: RepaintBoundary(
        child: Material(
          color: Colors.white.withOpacity(0.06),
          borderRadius: BorderRadius.circular(16.r),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.r),
            onTap: () => context.findAncestorStateOfType<_AppSidebarState>()?._navigate(route),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Row(children: [
                Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: (color ?? AppColors.themeGreen).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(icon, color: color ?? Colors.white, size: 20.sp),
                ),
                SizedBox(width: 16.w),
                Text(label, style: GoogleFonts.inter(color: color ?? Colors.white, fontSize: 15.sp, fontWeight: FontWeight.w600)),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

// 120 FPS expandable — Vision Pro level smoothness
class _Expandable120 extends StatelessWidget {
  final String title;
  final IconData icon;
  final ValueNotifier<bool> open;
  final List<String> items;
  final List<String> routes;
  final Function(String) onNavigate;

  const _Expandable120({
    required this.title,
    required this.icon,
    required this.open,
    required this.items,
    required this.routes,
    required this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ValueListenableBuilder<bool>(
        valueListenable: open,
        builder: (_, isOpen, __) {
          return Column(
            children: [
              Material(
                color: AppColors.themeGreen.withOpacity(0.12),
                borderRadius: BorderRadius.circular(16.r),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16.r),
                  onTap: () => open.value = !open.value,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(color: AppColors.themeGreen.withOpacity(0.25), borderRadius: BorderRadius.circular(12.r)),
                        child: Icon(icon, color: Colors.white, size: 20.sp),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(child: Text(title, style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15.sp))),
                      AnimatedRotation(
                        turns: isOpen ? 0.5 : 0,
                        duration: const Duration(milliseconds: 280),
                        curve: Curves.easeOutCubic,
                        child: Icon(LucideIcons.chevronDown, color: AppColors.themeGreen, size: 20.sp),
                      ),
                    ]),
                  ),
                ),
              ),

              ClipRect(
                child: AnimatedCrossFade(
                  duration: const Duration(milliseconds: 280),
                  crossFadeState: isOpen ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                  firstCurve: Curves.easeOutCubic,
                  secondCurve: Curves.easeOutCubic,
                  sizeCurve: Curves.easeOutCubic,
                  firstChild: const SizedBox.shrink(),
                  secondChild: Column(
                    children: List.generate(items.length, (i) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                      child: InkWell(
                        onTap: () => onNavigate(routes[i]),
                        child: Row(children: [
                          Container(
                            width: 6.w,
                            height: 6.w,
                            decoration: BoxDecoration(color: AppColors.themeGreen, shape: BoxShape.circle),
                          ),
                          SizedBox(width: 16.w),
                          Text(items[i], style: GoogleFonts.inter(color: Colors.white70, fontSize: 14.sp)),
                          const Spacer(),
                          Icon(LucideIcons.arrowRight, color: Colors.white30, size: 16.sp),
                        ]),
                      ),
                    )),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
            ],
          );
        },
      ),
    );
  }
}

extension on String {
  String capitalize() => isEmpty ? this : this[0].toUpperCase() + substring(1);
}