// lib/view/pages/content/blogs_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 20.h),
        child: GlassContainer(
          opacity: 0.22,
          blur: 20,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(32.r)),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Suncube AI Blog',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w800,
                fontSize: 21.sp,
                color: Colors.white,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 24.sp,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ),
      body: LiquidBackground(
        child: SafeArea(
          top: false,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              // Hero Section
              SliverToBoxAdapter(child: SizedBox(height: 100.h)),
              SliverToBoxAdapter(child: _HeroSection()),

              // Articles Grid
              SliverPadding(
                padding: EdgeInsets.fromLTRB(
                  24.w,
                  50.h,
                  24.w,
                  80.h,
                ), // Reduced bottom padding
                sliver: _ArticleGrid(),
              ),

              // FINAL FIX: Only a tiny safe bottom padding — no huge empty space
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 20.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// HERO SECTION – Unchanged & Perfect
class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: GlassContainer(
        opacity: 0.14,
        blur: 24,
        borderRadius: BorderRadius.circular(36.r),
        padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 40.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
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
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    LucideIcons.sparkles,
                    color: AppColors.themeGreen,
                    size: 18.sp,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Solar AI Insights',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            Text(
              'Latest from Suncube AI',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 48.sp,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                height: 1.1,
                letterSpacing: -1,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'Deep dives into AI-powered solar, blockchain energy markets,\npredictive maintenance, and the future of clean energy.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 17.sp,
                color: Colors.white70,
                height: 1.6,
              ),
            ),
            SizedBox(height: 40.h),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(LucideIcons.bellRing, size: 20.sp),
              label: Text('Subscribe for Updates'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.themeGreen,
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                elevation: 15,
                shadowColor: AppColors.themeGreen.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// RESPONSIVE GRID – Perfect Spacing
class _ArticleGrid extends StatelessWidget {
  const _ArticleGrid();

  final List<_ArticleData> articles = const [
    _ArticleData(
      title: 'AI-Powered Solar: 2025 Predictions',
      author: 'Dr. Sarah Chen',
      date: 'Jan 15, 2025',
      readTime: '6 min',
      tag: 'AI & Future',
      icon: LucideIcons.brainCircuit,
      color: Color(0xFF8B5CF6),
      isFeatured: true,
    ),
    _ArticleData(
      title: 'Blockchain Energy Trading Explained',
      author: 'Marcus Rodriguez',
      date: 'Jan 12, 2025',
      readTime: '8 min',
      tag: 'Blockchain',
      icon: LucideIcons.blocks,
      color: Color(0xFF3B82F6),
    ),
    _ArticleData(
      title: 'Predictive Maintenance with AI',
      author: 'Dr. Emily Watson',
      date: 'Jan 10, 2025',
      readTime: '5 min',
      tag: 'Maintenance',
      icon: LucideIcons.wrench,
      color: Color(0xFFF59E0B),
    ),
    _ArticleData(
      title: 'Smart Grids & AI Optimization',
      author: 'Suncube AI Team',
      date: 'Jan 8, 2025',
      readTime: '10 min',
      tag: 'Smart Grid',
      icon: LucideIcons.zap,
      color: Color(0xFF10B981),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 420.w,
        mainAxisExtent: 340.h,
        crossAxisSpacing: 24.w,
        mainAxisSpacing: 24.h,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => _BlogCard(article: articles[index]),
        childCount: articles.length,
      ),
    );
  }
}

// BLOG CARD – Same Premium Design (unchanged)
class _BlogCard extends StatefulWidget {
  final _ArticleData article;
  const _BlogCard({required this.article});

  @override
  State<_BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<_BlogCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnim = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _controller.forward(),
      onExit: (_) => _controller.reverse(),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnim.value,
            child: GlassContainer(
              opacity: 0.12,
              blur: 20,
              borderRadius: BorderRadius.circular(28.r),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          widget.article.color.withOpacity(0.15),
                          widget.article.color.withOpacity(0.05),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16.w),
                              decoration: BoxDecoration(
                                color: widget.article.color.withOpacity(0.2),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: widget.article.color.withOpacity(0.4),
                                  width: 1.5,
                                ),
                              ),
                              child: Icon(
                                widget.article.icon,
                                color: widget.article.color,
                                size: 32.sp,
                              ),
                            ),
                            const Spacer(),
                            if (widget.article.isFeatured)
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.w,
                                  vertical: 6.h,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.themeGreen,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      LucideIcons.star,
                                      size: 14.sp,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 4.w),
                                    Text(
                                      'Featured',
                                      style: GoogleFonts.inter(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: widget.article.color.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: widget.article.color.withOpacity(0.4),
                            ),
                          ),
                          child: Text(
                            widget.article.tag,
                            style: GoogleFonts.inter(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: widget.article.color,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          widget.article.title,
                          style: GoogleFonts.inter(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            height: 1.3,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 14.r,
                              backgroundColor: widget.article.color.withOpacity(
                                0.3,
                              ),
                              child: Icon(
                                LucideIcons.user,
                                size: 16.sp,
                                color: widget.article.color,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.article.author,
                                    style: GoogleFonts.inter(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    widget.article.date,
                                    style: GoogleFonts.inter(
                                      fontSize: 11.sp,
                                      color: Colors.white60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 8.h,
                              ),
                              decoration: BoxDecoration(
                                color: widget.article.color.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    LucideIcons.clock,
                                    size: 12.sp,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    widget.article.readTime,
                                    style: GoogleFonts.inter(
                                      fontSize: 11.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 12.h,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  widget.article.color.withOpacity(0.3),
                                  widget.article.color.withOpacity(0.1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(
                                color: widget.article.color.withOpacity(0.5),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Read Article',
                                  style: GoogleFonts.inter(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Icon(
                                  LucideIcons.arrowRight,
                                  size: 16.sp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ArticleData {
  final String title, author, date, readTime, tag;
  final IconData icon;
  final Color color;
  final bool isFeatured;

  const _ArticleData({
    required this.title,
    required this.author,
    required this.date,
    required this.readTime,
    required this.tag,
    required this.icon,
    required this.color,
    this.isFeatured = false,
  });
}
