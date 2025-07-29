import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class SuccessStoriesPage extends StatelessWidget {
  const SuccessStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

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
          'Success Stories',
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
              _ResidentialSection(),
              _IndustrialSection(),
              _GlobalSection(),
              _MetricsSection(),
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
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF73E0A9), Color(0xFF34B87C)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.15),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              'From residential rooftops to enterprise parks — see how Suncube AI transforms solar adoption into intelligent energy leadership.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Text(
            'Every Watt Counts. Every Story Matters.',
            style: GoogleFonts.inter(
              fontSize: 48.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Real homeowners achieving remarkable savings with AI-powered solar optimization',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 18.sp,
              color: Colors.white.withOpacity(.8),
            ),
          ),
          SizedBox(height: 32.h),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Explore Featured Stories'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF34B87C),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              elevation: 8,
              shadowColor: Colors.black.withOpacity(.25),
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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Column(
        children: [
          Text(
            'Residential Success Stories',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Real homeowners achieving remarkable savings with AI-powered solar optimization',
            style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 450.h,
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
                ),
                _StoryCard(
                  name: 'Rajesh Patel',
                  location: 'Bangalore',
                  savings: '₹18,500',
                  before: 'Manual system monitoring',
                  after: 'AI-powered optimization',
                  image:
                      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face',
                ),
                _StoryCard(
                  name: 'Anita Desai',
                  location: 'Delhi',
                  savings: '₹31,200',
                  before: 'Unpredictable energy costs',
                  after: 'Predictive cost management',
                  image:
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=150&h=150&fit=crop&crop=face',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   INDUSTRIAL SECTION
------------------------------------------------- */
class _IndustrialSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Column(
        children: [
          Text(
            'Industrial Efficiency Breakthroughs',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'How leading industries are achieving unprecedented efficiency with AI-powered solutions',
            style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 330.h,
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
                ),
                _IndustrialCard(
                  title: 'Steel Plant',
                  location: 'Jamshedpur, Jharkhand',
                  stat: '42%',
                  desc: 'Energy Efficiency',
                  quote:
                      'The AI optimization system helped us achieve 42% better energy efficiency while maintaining production quality.',
                  author: 'Sanjay Kumar – Plant Manager',
                ),
                _IndustrialCard(
                  title: 'Chemical Factory',
                  location: 'Vadodara, Gujarat',
                  stat: '28%',
                  desc: 'Cost Reduction',
                  quote:
                      'Real-time monitoring and predictive analytics have reduced our operational costs by 28% annually.',
                  author: 'Dr. Meera Iyer – Technical Director',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   GLOBAL SECTION
------------------------------------------------- */
class _GlobalSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Column(
        children: [
          Text(
            'Global Adoption Snippets',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Suncube AI\'s impact across continents, powering communities worldwide',
            style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 150.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                _GlobalSnippet(
                  icon: '🌍',
                  country: 'Kenya',
                  city: 'Nairobi',
                  title: 'Solar Microgrid',
                  detail: '500+ households powered',
                ),
                _GlobalSnippet(
                  icon: '🏢',
                  country: 'UAE',
                  city: 'Dubai',
                  title: 'Energy Trading',
                  detail: '2.5MW trading capacity',
                ),
                _GlobalSnippet(
                  icon: '⚡',
                  country: 'Australia',
                  city: 'Melbourne',
                  title: 'Smart Grid',
                  detail: '10,000+ connections',
                ),
                _GlobalSnippet(
                  icon: '🏠',
                  country: 'Germany',
                  city: 'Berlin',
                  title: 'Residential AI',
                  detail: '1,200+ homes optimized',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   METRICS SECTION
------------------------------------------------- */
class _MetricsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.h, bottom: 40.h),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF3B82F6), Color(0xFF8B5CF6)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Text(
            'User Metrics Snapshot',
            style: GoogleFonts.inter(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Aggregate success metrics from our global user base',
            style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.white70),
          ),
          SizedBox(height: 32.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _Metric(
                icon: LucideIcons.users,
                value: '482',
                label: 'Homes Optimized',
              ),
              _Metric(
                icon: LucideIcons.zap,
                value: '1.2M+',
                label: 'kWh Tracked',
              ),
              _Metric(
                icon: LucideIcons.trendingUp,
                value: '₹3.8 Cr.',
                label: 'Grid Credits Generated',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------
   WIDGETS
------------------------------------------------- */
class _StoryCard extends StatelessWidget {
  final String name, location, savings, before, after, image;

  const _StoryCard({
    required this.name,
    required this.location,
    required this.savings,
    required this.before,
    required this.after,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.r),
      decoration: BoxDecoration(
        color: const Color(0xFF1E2622),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(image),
                  radius: 40.r,
                ),
                SizedBox(height: 12.h),
                Text(
                  name,
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      LucideIcons.mapPin,
                      size: 14,
                      color: Colors.white54,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      location,
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: const Color(0xFF73E0A9).withOpacity(.15),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    children: [
                      Text(
                        savings,
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF73E0A9),
                        ),
                      ),
                      Text(
                        'Annual Savings',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.white12, height: 1),
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _BeforeAfter('Before', before, Colors.red),
                SizedBox(height: 8.h),
                _BeforeAfter('After', after, Colors.green),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BeforeAfter extends StatelessWidget {
  final String label, text;
  final Color color;

  const _BeforeAfter(this.label, this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.h),
          Text(text, style: GoogleFonts.inter(fontSize: 12.sp)),
        ],
      ),
    );
  }
}

class _IndustrialCard extends StatelessWidget {
  final String title, location, stat, desc, quote, author;

  const _IndustrialCard({
    required this.title,
    required this.location,
    required this.stat,
    required this.desc,
    required this.quote,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      margin: EdgeInsets.symmetric(horizontal: 5.r),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: const Color(0xFF1E2622),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                location,
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  color: const Color(0xFF73E0A9),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                LucideIcons.trendingUp,
                size: 20,
                color: Color(0xFF73E0A9),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            stat,
            style: GoogleFonts.inter(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF73E0A9),
            ),
          ),
          Text(
            desc,
            style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white70),
          ),
          SizedBox(height: 12.h),
          Divider(color: Colors.white12),
          SizedBox(height: 8.h),
          Text(
            '"$quote"',
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            author,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

class _GlobalSnippet extends StatelessWidget {
  final String icon, country, city, title, detail;

  const _GlobalSnippet({
    required this.icon,
    required this.country,
    required this.city,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.r),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: const Color(0xFF1E2622),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        children: [
          Text(icon, style: const TextStyle(fontSize: 32)),
          SizedBox(height: 8.h),
          Text(
            country,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            city,
            style: GoogleFonts.inter(fontSize: 12.sp, color: Colors.white70),
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            detail,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 10.sp, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

class _Metric extends StatelessWidget {
  final IconData icon;
  final String value, label;

  const _Metric({required this.icon, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Column(
        children: [
          Container(
            width: 50.w,
            height: 50.w,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 40, color: Colors.amber),
          ),
          SizedBox(height: 12.h),
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Wrap(
            children: [
              Text(
                label,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
