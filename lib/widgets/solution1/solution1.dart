import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/solution1/live_energy_flow.dart';
import 'package:suncube_ai/widgets/solution1/room_optimization.dart';
import 'package:suncube_ai/widgets/solution1/smart_alerts.dart';

class Solution1 extends StatelessWidget {
  const Solution1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Suncube AI – Smart Solar',
      theme: ThemeData(
        colorSchemeSeed: Colors.amber,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suncube AI'),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Portal Login')),
          FilledButton(onPressed: () {}, child: const Text('Request Demo')),
        ],
      ),
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              HeroSection(),
              SizedBox(height: 32),
              RawVsOptimizedSection(),
              SizedBox(height: 32),
              LiveMonitoringSection(),
              SizedBox(height: 32),
              PredictiveMaintenanceSection(),
              SizedBox(height: 32),
              // RoiSection(),
              // SizedBox(height: 32),
              SecuritySection(),
              // SizedBox(height: 48),
            ]),
          ),
        ],
        // padding: const EdgeInsets.symmetric(vertical: 24),
        // children: const [
        //
        // ],
      ),
    );
  }
}

/* -------------------------------------------------- */
/* 1. Hero section */
class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amber.shade50, Colors.amber.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Chip(
            label: const Text('🧠 AI-Powered Optimization'),
            backgroundColor: Colors.amber.shade100,
          ),
          const SizedBox(height: 16),
          Text(
            'Smart Solar Starts at Home.',
            style: Theme.of(
              context,
            ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'From rooftops to dashboards — make every ray count '
            'with AI-enhanced solar for your home.',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Get a Smart Solar Plan'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class RawVsOptimizedSection extends StatelessWidget {
  const RawVsOptimizedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text(
            '📈 Raw vs Optimized Yield',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 16.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Column(
                      children: [
                        _MetricCard('Solar Generation', '2.0 kW', Colors.amber),
                        _MetricCard('Consumption', '1.8 kW', Colors.blue),
                        _MetricCard('Battery Level', '88%', Colors.green),
                        _MetricCard('Grid Feed-in', '1.4 kW', Colors.purple),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  children: [
                    _BenefitCard('Standard Output', '24.5 kWh/day'),
                    _BenefitCard(
                      'AI-Optimized Output',
                      '31.2 kWh/day',
                      success: true,
                    ),
                    _BenefitCard('Efficiency Gain', '+27.3%', success: true),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------- */
/* 3. Live monitoring */
class LiveMonitoringSection extends StatelessWidget {
  const LiveMonitoringSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '🏠 Intelligent Home Energy Monitoring',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text("Real-Time insights across your entire home"),
          const SizedBox(height: 16),
          LiveEnergyFlow(),
          SizedBox(height: 16),
          RoomOptimization(),
          SizedBox(height: 16),
          SmartAlerts(),
        ],
      ),
    );
  }
}

/* -------------------------------------------------- */
/* 4. Predictive maintenance */
class PredictiveMaintenanceSection extends StatelessWidget {
  const PredictiveMaintenanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '🔔 Predictive Alerts & Maintenance',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          _MaintenanceAlertCard(),
          SizedBox(width: 16),
          _MaintenanceTimelineCard(),
        ],
      ),
    );
  }
}

/* -------------------------------------------------- */
/* 5. ROI Calculator */
class RoiSection extends StatefulWidget {
  const RoiSection({super.key});

  @override
  State<RoiSection> createState() => _RoiSectionState();
}

