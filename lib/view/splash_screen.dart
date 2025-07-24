import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.2,
            colors: [
              Color(0xFF0F1F17), // Inner: black-green core
              Color(0xFF0B1B14), // Mid: very dark green
              Color(0xFF0A1612), // Outer: deep desaturated green
            ],
            stops: [0.2, 0.6, 1.0],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _zoomAnimation,
              builder:
                  (context, child) => Transform.scale(
                    scale: _zoomAnimation.value,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0XFF34B87C),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.all(5),
                      child: SvgPicture.asset(
                        'assets/zap-icon.svg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
            ),
            const SizedBox(height: 100, width: double.infinity),
            SizedBox(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    cursor: '.',
                    speed: Duration(milliseconds: 350),
                    "Suncube AI",
                    textStyle: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
