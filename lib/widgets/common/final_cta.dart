import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/view/pages/contact/contact_page.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';

class FinalCTA extends StatelessWidget {
  const FinalCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        child: GlassContainer(
          opacity: 0.1,
          borderRadius: BorderRadius.circular(24.r),
          padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 32.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon with gradient background
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.themeGreen.withOpacity(0.3),
                      AppColors.themeGreen.withOpacity(0.1),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  LucideIcons.rocket,
                  size: 48.sp,
                  color: AppColors.themeGreen,
                ),
              ),
              SizedBox(height: 32.h),
              // Title with shader mask
              ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Colors.white,
                    AppColors.themeGreen.withOpacity(0.8),
                  ],
                ).createShader(bounds),
                child: Text(
                  'Ready to Transform Your Energy Future?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: -1,
                    height: 1.2,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Description
              Text(
                'Join the solar revolution with AI-powered intelligence and blockchain security.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.7),
                  height: 1.6,
                ),
              ),
              SizedBox(height: 40.h),
              // Buttons
              Wrap(
                spacing: 16.w,
                runSpacing: 16.h,
                alignment: WrapAlignment.center,
                children: [
                  _PrimaryButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactPage()),
                      );
                    },
                    icon: LucideIcons.arrowRight,
                    label: 'Get Your Free Assessment',
                  ),
                  _SecondaryButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactPage()),
                      );
                    },
                    icon: LucideIcons.play,
                    label: 'View Live Demo',
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              // Features row
              Wrap(
                spacing: 24.w,
                runSpacing: 16.h,
                alignment: WrapAlignment.center,
                children: [
                  _Feature(
                    icon: LucideIcons.shield,
                    text: 'Blockchain Secured',
                  ),
                  _Feature(
                    icon: LucideIcons.zap,
                    text: 'AI Optimized',
                  ),
                  _Feature(
                    icon: LucideIcons.clock,
                    text: '24/7 Monitoring',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PrimaryButton extends StatefulWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;

  const _PrimaryButton({
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  @override
  State<_PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<_PrimaryButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..scale(_isHovered ? 1.05 : 1.0),
        child: ElevatedButton.icon(
          onPressed: widget.onPressed,
          icon: Icon(widget.icon, size: 18.sp),
          label: Text(
            widget.label,
            style: GoogleFonts.inter(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeGreen,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 28.w,
              vertical: 18.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            elevation: _isHovered ? 8 : 0,
            shadowColor: AppColors.themeGreen.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}

class _SecondaryButton extends StatefulWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;

  const _SecondaryButton({
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  @override
  State<_SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<_SecondaryButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..scale(_isHovered ? 1.05 : 1.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: _isHovered
                ? LinearGradient(
                    colors: [
                      AppColors.themeGreen.withOpacity(0.1),
                      AppColors.themeGreen.withOpacity(0.05),
                    ],
                  )
                : null,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: OutlinedButton.icon(
            onPressed: widget.onPressed,
            icon: Icon(widget.icon, size: 18.sp),
            label: Text(
              widget.label,
              style: GoogleFonts.inter(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.white.withOpacity(_isHovered ? 0.5 : 0.3),
                width: 1.5.w,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 28.w,
                vertical: 18.h,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              foregroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _Feature extends StatelessWidget {
  final IconData icon;
  final String text;

  const _Feature({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.themeGreen.withOpacity(0.2),
                AppColors.themeGreen.withOpacity(0.05),
              ],
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(
            icon,
            size: 16.sp,
            color: AppColors.themeGreen,
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          text,
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
