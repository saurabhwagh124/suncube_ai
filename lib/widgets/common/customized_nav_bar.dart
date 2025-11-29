import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/view/dashboard/Dashboards/user_dashboard.dart';
import 'package:suncube_ai/view/pages/services/billings_blockchain.dart';
import 'package:suncube_ai/view/landing/landing_page.dart';
import 'package:suncube_ai/view/pages/services/services_screen.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

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
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;
    
    return Container(
      constraints: BoxConstraints(maxWidth: screenWidth - 32.w),
      height: isSmallScreen ? 80.h : 90.h,
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
      child: GlassContainer(
        opacity: 0.15,
        blur: 15,
        borderRadius: BorderRadius.circular(30.r),
        padding: EdgeInsets.symmetric(
          horizontal: isSmallScreen ? 8.w : 16.w,
          vertical: 6.h,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: _buildNavItem(
                context,
                icon: LucideIcons.house,
                index: 0,
                label: 'Home',
                page: const LandingPage(),
                isSmallScreen: isSmallScreen,
              ),
            ),
            Flexible(
              child: _buildNavItem(
                context,
                icon: LucideIcons.settings,
                index: 1,
                label: 'Services',
                page: const ServicesScreen(),
                isSmallScreen: isSmallScreen,
              ),
            ),
            Flexible(
              child: _buildNavItem(
                context,
                icon: LucideIcons.layoutDashboard,
                index: 2,
                label: 'Dashboard',
                page: const UserDashboardHome(),
                isSmallScreen: isSmallScreen,
              ),
            ),
            Flexible(
              child: _buildNavItem(
                context,
                icon: LucideIcons.wallet,
                index: 3,
                label: 'Billings',
                page: BillingPage(),
                isSmallScreen: isSmallScreen,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required IconData icon,
    required int index,
    required String label,
    required Widget page,
    required bool isSmallScreen,
  }) {
    bool isSelected = selectedIndex == index;

    return _NavItemWidget(
      icon: icon,
      label: label,
      isSelected: isSelected,
      isSmallScreen: isSmallScreen,
      onTap: () {
        if (!isSelected) {
          onItemTapped(index);
        }
      },
    );
  }
}

class _NavItemWidget extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final bool isSmallScreen;
  final VoidCallback onTap;

  const _NavItemWidget({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.isSmallScreen,
    required this.onTap,
  });

  @override
  State<_NavItemWidget> createState() => _NavItemWidgetState();
}

class _NavItemWidgetState extends State<_NavItemWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            horizontal: widget.isSmallScreen ? 8.w : 12.w,
            vertical: widget.isSmallScreen ? 6.h : 8.h,
          ),
          decoration: BoxDecoration(
            gradient: widget.isSelected
                ? LinearGradient(
                    colors: [
                      AppColors.themeGreen.withOpacity(0.3),
                      AppColors.themeGreen.withOpacity(0.1),
                    ],
                  )
                : _isHovered
                    ? LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.1),
                          Colors.white.withOpacity(0.05),
                        ],
                      )
                    : null,
            borderRadius: BorderRadius.circular(widget.isSmallScreen ? 16.r : 20.r),
            border: widget.isSelected
                ? Border.all(
                    color: AppColors.themeGreen.withOpacity(0.4),
                    width: 1,
                  )
                : null,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                color: widget.isSelected
                    ? AppColors.themeGreen
                    : _isHovered
                        ? Colors.white
                        : Colors.white.withOpacity(0.7),
                size: widget.isSmallScreen ? 20.sp : 24.sp,
              ),
              SizedBox(height: widget.isSmallScreen ? 2.h : 4.h),
              Flexible(
                child: Text(
                  widget.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: widget.isSelected
                        ? AppColors.themeGreen
                        : _isHovered
                            ? Colors.white
                            : Colors.white.withOpacity(0.7),
                    fontSize: widget.isSmallScreen ? 9.sp : 11.sp,
                    fontWeight: widget.isSelected ? FontWeight.w700 : FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
