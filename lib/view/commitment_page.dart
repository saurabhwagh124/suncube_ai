import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommitmentPage extends StatelessWidget {
  const CommitmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Commitment'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          'We\'re not just a company — we\'re a movement. Join us in building a sustainable future.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'We Don\'t Just Build Solar Tech. We Live It.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'From our development choices to cloud hosting, every decision at Suncube AI is rooted in sustainability.',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.green,
                            backgroundColor: Colors.white,
                          ),
                          child: Text('Read Our Sustainability Pledge'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Low-Carbon Engineering Practices Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Low-Carbon Engineering Practices',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Our backend hosting on green data centers and optimized code efficiency means we use 37% fewer compute cycles than average platforms.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 125.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        EngineeringCard(
                          icon: Icons.bar_chart,
                          title: 'Traditional Architecture',
                          description: 'Compute Usage: 100%',
                          color: Colors.red,
                        ),
                        EngineeringCard(
                          icon: Icons.flash_on,
                          title: 'Suncube Optimized Architecture',
                          description: 'Compute Usage: 63%',
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Circular Hardware Advocacy Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Circular Hardware Advocacy',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We only support panels made using recyclable materials\nand promote manufacturers with\ncomprehensive reuse and repurpose programs.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 155.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        HardwareCard(
                          icon: Icons.terrain,
                          title: 'Recyclable Materials',
                          description:
                              'All supported solar panels use materials \nthat can be fully recycled at end-of-life,\nreducing environmental impact.',
                        ),
                        HardwareCard(
                          icon: Icons.tour_sharp,
                          title: 'Preferred Vendors',
                          description:
                              'We maintain a curated list of manufacturers\nwith proven sustainability and circular economy practices.',
                        ),
                        HardwareCard(
                          icon: Icons.water_outlined,
                          title: 'Reuse Programs',
                          description:
                              'Supporting manufacturers that offer comprehensive\nreuse and repurpose programs for end-of-life panels.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Carbon-Neutral Operations Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Carbon-Neutral Operations',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We track our emissions and support offset projects to maintain carbon-neutral operations across all our activities.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 135.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CarbonCard(
                          icon: Icons.terrain_rounded,
                          title: 'Our Carbon Footprint',
                          description:
                              'Office Emissions: 24.5 tons CO₂\nOffset Projects: 25.2 tons CO₂',
                        ),
                        CarbonCard(
                          icon: Icons.map,
                          title: 'Reforestation Zones We Support',
                          description:
                              'Interactive Map\nReforested areas we support',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Open Impact Reporting Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Open Impact Reporting',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Built with open-source values and planet-first decisions. We believe in complete transparency about our environmental impact.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Monthly Company Sustainability Report',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Preview of our comprehensive environmental impact assessment',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 125.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                ImpactCard(
                                  icon: Icons.energy_savings_leaf,
                                  title: 'Energy Usage',
                                  value: '-37%',
                                  color: Colors.green,
                                ),
                                ImpactCard(
                                  icon: Icons.cloud,
                                  title: 'Green Hosting',
                                  value: '100%',
                                  color: Colors.blue,
                                ),
                                ImpactCard(
                                  icon: Icons.eco,
                                  title: 'Carbon Offset',
                                  value: '+0.7t',
                                  color: Colors.purple,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Download Company Impact PDF'),
                          ),
                        ],
                      ),
                    ),
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

class EngineeringCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  const EngineeringCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 48, color: color),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(description, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class HardwareCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const HardwareCard({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 48, color: Colors.green),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(description, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class CarbonCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const CarbonCard({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 48, color: Colors.green),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(description, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class ImpactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  const ImpactCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 48, color: color),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(value, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
