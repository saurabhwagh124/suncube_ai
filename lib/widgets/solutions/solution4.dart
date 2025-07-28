import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Solution4 extends StatelessWidget {
  const Solution4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Solution 4'), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Know Before It Breaks.',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Suncube AI doesn\'t just track solar performance — it predicts and prevents failures before they cost you.',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Preview AI Monitoring Panel'),
                  ),
                ],
              ),
            ),
            // Status Cards Section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 110.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.check_circle, color: Colors.green),
                                Text('System Status'),
                                Text('Online'),
                                Text('All systems operational'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.local_activity_sharp,
                                  color: Colors.blue,
                                ),
                                Text('Monitoring Points'),
                                Text('247'),
                                Text('Active sensors'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.shield, color: Colors.green),
                                Text('Uptime'),
                                Text('99.97%'),
                                Text('Last 365 days'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text('Live System Status'),
                          SizedBox(height: 10),
                          Text('AI Predictive Alerts'),
                          SizedBox(height: 10),
                          ListTile(
                            leading: Icon(Icons.cloud, color: Colors.orange),
                            title: Text('Panel Cleaning Required'),
                            subtitle: Text(
                              'Dust accumulation detected on panels 3-7. Efficiency reduced by 8%. Recommended cleaning within 48 hours.',
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.trending_neutral_rounded,
                              color: Colors.green,
                            ),
                            title: Text('Temporary Shading Detected'),
                            subtitle: Text(
                              'Tree shadow affecting Panel Row B. Consider trimming branches or adjusting panel angle.',
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.tour_outlined,
                              color: Colors.red,
                            ),
                            title: Text('Inverter Anomaly'),
                            subtitle: Text(
                              'Inverter 2 showing irregular output patterns. Schedule technician inspection immediately.',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Monitoring Categories Section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Monitoring Categories',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 110.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.wb_sunny, color: Colors.green),
                                Text('Panel Performance'),
                                Text('48 panels monitored'),
                                Text('Normal'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.check_box_outline_blank,
                                  color: Colors.green,
                                ),
                                Text('Inverter Health'),
                                Text('3 inverters active'),
                                Text('Normal'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.cloud, color: Colors.orange),
                                Text('Weather Impact'),
                                Text('Cloud coverage detected'),
                                Text('Advisory'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.grid_on, color: Colors.green),
                                Text('Grid Connection'),
                                Text('Stable connection'),
                                Text('Normal'),
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
            // AI Detection Capabilities Section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'AI Detection Capabilities',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 80.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.thermostat, color: Colors.green),
                                Text('Hot spot detection'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.sunny, color: Colors.green),
                                Text('Shading analysis'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.trending_down, color: Colors.green),
                                Text('Performance degradation'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.cloud, color: Colors.green),
                                Text('Weather correlation'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.grid_on, color: Colors.green),
                                Text('Grid anomalies'),
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
            // Recent Activity Section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Recent Activity',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                            title: Text(
                              '2 min ago: All systems performing optimally',
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.cleaning_services,
                              color: Colors.blue,
                            ),
                            title: Text(
                              '15 min ago: Panel cleaning alert cleared',
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.sunny, color: Colors.green),
                            title: Text('1 hour ago: Peak generation detected'),
                          ),
                          ListTile(
                            leading: Icon(Icons.alarm, color: Colors.grey),
                            title: Text(
                              '3 hours ago: Morning startup sequence completed',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Smart Anomaly Detection Section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Smart Anomaly Detection',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.error, color: Colors.red),
                            title: Text('Critical Alert'),
                            subtitle: Text('20% drop in Panel Group B'),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.battery_alert,
                              color: Colors.orange,
                            ),
                            title: Text('Warning Alert'),
                            subtitle: Text('Low discharge from Battery Line 2'),
                          ),
                          ListTile(
                            leading: Icon(Icons.flash_on, color: Colors.blue),
                            title: Text('Info Alert'),
                            subtitle: Text(
                              'Inverter efficiency below optimal range',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Maintenance Scheduler Section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Maintenance Scheduler',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.cleaning_services,
                              color: Colors.blue,
                            ),
                            title: Text('Panel Cleaning'),
                            subtitle: Text('Due in 3 days'),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.orange,
                            ),
                            title: Text('Inverter Inspection'),
                            subtitle: Text('Due in 1 week'),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.battery_full,
                              color: Colors.green,
                            ),
                            title: Text('Battery Health Check'),
                            subtitle: Text('Due in 2 weeks'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Alerts System Section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Alerts System',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.notifications,
                              color: Colors.blue,
                            ),
                            title: Text('Alert Preferences'),
                            subtitle: Text(
                              'Customize your notification preferences and escalation protocols',
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.sms, color: Colors.blue),
                            title: Text('SMS Alerts'),
                            subtitle: Text('Critical system alerts'),
                          ),
                          ListTile(
                            leading: Icon(Icons.email, color: Colors.blue),
                            title: Text('Email Alerts'),
                            subtitle: Text('Detailed reports and summaries'),
                          ),
                          ListTile(
                            leading: Icon(Icons.push_pin, color: Colors.blue),
                            title: Text('Push Notifications'),
                            subtitle: Text('Mobile app notifications'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Performance Over Time Section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Performance Over Time',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 110.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.graphic_eq, color: Colors.green),
                                Text('Uptime %'),
                                Text('99.97%'),
                                Text('Last 30 days'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.timer, color: Colors.blue),
                                Text('Avg Resolution Time'),
                                Text('2.3h'),
                                Text('Issue resolution'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Icon(Icons.calendar_today, color: Colors.green),
                                Text('Maintenance Logs'),
                                Text('47'),
                                Text('Completed tasks'),
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
          ],
        ),
      ),
    );
  }
}
