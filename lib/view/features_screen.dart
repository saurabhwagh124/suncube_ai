import 'package:flutter/material.dart';
import 'package:suncube_ai/view/about_us.dart';
import 'package:suncube_ai/view/features_screen.dart';
import 'package:suncube_ai/view/landing_page.dart';

class FeaturesScreen extends StatelessWidget {
  const FeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        "Features Screen",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
