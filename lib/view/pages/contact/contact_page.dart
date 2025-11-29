import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp),
        ),
        title: Text(
          'Contact Us',
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF060C09).withOpacity(0.9),
                const Color(0xFF1A231F).withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060C09), Color(0xFF1A231F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Container(
                padding: EdgeInsets.all(20.w),
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
                child: Column(
                  children: [
                    Text(
                      'Contact Us',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Get in Touch with Our Solar Experts',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Ready to transform your energy future? Our team of solar and AI experts is here to help you every step of the way. Get your free consultation today.',
                      style: GoogleFonts.inter(
                        color: Colors.white70,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Schedule Free Consultation',
                        style: GoogleFonts.inter(fontSize: 14.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: AppColors.themeGreen,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              // Contact Methods Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Multiple Ways to Reach Us',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Choose the contact method that works best for you. Our team is ready to help.',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        height: 220.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ContactCard(
                              icon: Icons.email,
                              title: 'Email Us',
                              description: 'Get in touch via email',
                              contactInfo: 'hello@suncube.ai',
                              actionText: 'Send Email',
                              action: () {},
                            ),
                            ContactCard(
                              icon: Icons.phone,
                              title: 'Call Us',
                              description: 'Speak with our experts',
                              contactInfo: '+1 (555) 123-4567',
                              actionText: 'Call Now',
                              action: () {},
                            ),
                            ContactCard(
                              icon: Icons.chat,
                              title: 'Live Chat',
                              description: 'Chat with our support team',
                              contactInfo: 'Available Mon-Fri 9AM-6PM',
                              actionText: 'Start Chat',
                              action: () {},
                            ),
                            ContactCard(
                              icon: Icons.calendar_today,
                              title: 'Schedule Demo',
                              description: 'Book a personalized demo',
                              contactInfo: '30-minute consultation',
                              actionText: 'Book Demo',
                              action: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Contact Form Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Send Us a Message',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Fill out the form below and we\'ll get back to you within 24 hours.',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Card(
                        color: Colors.white.withOpacity(0.1),
                        child: Padding(
                          padding: EdgeInsets.all(16.w),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Full Name *',
                                  labelStyle: GoogleFonts.inter(
                                    color: Colors.white70,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your full name';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10.h),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email Address *',
                                  labelStyle: GoogleFonts.inter(
                                    color: Colors.white70,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email address';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10.h),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Company/Organization',
                                  labelStyle: GoogleFonts.inter(
                                    color: Colors.white70,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  labelStyle: GoogleFonts.inter(
                                    color: Colors.white70,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Type of Inquiry *',
                                  labelStyle: GoogleFonts.inter(
                                    color: Colors.white70,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your inquiry type';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10.h),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Message *',
                                  labelStyle: GoogleFonts.inter(
                                    color: Colors.white70,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                maxLines: 4,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your message';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 20.h),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Send Message',
                                  style: GoogleFonts.inter(fontSize: 14.sp),
                                ),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: AppColors.themeGreen,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Office Location Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our Office',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Suncube AI Headquarters',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '123 Innovation Drive\nAustin, TX 78701\nUnited States',
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Monday - Friday: 9:00 AM - 6:00 PM CST',
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Get Directions',
                          style: GoogleFonts.inter(fontSize: 14.sp),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColors.themeGreen,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Download Resources Section
              GlassCard(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Download Resources',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Card(
                        color: Colors.white.withOpacity(0.1),
                        child: Padding(
                          padding: EdgeInsets.all(16.w),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'Company Brochure',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: Text(
                                  'Complete overview of our solutions',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                                trailing: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Download',
                                    style: GoogleFonts.inter(fontSize: 12.sp),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: AppColors.themeGreen,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Technical Specifications',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: Text(
                                  'Detailed technical documentation',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                                trailing: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Download',
                                    style: GoogleFonts.inter(fontSize: 12.sp),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: AppColors.themeGreen,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'ROI Calculator',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: Text(
                                  'Calculate your solar investment returns',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                                trailing: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Download',
                                    style: GoogleFonts.inter(fontSize: 12.sp),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: AppColors.themeGreen,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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

class GlassCard extends StatelessWidget {
  final Widget child;

  GlassCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.05),
            Colors.white.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String contactInfo;
  final String actionText;
  final VoidCallback action;

  const ContactCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.contactInfo,
    required this.actionText,
    required this.action,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48.r, color: AppColors.themeGreen),
            SizedBox(height: 10.h),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              description,
              style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white70),
            ),
            SizedBox(height: 10.h),
            Text(
              contactInfo,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
              onPressed: action,
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColors.themeGreen,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: Text(
                actionText,
                style: GoogleFonts.inter(fontSize: 14.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
