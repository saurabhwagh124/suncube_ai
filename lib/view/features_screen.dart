import 'package:flutter/material.dart';
import 'package:suncube_ai/widgets/customized_nav_bar.dart';

class FeaturesScreen extends StatefulWidget {
  const FeaturesScreen({super.key});

  @override
  State<FeaturesScreen> createState() => _FeaturesScreenState();
}

class _FeaturesScreenState extends State<FeaturesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: const Text("Features Screen")),
      floatingActionButton: CustomizedNavBar(selectedIndex: 2),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
