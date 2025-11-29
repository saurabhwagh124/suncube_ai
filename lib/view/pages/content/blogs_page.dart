import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: GlassContainer(
          opacity: 0.2,
          blur: 10,
          borderRadius: BorderRadius.zero,
          child: Container(),
        ),
        title: Text(
          'Suncube AI – Blog',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w800,
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: LiquidBackground(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            children: [
              SizedBox(height: 100.h),
              _HeroSection(),
              SizedBox(height: 40.h),
              _ArticleSection(),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}

/* --------------------------------------------------
   HERO SECTION
-------------------------------------------------- */
class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width: double.infinity,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(24.r),
      padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 32.w),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 900.w),
          child: Column(
            children: [
              // Badge
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
                      LucideIcons.bookOpen,
                      color: AppColors.themeGreen,
                      size: 16.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'Solar Energy Blog',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              // Title
              ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Colors.white,
                    AppColors.themeGreen.withOpacity(0.8),
                  ],
                ).createShader(bounds),
                child: Text(
                  'Insights & Resources',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 52.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.1,
                    letterSpacing: -1,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Description
              Text(
                'Stay updated with the latest insights on AI-powered solar technology, '
                'industry trends, and expert analysis from our team of energy professionals.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
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
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(LucideIcons.bell, size: 18.sp),
                    label: Text(
                      'Subscribe to Updates',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
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
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(LucideIcons.download, size: 18.sp),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.w,
                        vertical: 18.h,
                      ),
                      side: BorderSide(color: Colors.white.withOpacity(0.3), width: 1.5),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    label: Text(
                      'Download Resources',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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

/* --------------------------------------------------
   ARTICLE SECTION
-------------------------------------------------- */
class _ArticleSection extends StatelessWidget {
  const _ArticleSection();

  @override
  Widget build(BuildContext context) {
    final articles = [
      _ArticleData(
        title: 'AI-Powered Solar: 2024 Predictions',
        author: 'Dr. Sarah Chen',
        date: 'January 15, 2024',
        readTime: '5 min read',
        tags: ['Featured', 'AI Technology'],
        icon: LucideIcons.brain,
        accentColor: const Color(0xFF3B82F6),
      ),
      _ArticleData(
        title: 'Blockchain in Energy: Beyond Cryptocurrency',
        author: 'Marcus Rodriguez',
        date: 'January 12, 2024',
        readTime: '7 min read',
        tags: ['Blockchain', 'Innovation'],
        icon: LucideIcons.link,
        accentColor: const Color(0xFF8B5CF6),
      ),
      _ArticleData(
        title: 'Predictive Maintenance: Preventing Failures',
        author: 'Dr. Emily Watson',
        date: 'January 10, 2024',
        readTime: '6 min read',
        tags: ['Maintenance', 'AI'],
        icon: LucideIcons.wrench,
        accentColor: const Color(0xFFF59E0B),
      ),
      _ArticleData(
        title: 'Smart Grid Integration: Next Gen',
        author: 'Technical Team',
        date: 'January 8, 2024',
        readTime: '8 min read',
        tags: ['Smart Grid', 'Future'],
        icon: LucideIcons.zap,
        accentColor: const Color(0xFF10B981),
      ),
    ];

    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 20.w,
        mainAxisSpacing: 20.h,
      ),
      itemCount: articles.length,
      itemBuilder: (_, i) => _BlogCard(article: articles[i]),
    );
  }
}

/* --------------------------------------------------
   BLOG CARD
-------------------------------------------------- */
class _BlogCard extends StatefulWidget {
  final _ArticleData article;

  const _BlogCard({required this.article});

  @override
  State<_BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<_BlogCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -8.0 : 0.0),
        child: GlassContainer(
          opacity: _isHovered ? 0.15 : 0.1,
          borderRadius: BorderRadius.circular(20.r),
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image/Icon Header
              Container(
                height: 180.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      widget.article.accentColor.withOpacity(0.3),
                      widget.article.accentColor.withOpacity(0.1),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Stack(
                  children: [
                    // Icon
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(20.w),
                        decoration: BoxDecoration(
                          color: widget.article.accentColor.withOpacity(0.2),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: widget.article.accentColor.withOpacity(0.3),
                            width: 2,
                          ),
                        ),
                        child: Icon(
                          widget.article.icon,
                          size: 40.sp,
                          color: widget.article.accentColor,
                        ),
                      ),
                    ),
                    // Featured Badge
                    if (widget.article.tags.contains('Featured'))
                      Positioned(
                        top: 12.h,
                        right: 12.w,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: AppColors.themeGreen,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(LucideIcons.star, size: 12.sp, color: Colors.white),
                              SizedBox(width: 4.w),
                              Text(
                                'Featured',
                                style: GoogleFonts.inter(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              // Content
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tags
                      Wrap(
                        spacing: 6.w,
                        runSpacing: 6.h,
                        children: widget.article.tags
                            .where((t) => t != 'Featured')
                            .map(
                              (tag) => Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                                decoration: BoxDecoration(
                                  color: widget.article.accentColor.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: Border.all(
                                    color: widget.article.accentColor.withOpacity(0.3),
                                    width: 1,
                                  ),
                                ),
                                child: Text(
                                  tag,
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    color: widget.article.accentColor,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(height: 12.h),
                      // Title
                      Text(
                        widget.article.title,
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 1.3,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 12.h),
                      // Author & Date
                      Row(
                        children: [
                          Container(
                            width: 32.w,
                            height: 32.w,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  widget.article.accentColor.withOpacity(0.3),
                                  widget.article.accentColor.withOpacity(0.1),
                                ],
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              LucideIcons.user,
                              size: 16.sp,
                              color: widget.article.accentColor,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.article.author,
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  widget.article.date,
                                  style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      // Read Time & Button
                      Row(
                        children: [
                          Icon(
                            LucideIcons.clock,
                            size: 14.sp,
                            color: Colors.white60,
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            widget.article.readTime,
                            style: GoogleFonts.inter(
                              fontSize: 11.sp,
                              color: Colors.white60,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  widget.article.accentColor.withOpacity(0.3),
                                  widget.article.accentColor.withOpacity(0.2),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                color: widget.article.accentColor.withOpacity(0.4),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Read',
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: widget.article.accentColor,
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Icon(
                                  LucideIcons.arrowRight,
                                  size: 14.sp,
                                  color: widget.article.accentColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
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

/* --------------------------------------------------
   DATA MODEL
-------------------------------------------------- */
class _ArticleData {
  final String title;
  final String author;
  final String date;
  final String readTime;
  final List<String> tags;
  final IconData icon;
  final Color accentColor;

  _ArticleData({
    required this.title,
    required this.author,
    required this.date,
    required this.readTime,
    required this.tags,
    required this.icon,
    required this.accentColor,
  });
}
