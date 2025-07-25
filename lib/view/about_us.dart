import 'package:flutter/material.dart';
import 'package:suncube_ai/widgets/customized_nav_bar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: const Text("About Us")),
      floatingActionButton: CustomizedNavBar(selectedIndex: 3),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
