import 'package:flutter/material.dart';

void main() {
  runApp(const UserDashboardApp());
}

class UserDashboardApp extends StatelessWidget {
  const UserDashboardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const UserDashboardHome(),
    );
  }
}

class UserDashboardHome extends StatelessWidget {
  const UserDashboardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.flash_on, color: Colors.white),
            ),
            const SizedBox(width: 8),
            const Text('Suncube AI Dashboard'),
          ],
        ),
        actions: [
          const Text('User'),
          const SizedBox(width: 8),
          ElevatedButton(onPressed: () {}, child: const Text('Logout')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Energy Overview',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCard(
                  title: 'Solar Generation',
                  value: '3.9 kW',
                  icon: Icons.sunny,
                  color: Colors.yellow,
                ),
                _buildCard(
                  title: 'Consumption',
                  value: '2.8 kW',
                  icon: Icons.electrical_services,
                  color: Colors.blue,
                ),
                _buildCard(
                  title: 'Battery Level',
                  value: '84%',
                  icon: Icons.battery_full,
                  color: Colors.green,
                ),
                _buildCard(
                  title: 'Grid Feed-in',
                  value: '1.3 kW',
                  icon: Icons.trending_up,
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCard(
                  title: 'Total Systems',
                  value: '1,247',
                  icon: Icons.home,
                  color: Colors.grey,
                ),
                _buildCard(
                  title: 'Total Capacity',
                  value: '47.3 MW',
                  icon: Icons.house,
                  color: Colors.grey,
                ),
                _buildCard(
                  title: 'System Uptime',
                  value: '99.2%',
                  icon: Icons.grid_3x3,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Expanded(
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(icon, color: color),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
