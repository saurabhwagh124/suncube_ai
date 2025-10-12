import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class PredictiveAlerts extends StatelessWidget {
  const PredictiveAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 60.h, horizontal: 24.w),
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
        decoration: BoxDecoration(
          color: const Color(0xFF060C09).withOpacity(0.4),
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.05),
              const Color(0xFF1A231F).withOpacity(0.3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* Tag */
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: const Color(0xFF73E0A9).withOpacity(0.15),
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(
                  color: const Color(0xFF73E0A9).withOpacity(0.3),
                  width: 1.w,
                ),
              ),
              child: Text(
                'AI Intelligence',
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF73E0A9),
                ),
              ),
            ),
            SizedBox(height: 16.h),

            /* Headline */
            Text(
              'Predictive Maintenance in Action',
              style: GoogleFonts.inter(
                fontSize: 28.sp,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(height: 12.h),

            /* Sub-headline */
            Text(
              'Our AI continuously monitors your system and predicts issues before they impact performance.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.75),
                height: 1.5,
              ),
            ),
            SizedBox(height: 32.h),

            /* Alerts Card */
            Container(
              width: 600.w,
              constraints: BoxConstraints(maxWidth: 600.w),
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(
                  color: const Color(0xFF73E0A9).withOpacity(0.15),
                  width: 1.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.05),
                    const Color(0xFF73E0A9).withOpacity(0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        LucideIcons.triangleAlert,
                        color: const Color(0xFF73E0A9),
                        size: 20.sp,
                      ),
                      Spacer(),
                      Text(
                        'AI Predictive Alerts',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF73E0A9).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        // child: Text(
                        //   '3 Active',
                        //   style: GoogleFonts.inter(
                        //     fontSize: 12.sp,
                        //     fontWeight: FontWeight.w500,
                        //     color: const Color(0xFF73E0A9),
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  _AlertTile(
                    'Panel Cleaning Required',
                    'Dust accumulation detected on panels 3-7. Efficiency reduced by 8%.',
                    const Color(0xFF73E0A9),
                  ),
                  _AlertTile(
                    'Temporary Shading Detected',
                    'Tree shadow affecting Panel Row B...',
                    const Color(0xFF73E0A9),
                  ),
                  _AlertTile(
                    'Inverter Anomaly',
                    'Inverter 2 showing irregular output patterns...',
                    const Color(0xFF73E0A9),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* ------------------------------------------------------------------ */
/* Glass-style Alert Tile                                               */
/* ------------------------------------------------------------------ */
class _AlertTile extends StatefulWidget {
  final String title, desc;
  final Color color;

  const _AlertTile(this.title, this.desc, this.color);

  @override
  State<_AlertTile> createState() => _AlertTileState();
}

class _AlertTileState extends State<_AlertTile> {
  bool _resolved = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: const Color(0xFF73E0A9).withOpacity(0.15),
          width: 1.w,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            widget.desc,
            maxLines: 4,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => setState(() => _resolved = !_resolved),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color:
                      _resolved
                          ? const Color(0xFF73E0A9) // theme green
                          : const Color(0xFFFF3162), // neon red
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: [
                    BoxShadow(
                      color: (_resolved
                              ? const Color(0xFF73E0A9)
                              : const Color(0xFFFF3162))
                          .withOpacity(0.5),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(
                  _resolved ? 'Resolved' : 'Resolve',
                  style: GoogleFonts.inter(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