class _RoiSectionState extends State<RoiSection> {
  double kw = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '📈 Savings Forecast + ROI',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Select Your City'),
                        DropdownButtonFormField<String>(
                          value: 'New York',
                          items:
                              [
                                    'New York',
                                    'Los Angeles',
                                    'Miami',
                                    'Seattle',
                                    'Phoenix',
                                  ]
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ),
                                  )
                                  .toList(),
                          onChanged: (_) {},
                        ),
                        const SizedBox(height: 16),
                        Text('System Size: ${kw.toStringAsFixed(1)} kW'),
                        Slider(
                          value: kw,
                          min: 3,
                          max: 10,
                          divisions: 7,
                          label: kw.toStringAsFixed(1),
                          onChanged: (v) => setState(() => kw = v),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          _ResultBox('18.5%', 'Annual ROI', Colors.green),
                          const SizedBox(width: 8),
                          _ResultBox('5.2 years', 'Payback', Colors.blue),
                        ],
                      ),
                      const SizedBox(height: 8),
                      _ResultBox(
                        '4.2 tons',
                        'Annual CO₂ Offset',
                        Colors.purple,
                      ),
                      const SizedBox(height: 8),
                      _ResultBox('\$9,250', 'Annual Savings', Colors.orange),
                      const SizedBox(height: 12),
                      OutlinedButton.icon(
                        icon: const Icon(Icons.download),
                        label: const Text('Download Projection Report'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------- */
/* 6. Security / Roles */
class SecuritySection extends StatelessWidget {
  const SecuritySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      // padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text(
            '🔒 Data Privacy & Role-based Access',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _RoleCard(),
              // SizedBox(width: 16),
              _SecurityCard(),
            ],
          ),
        ],
      ),
    );
  }
}

/* -------------------------------------------------- */
/* Re-usable small widgets */

class _MetricCard extends StatelessWidget {
  final String title, value;
  final Color color;

  const _MetricCard(this.title, this.value, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontSize: 12)),
        trailing: Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _BenefitCard extends StatelessWidget {
  final String label, value;
  final bool highlight, success;

  const _BenefitCard(
    this.label,
    this.value, {
    this.highlight = false,
    this.success = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: highlight ? Colors.amber.shade50 : null,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontSize: 12)),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: success ? Colors.green : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MaintenanceAlertCard extends StatelessWidget {
  const _MaintenanceAlertCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 20.w,
              children: [
                Icon(LucideIcons.bell, color: Colors.orangeAccent),
                Text(
                  'AI Maintenance Alert',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Card(
              color: Colors.orangeAccent,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '⚠️ Clean panels in 2 days for 5 % efficiency gain\n'
                  'Current: 87 % → Expected: 92 %',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MaintenanceTimelineCard extends StatelessWidget {
  const _MaintenanceTimelineCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 20.w,
              children: [
                Icon(LucideIcons.clock, color: AppColors.themeGreen),
                Text(
                  'Maintenance Timeline',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.circle, size: 12, color: Colors.orange),
              title: Text('Panel Cleaning – due in 2 days'),
            ),
            ListTile(
              leading: Icon(Icons.circle, size: 12, color: Colors.blue),
              title: Text('Inverter Check – due in 2 weeks'),
            ),
            ListTile(
              leading: Icon(Icons.circle, size: 12, color: Colors.green),
              title: Text('Annual Inspection – due in 3 months'),
            ),
          ],
        ),
      ),
    );
  }
}

class _ResultBox extends StatelessWidget {
  final String value, label;
  final Color color;

  const _ResultBox(this.value, this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: color.withOpacity(.1),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(value),
              Text(label, style: const TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoleCard extends StatelessWidget {
  const _RoleCard();

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Family Member Access',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: CircleAvatar(child: Text('P')),
              title: Text('Parents – Full access + billing'),
            ),
            ListTile(
              leading: CircleAvatar(child: Text('K')),
              title: Text('Kids – Basic monitoring only'),
            ),
            ListTile(
              leading: CircleAvatar(child: Text('T')),
              title: Text('Tenants – Usage tracking only'),
            ),
          ],
        ),
      ),
    );
  }
}

class _SecurityCard extends StatelessWidget {
  const _SecurityCard();

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Security Assurance',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text('Data Encryption'),
              trailing: Icon(Icons.check, color: Colors.green),
            ),
            ListTile(
              title: Text('Two-Factor Auth'),
              trailing: Icon(Icons.check, color: Colors.green),
            ),
            ListTile(
              title: Text('Access Tokens'),
              trailing: Icon(Icons.visibility, color: Colors.grey),
            ),
            ListTile(
              title: Text('Last Security Scan'),
              subtitle: Text('2 hours ago'),
            ),
          ],
        ),
      ),
    );
  }
}
