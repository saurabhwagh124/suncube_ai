import 'dart:ui';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double blur;
  final double opacity;
  final Color color;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Gradient? borderGradient;
  final double? width;
  final double? height;

  const GlassContainer({
    super.key,
    required this.child,
    this.blur = 10.0,
    this.opacity = 0.1,
    this.color = Colors.white,
    this.borderRadius,
    this.padding,
    this.margin,
    this.borderGradient,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(16.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              color: color.withOpacity(opacity),
              borderRadius: borderRadius ?? BorderRadius.circular(16.0),
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
                width: 1.0,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  color.withOpacity(opacity + 0.1),
                  color.withOpacity(opacity),
                ],
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
