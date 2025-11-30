// lib/view/pages/sustainability/sustainability_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/app_theme.dart';
import 'package:suncube_ai/widgets/common/common_app_%20bar.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class SustainabilityPage extends StatefulWidget {
  const SustainabilityPage({super.key});

  @override
  State<SustainabilityPage> createState() => _SustainabilityPageState();
}

class _SustainabilityPageState extends State<SustainabilityPage> {
  static const Color themeGreen = Color(0xFF34B87C);
  static const Color accentOrange = Color(0xFFF4A261);
  static const Color lightGreen = Color(0xFF66C998);

  int _selectedTab = 2;
  double _goalValue = 12.0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.darkTheme.copyWith(
        colorScheme: const ColorScheme.dark(
          primary: themeGreen,
          secondary: accentOrange,
        ),
      ),
      child: LiquidBackground(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CommonAppBar(title: "Sustainability"),
          body: SafeArea(
            top: false,
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 40.h),
              child: Column(
                children: [
                  _HeroSection(),
                  SizedBox(height: 40.h),
                  _LiveImpactSection(),
                  SizedBox(height: 40.h),
                  _ComparisonSection(),
                  SizedBox(height: 40.h),
                  _GoalSection(),
                  SizedBox(height: 40.h),
                  _ShareSection(),
                  SizedBox(height: 40.h),
                  _GlobalImpactSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _HeroSection() => GlassContainer(
    blur: 20,
    opacity: 0.14,
    borderRadius: BorderRadius.circular(32.r),
    padding: EdgeInsets.all(32.w),
    child: Column(
      children: [
        _Badge('Environmental Impact', lightGreen),
        SizedBox(height: 20.h),
        Text(
          'Your Solar Power\nIs Saving the Planet',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 34.sp,
            fontWeight: FontWeight.w900,
            color: Colors.white,
            height: 1.2,
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          'Every kWh you generate prevents carbon emissions — see your real impact in trees, miles, and tons.',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            color: Colors.white70,
            height: 1.6,
          ),
        ),
        SizedBox(height: 28.h),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.insights_rounded, size: 20.sp),
          label: Text('Explore My Offset'),
          style: ElevatedButton.styleFrom(
            backgroundColor: accentOrange,
            padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 16.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
        ),
      ],
    ),
  );

  // LIVE IMPACT — NO CARDS, NO BORDERS, PURE CLEAN
  Widget _LiveImpactSection() => GlassContainer(
    blur: 18,
    opacity: 0.1,
    borderRadius: BorderRadius.circular(28.r),
    padding: EdgeInsets.all(28.w),
    child: Column(
      children: [
        Text(
          'Live Impact',
          style: GoogleFonts.inter(
            fontSize: 26.sp,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'Real-time savings from your solar system',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 15.sp, color: Colors.white70),
        ),
        SizedBox(height: 24.h),
        _TabSelector(),
        SizedBox(height: 40.h),
        ...[
          _LiveImpactItem(
            'CO₂ Prevented',
            '1,250 tons',
            lightGreen,
            Icons.eco_rounded,
          ),
          _LiveImpactItem(
            'Trees Saved',
            '15,625 trees',
            lightGreen,
            Icons.park_rounded,
          ),
          _LiveImpactItem(
            'Miles Not Driven',
            '2,875 miles',
            accentOrange,
            Icons.directions_car_rounded,
          ),
          _LiveImpactItem(
            'Water Saved',
            '890K gallons',
            accentOrange,
            Icons.water_drop_rounded,
          ),
        ],
      ],
    ),
  );

  Widget _LiveImpactItem(
    String title,
    String value,
    Color color,
    IconData icon,
  ) => Padding(
    padding: EdgeInsets.symmetric(vertical: 12.h),
    child: Row(
      children: [
        Icon(icon, size: 36.sp, color: color),
        SizedBox(width: 20.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 15.sp,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                value,
                style: GoogleFonts.inter(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w900,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget _TabSelector() => Container(
    padding: EdgeInsets.all(4.w),
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.08),
      borderRadius: BorderRadius.circular(16.r),
    ),
    child: LayoutBuilder(
      builder: (context, constraints) {
        final double tabWidth = (constraints.maxWidth - 8.w) / 3;
        return Row(
          children: [
            _TabItem(tabWidth, 0, Icons.today_rounded, 'Daily'),
            _TabItem(tabWidth, 1, Icons.date_range_rounded, 'Monthly'),
            _TabItem(tabWidth, 2, Icons.public_rounded, 'Lifetime'),
          ],
        );
      },
    ),
  );

  Widget _TabItem(double width, int index, IconData icon, String label) {
    final selected = _selectedTab == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedTab = index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: width,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: selected ? themeGreen : Colors.transparent,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 16.sp,
              color: selected ? Colors.white : Colors.white70,
            ),
            SizedBox(width: 4.w),
            Flexible(
              child: Text(
                label,
                style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                  color: selected ? Colors.white : Colors.white70,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _ComparisonSection() => GlassContainer(
    blur: 18,
    opacity: 0.1,
    borderRadius: BorderRadius.circular(28.r),
    padding: EdgeInsets.all(28.w),
    child: Column(
      children: [
        Text(
          'Solar vs Grid',
          style: GoogleFonts.inter(
            fontSize: 26.sp,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 28.h),
        _ComparisonBar('Solar Energy', '0.04 kg CO₂/kWh', lightGreen, 0.05),
        SizedBox(height: 20.h),
        _ComparisonBar(
          'Grid Electricity',
          '0.85 kg CO₂/kWh',
          Colors.redAccent,
          1.0,
        ),
        SizedBox(height: 32.h),
        Container(
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            color: lightGreen.withOpacity(0.2),
            borderRadius: BorderRadius.circular(24.r),
            border: Border.all(color: lightGreen.withOpacity(0.4)),
          ),
          child: Column(
            children: [
              Text(
                '95%',
                style: GoogleFonts.inter(
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w900,
                  color: lightGreen,
                ),
              ),
              Text(
                'Less Emissions',
                style: GoogleFonts.inter(fontSize: 16.sp, color: lightGreen),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget _ComparisonBar(String label, String value, Color color, double fill) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  label,
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                value,
                style: GoogleFonts.inter(fontSize: 14.sp, color: color),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: LinearProgressIndicator(
              value: fill,
              minHeight: 18.h,
              backgroundColor: Colors.white.withOpacity(0.1),
              valueColor: AlwaysStoppedAnimation(color),
            ),
          ),
        ],
      );

  Widget _GoalSection() => GlassContainer(
    blur: 18,
    opacity: 0.12,
    borderRadius: BorderRadius.circular(32.r),
    padding: EdgeInsets.all(32.w),
    child: Column(
      children: [
        Text(
          'Set Your Goal',
          style: GoogleFonts.inter(
            fontSize: 26.sp,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'How much CO₂ do you want to offset?',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 15.sp, color: Colors.white70),
        ),
        SizedBox(height: 28.h),
        Text(
          '${_goalValue.toInt()} tons',
          style: GoogleFonts.inter(
            fontSize: 34.sp,
            fontWeight: FontWeight.w900,
            color: lightGreen,
          ),
        ),
        SizedBox(height: 20.h),
        Slider(
          value: _goalValue,
          min: 1,
          max: 50,
          divisions: 49,
          activeColor: lightGreen,
          inactiveColor: Colors.white.withOpacity(0.2),
          onChanged: (v) => setState(() => _goalValue = v),
        ),
        SizedBox(height: 28.h),
        Container(
          padding: EdgeInsets.all(24.w),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [lightGreen, accentOrange]),
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Column(
            children: [
              Text(
                'Goal Achieved!',
                style: GoogleFonts.inter(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                '12,500% above target',
                style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget _ShareSection() => GlassContainer(
    blur: 18,
    opacity: 0.1,
    borderRadius: BorderRadius.circular(28.r),
    padding: EdgeInsets.all(28.w),
    child: Column(
      children: [
        Text(
          'Share Your Impact',
          style: GoogleFonts.inter(
            fontSize: 26.sp,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 28.h),
        Row(
          children: [
            Expanded(
              child: _ShareButton(
                Icons.download_rounded,
                'Download\nReport',
                lightGreen,
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: _ShareButton(
                Icons.share_rounded,
                'Share\nBadge',
                accentOrange,
              ),
            ),
          ],
        ),
      ],
    ),
  );

  Widget _ShareButton(IconData icon, String label, Color color) =>
      GlassContainer(
        blur: 16,
        opacity: 0.12,
        borderRadius: BorderRadius.circular(24.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(24.r),
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                Icon(icon, size: 40.sp, color: color),
                SizedBox(height: 12.h),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  // GLOBAL IMPACT — NO CARD, NO BORDER, JUST PURE TEXT & NUMBERS
  Widget _GlobalImpactSection() => GlassContainer(
    blur: 20,
    opacity: 0.18,
    borderRadius: BorderRadius.circular(32.r),
    padding: EdgeInsets.all(36.w),
    child: Column(
      children: [
        Text(
          'Global Impact',
          style: GoogleFonts.inter(
            fontSize: 30.sp,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'Together with our community',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
        ),
        SizedBox(height: 50.h),
        LayoutBuilder(
          builder: (context, constraints) {
            final bool isSmall = constraints.maxWidth < 500;
            return GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: isSmall ? 1 : 2,
              mainAxisSpacing: 40.h,
              crossAxisSpacing: 40.w,
              childAspectRatio: isSmall ? 2.2 : 2.0,
              children: [
                _GlobalStatItem('50,000+', 'Tons CO₂ Prevented'),
                _GlobalStatItem('625,000+', 'Trees Saved'),
                _GlobalStatItem('35M+', 'Gallons Water Saved'),
                _GlobalStatItem('128 GWh', 'Clean Energy Generated'),
              ],
            );
          },
        ),
      ],
    ),
  );

  // PURE CLEAN STAT — Number on top, text below, NO background
  Widget _GlobalStatItem(String value, String label) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        value,
        style: GoogleFonts.inter(
          fontSize: 42.sp,
          fontWeight: FontWeight.w900,
          color: lightGreen,
          height: 1.0,
        ),
      ),
      SizedBox(height: 12.h),
      Text(
        label,
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
          fontSize: 16.sp,
          color: Colors.white70,
          height: 1.4,
        ),
      ),
    ],
  );

  Widget _Badge(String text, Color color) => Container(
    padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
    decoration: BoxDecoration(
      color: color.withOpacity(0.2),
      borderRadius: BorderRadius.circular(30.r),
      border: Border.all(color: color.withOpacity(0.4)),
    ),
    child: Text(
      text,
      style: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    ),
  );
}
