// lib/view/pages/about/commitment_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class CommitmentPage extends StatelessWidget {
  const CommitmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 28.sp,
          ),
        ),
        title: Text(
          'Our Commitment',
          style: GoogleFonts.inter(
            fontSize: 21.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: GlassContainer(
          opacity: 0.22,
          blur: 14,
          borderRadius: BorderRadius.zero,
          child: Container(),
        ),
      ),
      body: LiquidBackground(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20.w, 110.h, 20.w, 60.h),
          child: Column(
            children: [
              _HeroSection(),
              SizedBox(height: 40.h),
              _LowCarbonEngineeringSection(),
              SizedBox(height: 40.h),
              _CircularHardwareSection(),
              SizedBox(height: 40.h),
              _CarbonNeutralSection(),
              SizedBox(height: 40.h),
              _OpenImpactSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blur: 20,
      opacity: 0.13,
      borderRadius: BorderRadius.circular(32.r),
      padding: EdgeInsets.all(36.w),
      child: Column(
        children: [
          _Badge(text: 'Planet-First Company'),
          SizedBox(height: 28.h),
          Text(
            'We Don’t Just Build\nSolar Tech — We Live It',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 36.sp,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              height: 1.2,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Every line of code, every server, every decision — designed for sustainability from day one.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 16.5.sp,
              color: Colors.white70,
              height: 1.7,
            ),
          ),
          SizedBox(height: 32.h),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeGreen,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 20.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            child: Text(
              'Our Full Sustainability Pledge',
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LowCarbonEngineeringSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SectionWrapper(
      title: 'Low-Carbon Engineering',
      subtitle: '37% less compute usage than traditional platforms',
      height: 170.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        separatorBuilder: (_, __) => SizedBox(width: 16.w),
        itemBuilder:
            (_, i) => _CompactCard(
              width: 200.w,
              icon: i == 0 ? Icons.bar_chart_rounded : Icons.flash_on_rounded,
              title: i == 0 ? 'Traditional' : 'Suncube Optimized',
              value: i == 0 ? '100%' : '63%',
              color: i == 0 ? Colors.redAccent : AppColors.themeGreen,
              tag: i == 1 ? '−37%' : null,
            ),
      ),
    );
  }
}

class _CircularHardwareSection extends StatelessWidget {
  final items = const [
    ('Recyclable Materials', Icons.recycling, '100% recyclable panels'),
    (
      'Preferred Vendors',
      Icons.verified_user_rounded,
      'Sustainable manufacturers only',
    ),
    (
      'Panel Reuse',
      Icons.autorenew_rounded,
      'End-of-life repurposing programs',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return _SectionWrapper(
      title: 'Circular Hardware Advocacy',
      subtitle: 'We only support truly sustainable solar hardware',
      height: 190.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => SizedBox(width: 16.w),
        itemBuilder: (_, i) {
          final item = items[i];
          return _CompactIconCard(
            width: 210.w,
            icon: item.$2,
            title: item.$1,
            description: item.$3,
          );
        },
      ),
    );
  }
}

class _CarbonNeutralSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SectionWrapper(
      title: 'Carbon-Neutral Operations',
      subtitle: 'We offset more CO₂ than we produce — every month',
      height: 195.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        separatorBuilder: (_, __) => SizedBox(width: 16.w),
        itemBuilder:
            (_, i) => _CompactCard(
              width: 230.w,
              icon: i == 0 ? Icons.terrain_rounded : Icons.map_rounded,
              title: i == 0 ? 'Carbon Footprint' : 'Reforestation Support',
              value: i == 0 ? '+0.7t' : '3 Regions',
              color: AppColors.themeGreen,
              tag: i == 0 ? 'Net Positive' : 'Active Projects',
              subtitle:
                  i == 0
                      ? '24.5t emitted → 25.2t offset'
                      : 'Amazon · Kenya · Indonesia',
            ),
      ),
    );
  }
}

class _OpenImpactSection extends StatelessWidget {
  final metrics = [
    ('Energy Saved', '−37%', AppColors.themeGreen),
    ('Green Hosting', '100%', Colors.cyan),
    ('Carbon Offset', '+0.7t', Colors.purpleAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blur: 18,
      opacity: 0.12,
      borderRadius: BorderRadius.circular(32.r),
      padding: EdgeInsets.all(36.w),
      child: Column(
        children: [
          Text(
            'Open Impact Reporting',
            style: GoogleFonts.inter(
              fontSize: 28.sp,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Transparency is our default',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            height: 150.h, // Increased for perfect fit
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: metrics.length,
              separatorBuilder: (_, __) => SizedBox(width: 16.w),
              itemBuilder: (_, i) {
                final m = metrics[i];
                return _MetricCard(title: m.$1, value: m.$2, color: m.$3);
              },
            ),
          ),
          SizedBox(height: 32.h),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.download_rounded, size: 20.sp),
            label: Text(
              'Download Impact Report',
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppColors.themeGreen,
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// BULLETPROOF CARDS — NO OVERFLOW EVER

class _CompactCard extends StatelessWidget {
  final double width;
  final IconData icon;
  final String title, value;
  final Color color;
  final String? tag, subtitle;

  const _CompactCard({
    required this.width,
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
    this.tag,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width: width,
      blur: 16,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(24.r),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 38.sp, color: color),
            SizedBox(height: 10.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 14.5.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (subtitle != null) ...[
              SizedBox(height: 6.h),
              Text(
                subtitle!,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 11.5.sp,
                  color: Colors.white60,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            SizedBox(height: 8.h),
            Text(
              value,
              style: GoogleFonts.inter(
                fontSize: 28.sp,
                fontWeight: FontWeight.w900,
                color: color,
              ),
            ),
            if (tag != null) ...[
              SizedBox(height: 6.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  tag!,
                  style: GoogleFonts.inter(
                    fontSize: 11.sp,
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _CompactIconCard extends StatelessWidget {
  final double width;
  final IconData icon;
  final String title, description;

  const _CompactIconCard({
    required this.width,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width: width,
      blur: 16,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(24.r),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40.sp, color: AppColors.themeGreen),
            SizedBox(height: 12.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 15.sp,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8.h),
            Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 12.5.sp,
                color: Colors.white70,
                height: 1.4,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

// FIXED: Open Impact Metric Cards — No more 11px overflow
class _MetricCard extends StatelessWidget {
  final String title, value;
  final Color color;

  const _MetricCard({
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width: 160.w,
      blur: 14,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(24.r),
      child: Padding(
        padding: EdgeInsets.all(14.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.trending_up_rounded, size: 28.sp, color: color),
            ),
            SizedBox(height: 10.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 13.5.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 6.h),
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
    );
  }
}

Widget _Badge({required String text}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppColors.themeGreen.withOpacity(0.3),
          AppColors.themeGreen.withOpacity(0.1),
        ],
      ),
      borderRadius: BorderRadius.circular(30.r),
      border: Border.all(
        color: AppColors.themeGreen.withOpacity(0.4),
        width: 1.5,
      ),
    ),
    child: Text(
      text,
      style: GoogleFonts.inter(
        fontSize: 15.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.themeGreen,
      ),
    ),
  );
}

class _SectionWrapper extends StatelessWidget {
  final String title, subtitle;
  final double height;
  final Widget child;

  const _SectionWrapper({
    required this.title,
    required this.subtitle,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blur: 18,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(28.r),
      padding: EdgeInsets.all(28.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 26.sp,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            subtitle,
            style: GoogleFonts.inter(
              fontSize: 15.5.sp,
              color: Colors.white70,
              height: 1.6,
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(height: height, child: child),
        ],
      ),
    );
  }
}
