import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF060C09),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp),
        ),
        backgroundColor: const Color(0xFF060C09).withOpacity(0.9),
        elevation: 0,
        title: Text(
          'Suncube AI – Blog',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w800,
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 64.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060C09), Color(0xFF1A231F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            children: [
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
   HERO SECTION (same gradient & text-style)
-------------------------------------------------- */
class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.themeGreen.withOpacity(0.3),
            const Color(0xFF106B43).withOpacity(0.2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 800.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  '📚 Solar Energy Blog',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                'Insights & Resources',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 48.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Stay updated with the latest insights on AI-powered solar technology, '
                'industry trends, and expert analysis from our team of energy professionals.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(height: 32.h),
              Wrap(
                spacing: 16.w,
                runSpacing: 16.h,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward, size: 18),
                    label: Text(
                      'Subscribe to Updates',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.themeGreen,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 16.h,
                      ),
                      elevation: 8,
                      shadowColor: Colors.black.withOpacity(0.25),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 16.h,
                      ),
                      side: BorderSide(color: AppColors.themeGreen),
                      foregroundColor: AppColors.themeGreen,
                    ),
                    child: Text(
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
   ARTICLE SECTION (dummy cards)
-------------------------------------------------- */
class _ArticleSection extends StatelessWidget {
  const _ArticleSection();

  @override
  Widget build(BuildContext context) {
    final articles = [
      (
        'AI-Powered Solar: 2024 Predictions',
        'Dr. Sarah Chen',
        'January 15, 2024',
        ['Featured', 'AI Technology'],
      ),
      (
        'Blockchain in Energy: Beyond Cryptocurrency',
        'Marcus Rodriguez',
        'January 12, 2024',
        ['Blockchain'],
      ),
      (
        'Predictive Maintenance: Preventing Failures',
        'Dr. Emily Watson',
        'January 10, 2024',
        ['Maintenance'],
      ),
      (
        'Smart Grid Integration: Next Gen',
        'Technical Team',
        'January 8, 2024',
        ['Smart Grid'],
      ),
    ];

    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 25.h,
        mainAxisExtent: 400.h,
      ),
      itemCount: articles.length,
      itemBuilder: (_, i) {
        final (title, author, date, tags) = articles[i];
        return SizedBox(
          child: Card(
            color: Colors.white.withOpacity(0.1),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: BorderSide(color: Colors.white12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(color: Colors.grey[800]),
                ),
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 8.w,
                        children:
                            tags
                                .map(
                                  (t) => Chip(
                                    label: Text(
                                      t,
                                      style: GoogleFonts.inter(fontSize: 12.sp),
                                    ),
                                    backgroundColor: AppColors.themeGreen
                                        .withOpacity(0.15),
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                )
                                .toList(),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        title,
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        '$author • $date',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: AppColors.themeGreen),
                            foregroundColor: AppColors.themeGreen,
                          ),
                          child: Text(
                            'Read Article',
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
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
    );
  }
}
