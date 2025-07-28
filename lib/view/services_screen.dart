import 'package:flutter/material.dart';
import 'package:suncube_ai/widgets/solution1/solution1.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, Widget> solutions = {
      'Resident Solar + AI ': Solution1(),
      'Commercial & Industrial Solar': Solution1(),
      'Smart Grid & Virtual Power Plant': Solution1(),
      'AI Monitoring & Predictive Maintenance': Solution1(),
      'Data Insights & Weather Forecasting': Solution1(),
      'Cloud Dashboard & Multi-Site Management': Solution1(),
    };

    final solutionKeys = solutions.keys.toList();

    return Scaffold(
      appBar: AppBar(title: Text('Explore Solutions')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: solutionKeys.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 cards per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            final title = solutionKeys[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => solutions.values.elementAt(index),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
