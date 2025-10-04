import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFFF59E0B), // Solar Generation
    scaffoldBackgroundColor: const Color(0xFF0E1513), // Dark background
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFF59E0B), // Solar Generation
      secondary: Color(0xFF3B82F6), // Consumption
      tertiary: Color(0xFF22C55E), // Battery Level, Grid Feed-in
      surface: Color(0xFF1E2622), // Card background
      onSurface: Colors.white, // Primary text/icon color
      onSurfaceVariant: Colors.white54, // Secondary text/icon color
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),
      displayLarge: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 11.sp,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),
    ),
    cardTheme: CardThemeData(
      color: const Color(0xFF1E2622),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: const BorderSide(color: Colors.white12),
      ),
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF22C55E), // Tertiary color for buttons
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 14.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 24.sp,
    ),
    dividerTheme: DividerThemeData(
      color: Colors.white12,
      thickness: 1,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: const Color(0xFF22C55E),
      inactiveTrackColor: Colors.white12,
      thumbColor: const Color(0xFF22C55E),
      overlayColor: const Color(0xFF22C55E).withOpacity(0.2),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: const Color(0xFF22C55E),
      linearTrackColor: Colors.white12,
    ),
  );
}