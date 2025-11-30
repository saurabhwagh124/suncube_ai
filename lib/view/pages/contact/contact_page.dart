import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/common/common_app_%20bar.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LiquidBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:CommonAppBar(title: "Contact Us"),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              GlassContainer(
                margin: EdgeInsets.only(bottom: 20.h),
                padding: EdgeInsets.all(20.w),
                blur: 15,
                opacity: 0.1,
                color: AppColors.themeGreen,
                borderRadius: BorderRadius.circular(28.r),
                child: Column(
                  children: [
                    Text(
                      'Get in Touch with Our Solar Experts',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      'Ready to transform your energy future? Our team of solar and AI experts is here to help you every step of the way.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.themeGreen,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 12.h,
                        ),
                      ),
                      child: Text(
                        'Schedule Free Consultation',
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Contact Methods Section
              GlassContainer(
                margin: EdgeInsets.only(bottom: 20.h),
                padding: EdgeInsets.all(20.w),
                blur: 15,
                opacity: 0.1,
                color: Colors.white,
                borderRadius: BorderRadius.circular(28.r),
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
                      'Choose the contact method that works best for you.',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 240.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ContactCard(
                            icon: LucideIcons.mail,
                            title: 'Email Us',
                            description: 'Get in touch via email',
                            contactInfo: 'hello@suncube.ai',
                            actionText: 'Send Email',
                            accentColor: const Color(0xFF73E0A9),
                            action: () {},
                          ),
                          SizedBox(width: 12.w),
                          ContactCard(
                            icon: LucideIcons.phone,
                            title: 'Call Us',
                            description: 'Speak with our experts',
                            contactInfo: '+1 (555) 123-4567',
                            actionText: 'Call Now',
                            accentColor: const Color(0xFF3B82F6),
                            action: () {},
                          ),
                          SizedBox(width: 12.w),
                          ContactCard(
                            icon: LucideIcons.messageCircle,
                            title: 'Live Chat',
                            description: 'Chat with our support team',
                            contactInfo: 'Mon-Fri 9AM-6PM',
                            actionText: 'Start Chat',
                            accentColor: const Color(0xFFF59E0B),
                            action: () {},
                          ),
                          SizedBox(width: 12.w),
                          ContactCard(
                            icon: LucideIcons.calendar,
                            title: 'Schedule Demo',
                            description: 'Book a personalized demo',
                            contactInfo: '30-min consultation',
                            actionText: 'Book Demo',
                            accentColor: const Color(0xFF22C55E),
                            action: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Contact Form Section
              GlassContainer(
                margin: EdgeInsets.only(bottom: 20.h),
                padding: EdgeInsets.all(20.w),
                blur: 15,
                opacity: 0.1,
                color: Colors.white,
                borderRadius: BorderRadius.circular(28.r),
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
                        fontSize: 14.sp,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GlassContainer(
                      blur: 10,
                      opacity: 0.05,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      padding: EdgeInsets.all(16.w),
                      child: Column(
                        children: [
                          _buildTextFormField(
                            'Full Name *',
                            'Enter your full name',
                          ),
                          SizedBox(height: 12.h),
                          _buildTextFormField(
                            'Email Address *',
                            'Enter your email',
                          ),
                          SizedBox(height: 12.h),
                          _buildTextFormField(
                            'Company/Organization',
                            'Enter your company',
                          ),
                          SizedBox(height: 12.h),
                          _buildTextFormField(
                            'Phone Number',
                            'Enter your phone',
                          ),
                          SizedBox(height: 12.h),
                          _buildTextFormField(
                            'Type of Inquiry *',
                            'Select inquiry type',
                          ),
                          SizedBox(height: 12.h),
                          _buildTextFormField(
                            'Message *',
                            'Enter your message',
                            maxLines: 4,
                          ),
                          SizedBox(height: 20.h),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.themeGreen,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 40.w,
                                vertical: 14.h,
                              ),
                            ),
                            child: Text(
                              'Send Message',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Office Location Section
              GlassContainer(
                margin: EdgeInsets.only(bottom: 20.h),
                padding: EdgeInsets.all(20.w),
                blur: 15,
                opacity: 0.1,
                color: const Color(0xFF73E0A9),
                borderRadius: BorderRadius.circular(28.r),
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
                    SizedBox(height: 16.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          LucideIcons.mapPin,
                          color: const Color(0xFF73E0A9),
                          size: 20.sp,
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Suncube AI Headquarters',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '123 Innovation Drive\nAustin, TX 78701\nUnited States',
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Icon(
                          LucideIcons.clock,
                          color: const Color(0xFF73E0A9),
                          size: 20.sp,
                        ),
                        SizedBox(width: 12.w),
                        Flexible(
                          child: Text(
                            'Monday - Friday: 9:00 AM - 6:00 PM CST',
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              color: Colors.white.withOpacity(0.8),
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF73E0A9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 12.h,
                        ),
                      ),
                      child: Text(
                        'Get Directions',
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Download Resources Section
              GlassContainer(
                margin: EdgeInsets.only(bottom: 20.h),
                padding: EdgeInsets.all(20.w),
                blur: 15,
                opacity: 0.1,
                color: Colors.white,
                borderRadius: BorderRadius.circular(28.r),
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
                    SizedBox(height: 16.h),
                    _buildResourceItem(
                      'Company Brochure',
                      'Complete overview of our solutions',
                      const Color(0xFF73E0A9),
                    ),
                    SizedBox(height: 12.h),
                    _buildResourceItem(
                      'Technical Specifications',
                      'Detailed technical documentation',
                      const Color(0xFF3B82F6),
                    ),
                    SizedBox(height: 12.h),
                    _buildResourceItem(
                      'ROI Calculator',
                      'Calculate your solar investment returns',
                      const Color(0xFFF59E0B),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(String label, String hint, {int maxLines = 1}) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        hintStyle: GoogleFonts.inter(
          color: Colors.white.withOpacity(0.4),
          fontSize: 14.sp,
        ),
        labelStyle: GoogleFonts.inter(
          color: Colors.white.withOpacity(0.7),
          fontSize: 14.sp,
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.05),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.2),
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: const Color(0xFF73E0A9).withOpacity(0.5),
            width: 1.5.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.15),
            width: 1.w,
          ),
        ),
      ),
      style: GoogleFonts.inter(color: Colors.white, fontSize: 14.sp),
    );
  }

  Widget _buildResourceItem(
    String title,
    String description,
    Color accentColor,
  ) {
    return GlassContainer(
      blur: 10,
      opacity: 0.05,
      color: accentColor,
      borderRadius: BorderRadius.circular(12.r),
      padding: EdgeInsets.all(14.w),
      child: Row(
        children: [
          Container(
            width: 44.w,
            height: 44.h,
            decoration: BoxDecoration(
              color: accentColor.withOpacity(0.15),
              shape: BoxShape.circle,
              border: Border.all(
                color: accentColor.withOpacity(0.3),
                width: 1.w,
              ),
            ),
            child: Icon(LucideIcons.download, color: accentColor, size: 20.sp),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  description,
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: accentColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            ),
            child: Text(
              'Download',
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String contactInfo;
  final String actionText;
  final Color accentColor;
  final VoidCallback action;

  const ContactCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.contactInfo,
    required this.actionText,
    required this.accentColor,
    required this.action,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width: 160.w,
      blur: 10,
      opacity: 0.08,
      color: accentColor,
      borderRadius: BorderRadius.circular(16.r),
      padding: EdgeInsets.all(14.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: accentColor.withOpacity(0.15),
              shape: BoxShape.circle,
              border: Border.all(
                color: accentColor.withOpacity(0.3),
                width: 1.w,
              ),
            ),
            child: Icon(icon, size: 24.sp, color: accentColor),
          ),
          SizedBox(height: 12.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 11.sp,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            contactInfo,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12.h),
          ElevatedButton(
            onPressed: action,
            style: ElevatedButton.styleFrom(
              backgroundColor: accentColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            ),
            child: Text(
              actionText,
              style: GoogleFonts.inter(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
