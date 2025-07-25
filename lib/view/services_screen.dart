import 'package:flutter/material.dart';
import 'package:suncube_ai/widgets/customized_nav_bar.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: const Text("Services Screen")),
      floatingActionButton: CustomizedNavBar(selectedIndex: 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
