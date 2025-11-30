// lib/view/pages/content/success_stories_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/common_app_%20bar.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class SuccessStoriesPage extends StatelessWidget {
  const SuccessStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LiquidBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CommonAppBar(title: 'Success Stories'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            children: [
              _HeroSection(),
              SizedBox(height: 40.h),
              _ResidentialSection(),
              SizedBox(height: 40.h),
              _IndustrialSection(),
              SizedBox(height: 40.h),
              _GlobalSection(),
              SizedBox(height: 40.h),
              _MetricsSection(),
              SizedBox(height: 80.h), // Safe bottom space
            ],
          ),
        ),
      ),
    );
  }
}

/* -------------------------------------------------
   HERO
------------------------------------------------- */
class _HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width: double.infinity,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(24.r),
      padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 32.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.themeGreen.withOpacity(0.3),
                  AppColors.themeGreen.withOpacity(0.1),
                ],
              ),
              borderRadius: BorderRadius.circular(24.r),
              border: Border.all(
                color: AppColors.themeGreen.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  LucideIcons.award,
                  color: AppColors.themeGreen,
                  size: 16.sp,
                ),
                SizedBox(width: 8.w),
                Flexible(
                  child: Text(
                    'From residential rooftops to enterprise parks',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
          ShaderMask(
            shaderCallback:
                (bounds) => LinearGradient(
                  colors: [Colors.white, AppColors.themeGreen.withOpacity(0.8)],
                ).createShader(bounds),
            child: Text(
              'Every Watt Counts.\nEvery Story Matters.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 48.sp,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                height: 1.1,
                letterSpacing: -1,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Real homeowners achieving remarkable savings with AI-powered solar optimization',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: Colors.white.withOpacity(0.7),
              height: 1.6,
            ),
          ),
          SizedBox(height: 40.h),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(LucideIcons.arrowRight, size: 18.sp),
            label: Text(
              'Explore Featured Stories',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeGreen,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 18.h),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   RESIDENTIAL SECTION
------------------------------------------------- */
class _ResidentialSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Residential Success Stories',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 36.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'Real homeowners achieving remarkable savings with AI-powered solar optimization',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white60),
        ),
        SizedBox(height: 32.h),
        SizedBox(
          height: 520.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              _StoryCard(
                name: 'Priya Sharma',
                location: 'Mumbai',
                savings: '₹22,300',
                before: 'High electricity bills, frequent power cuts',
                after: 'Smart battery management, 24/7 monitoring',
                image:
                    'https://images.unsplash.com/photo-1494790108755-2616b612b786?w=150&h=150&fit=crop&crop=face',
                accentColor: Color(0xFF3B82F6),
              ),
              _StoryCard(
                name: 'Rajesh Patel',
                location: 'Bangalore',
                savings: '₹18,500',
                before: 'Manual system monitoring',
                after: 'AI-powered optimization',
                image:
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face',
                accentColor: Color(0xFF8B5CF6),
              ),
              _StoryCard(
                name: 'Anita Desai',
                location: 'Delhi',
                savings: '₹31,200',
                before: 'Unpredictable energy costs',
                after: 'Predictive cost management',
                image:
                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=150&h=150&fit=crop&crop=face',
                accentColor: Color(0xFF10B981),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/* -------------------------------------------------
   INDUSTRIAL SECTION
------------------------------------------------- */
class _IndustrialSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Industrial Efficiency Breakthroughs',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 36.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'How leading industries are achieving unprecedented efficiency with AI-powered solutions',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white60),
        ),
        SizedBox(height: 32.h),
        SizedBox(
          height: 380.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              _IndustrialCard(
                title: 'Textile Factory',
                location: 'Surat, Gujarat',
                stat: '37%',
                desc: 'Downtime Reduction',
                quote:
                    'Suncube AI\'s predictive maintenance tools transformed our operations. We\'ve seen a 37% reduction in downtime and significant cost savings.',
                author: 'Vikram Mehta – Operations Director',
                accentColor: Color(0xFFF59E0B),
              ),
              _IndustrialCard(
                title: 'Steel Plant',
                location: 'Jharkhand',
                stat: '42%',
                desc: 'Energy Efficiency',
                quote:
                    'The AI optimization system helped us achieve 42% better energy efficiency while maintaining production quality.',
                author: 'Sanjay Kumar – Plant Manager',
                accentColor: Color(0xFF3B82F6),
              ),
              _IndustrialCard(
                title: 'Chemical Factory',
                location: 'Vadodara, Gujarat',
                stat: '28%',
                desc: 'Cost Reduction',
                quote:
                    'Real-time monitoring and predictive analytics have reduced our operational costs by 28% annually.',
                author: 'Dr. Meera Iyer – Technical Director',
                accentColor: Color(0xFF8B5CF6),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/* -------------------------------------------------
   GLOBAL SECTION — OVERFLOW FIXED
------------------------------------------------- */
class _GlobalSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Global Adoption Snippets',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 36.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'Suncube AI\'s impact across continents, powering communities worldwide',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white60),
        ),
        SizedBox(height: 32.h),
        SizedBox(
          height: 200.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              _GlobalSnippet(
                icon: LucideIcons.globe,
                country: 'Kenya',
                city: 'Nairobi',
                title: 'Solar Microgrid',
                detail: '500+ households powered',
                accentColor: Color(0xFF10B981),
              ),
              _GlobalSnippet(
                icon: LucideIcons.building2,
                country: 'UAE',
                city: 'Dubai',
                title: 'Energy Trading',
                detail: '2.5MW trading capacity',
                accentColor: Color(0xFFF59E0B),
              ),
              _GlobalSnippet(
                icon: LucideIcons.zap,
                country: 'Australia',
                city: 'Melbourne',
                title: 'Smart Grid',
                detail: '10,000+ connections',
                accentColor: Color(0xFF3B82F6),
              ),
              _GlobalSnippet(
                icon: LucideIcons.house,
                country: 'Germany',
                city: 'Berlin',
                title: 'Residential AI',
                detail: '1,200+ homes optimized',
                accentColor: Color(0xFF8B5CF6),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/* -------------------------------------------------
   METRICS SECTION — RIGHT OVERFLOW FIXED
------------------------------------------------- */
class _MetricsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      opacity: 0.1,
      borderRadius: BorderRadius.circular(24.r),
      padding: EdgeInsets.all(40.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.w),
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
              LucideIcons.chartLine,
              size: 40.sp,
              color: AppColors.themeGreen,
            ),
          ),
          SizedBox(height: 24.h),
          Text(
            'User Metrics Snapshot',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 28.sp,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'Aggregate success metrics from our global user base',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white60),
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _Metric(
                icon: LucideIcons.users,
                value: '482',
                label: 'Homes Optimized',
                color: Color(0xFF3B82F6),
              ),
              _Metric(
                icon: LucideIcons.zap,
                value: '1.2M+',
                label: 'kWh Tracked',
                color: Color(0xFFF59E0B),
              ),
              _Metric(
                icon: LucideIcons.trendingUp,
                value: '₹3.8 Cr.',
                label: 'Grid Credits Generated',
                color: Color(0xFF10B981),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   STORY CARD — WITH 404 FALLBACK
------------------------------------------------- */
class _StoryCard extends StatefulWidget {
  final String name, location, savings, before, after, image;
  final Color accentColor;
  const _StoryCard({
    required this.name,
    required this.location,
    required this.savings,
    required this.before,
    required this.after,
    required this.image,
    required this.accentColor,
  });

  @override
  State<_StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<_StoryCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -8.0 : 0.0),
        width: 320.w,
        margin: EdgeInsets.only(right: 16.w),
        child: GlassContainer(
          opacity: _isHovered ? 0.15 : 0.1,
          borderRadius: BorderRadius.circular(20.r),
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(4.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      widget.accentColor.withOpacity(0.6),
                      widget.accentColor.withOpacity(0.2),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 46.r,
                  child: ClipOval(
                    child: Image.network(
                      widget.image,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (_, __, ___) => Icon(
                            LucideIcons.user,
                            size: 50.sp,
                            color: widget.accentColor,
                          ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                widget.name,
                style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    LucideIcons.mapPin,
                    size: 14.sp,
                    color: widget.accentColor,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    widget.location,
                    style: GoogleFonts.inter(
                      fontSize: 13.sp,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      widget.accentColor.withOpacity(0.3),
                      widget.accentColor.withOpacity(0.1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: widget.accentColor.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      widget.savings,
                      style: GoogleFonts.inter(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w900,
                        color: widget.accentColor,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Annual Savings',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Divider(color: Colors.white.withOpacity(0.1)),
              SizedBox(height: 16.h),
              _BeforeAfter(
                'Before',
                widget.before,
                Colors.red.withOpacity(0.2),
                Colors.red,
              ),
              SizedBox(height: 12.h),
              _BeforeAfter(
                'After',
                widget.after,
                widget.accentColor.withOpacity(0.2),
                widget.accentColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BeforeAfter extends StatelessWidget {
  final String label, text;
  final Color bgColor, textColor;
  const _BeforeAfter(this.label, this.text, this.bgColor, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: textColor.withOpacity(0.3), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                label == 'Before'
                    ? LucideIcons.circle
                    : LucideIcons.circleCheck,
                size: 14.sp,
                color: textColor,
              ),
              SizedBox(width: 6.w),
              Text(
                label,
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Text(
            text,
            style: GoogleFonts.inter(fontSize: 11.sp, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   INDUSTRIAL CARD — UNCHANGED
------------------------------------------------- */
class _IndustrialCard extends StatefulWidget {
  final String title, location, stat, desc, quote, author;
  final Color accentColor;
  const _IndustrialCard({
    required this.title,
    required this.location,
    required this.stat,
    required this.desc,
    required this.quote,
    required this.author,
    required this.accentColor,
  });

  @override
  State<_IndustrialCard> createState() => _IndustrialCardState();
}

class _IndustrialCardState extends State<_IndustrialCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -4.0 : 0.0),
        width: 280.w,
        margin: EdgeInsets.only(right: 16.w),
        child: GlassContainer(
          opacity: _isHovered ? 0.15 : 0.1,
          borderRadius: BorderRadius.circular(20.r),
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          widget.accentColor.withOpacity(0.3),
                          widget.accentColor.withOpacity(0.1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: widget.accentColor.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      widget.location,
                      style: GoogleFonts.inter(
                        fontSize: 11.sp,
                        color: widget.accentColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Icon(
                    LucideIcons.factory,
                    size: 20.sp,
                    color: widget.accentColor,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Text(
                widget.title,
                style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.stat,
                    style: GoogleFonts.inter(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w900,
                      color: widget.accentColor,
                      height: 1,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Padding(
                    padding: EdgeInsets.only(bottom: 6.h),
                    child: Icon(
                      LucideIcons.trendingUp,
                      size: 20.sp,
                      color: widget.accentColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                widget.desc,
                style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.h),
              Divider(color: Colors.white.withOpacity(0.1)),
              SizedBox(height: 16.h),
              Text(
                '"${widget.quote}"',
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontStyle: FontStyle.italic,
                  color: Colors.white70,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                widget.author,
                style: GoogleFonts.inter(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                  color: widget.accentColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* -------------------------------------------------
   GLOBAL SNIPPET — OVERFLOW FIXED
------------------------------------------------- */
class _GlobalSnippet extends StatefulWidget {
  final IconData icon;
  final String country, city, title, detail;
  final Color accentColor;
  const _GlobalSnippet({
    required this.icon,
    required this.country,
    required this.city,
    required this.title,
    required this.detail,
    required this.accentColor,
  });

  @override
  State<_GlobalSnippet> createState() => _GlobalSnippetState();
}

class _GlobalSnippetState extends State<_GlobalSnippet> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -4.0 : 0.0),
        width: 180.w,
        margin: EdgeInsets.only(right: 16.w),
        child: GlassContainer(
          opacity: _isHovered ? 0.15 : 0.1,
          borderRadius: BorderRadius.circular(16.r),
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(14.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      widget.accentColor.withOpacity(0.3),
                      widget.accentColor.withOpacity(0.1),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  widget.icon,
                  size: 28.sp,
                  color: widget.accentColor,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                widget.country,
                style: GoogleFonts.inter(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                widget.city,
                style: GoogleFonts.inter(
                  fontSize: 11.sp,
                  color: Colors.white60,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: widget.accentColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: widget.accentColor.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Text(
                  widget.title,
                  style: GoogleFonts.inter(
                    fontSize: 10.5.sp,
                    fontWeight: FontWeight.w600,
                    color: widget.accentColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                widget.detail,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 9.5.sp,
                  color: Colors.white70,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* -------------------------------------------------
   METRIC — RIGHT OVERFLOW FIXED WITH FLEXIBLE
------------------------------------------------- */
class _Metric extends StatelessWidget {
  final IconData icon;
  final String value, label;
  final Color color;
  const _Metric({
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(14.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color.withOpacity(0.3), color.withOpacity(0.1)],
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 28.sp, color: color),
          ),
          SizedBox(height: 14.h),
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 22.sp,
              fontWeight: FontWeight.w900,
              color: color,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 11.sp, color: Colors.white70),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
