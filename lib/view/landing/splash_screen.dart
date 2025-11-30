import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/view/landing/landing_page.dart';
import 'package:suncube_ai/widgets/common/glass_container.dart';
import 'package:suncube_ai/widgets/common/liquid_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _zoomAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _zoomAnimation = Tween<double>(
      begin: 0.1,
      end: 1.5,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();

    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingPage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: LiquidBackground(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _zoomAnimation,
                builder:
                    (context, child) => Transform.scale(
                      scale: _zoomAnimation.value,
                      child: GlassContainer(
                        color: Color(0XFF34B87C),
                        borderRadius: BorderRadius.circular(25.r),
                        padding: EdgeInsets.all(5.r),
                        opacity: 0.2,
                        child: SvgPicture.asset(
                          'assets/zap-icon.svg',
                          width: 150.w,
                          height: 150.h,
                        ),
                      ),
                    ),
              ),
            SizedBox(height: 100.h, width: double.infinity),
            SizedBox(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    cursor: '.',
                    speed: Duration(milliseconds: 100),
                    "Suncube AI",
                    textStyle: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 50.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
                isRepeatingAnimation: false,
              ),
            ),
          ],
        ),
          
        ),
      ),
    );
  }
}
