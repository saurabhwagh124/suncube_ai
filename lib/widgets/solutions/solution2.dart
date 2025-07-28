import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Solution2Page extends StatelessWidget {
  const Solution2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Solution 2'), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      '🧠 AI-Powered Optimization',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Powering Business with Brains',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Suncube AI brings energy intelligence to your factory floor, warehouse, or office — with dashboards that drive results.',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('See it in Action'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Enterprise Dashboard',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Comprehensive breakdown with exportable reports for compliance and analysis.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 80.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text('Solar Generation'),
                                Text('4.1 kW'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [Text('Consumption'), Text('3.2 kW')],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [Text('Battery Level'), Text('85%')],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [Text('Grid Feed-in'), Text('0.9 kW')],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Load Forecasting & Smart Allocation',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'AI engine optimizes high-energy tasks for non-peak times with intelligent load-shifting.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 120.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text('Load-Shifting Visual Flow'),
                                Text('AI Recommendations'),
                                Text('Shift heavy machinery to 2-6 AM'),
                                Text('Schedule HVAC maintenance for off-peak'),
                                Text('Optimize battery charging cycles'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text('Savings Projection'),
                                Text(
                                  'Monthly Savings with AI Optimization: 12,450',
                                ),
                                Text('Total Savings: 27.5%'),
                                Text('Annual Impact: 149,400'),
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
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Smart Invoicing + Budget Tracking',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Energy-to-cost breakdown with intelligent alerts for anomalies and billing leaks.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 140.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text('Energy Cost Breakdown'),
                                Text('Solar Generation: -8,420'),
                                Text('Grid Consumption: 12,800'),
                                Text('Demand Charges: 3,200'),
                                Text('Maintenance: 1,500'),
                                Text('Net Cost: 9,080'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text('Anomaly Alerts'),
                                Text(
                                  'High Usage Alert: Building A consumption 40% above normal',
                                ),
                                Text(
                                  'Billing Anomaly: Demand charges increased by 25%',
                                ),
                                Text(
                                  'Optimization Success: Peak shaving saved 2,100 this month',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text('Budget Tracking'),
                                Text('Current Month: 9,080'),
                                Text('Budget: 10,000'),
                                Text('Under Budget: 920'),
                                Text('Peak Savings: 2,100'),
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
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Predictive Failure Detection',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'AI-powered alerts and proactive maintenance scheduling to prevent costly downtime.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 100.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text('Failure Predictions'),
                                Text(
                                  'Critical Alert: Inverter on Line 3 predicted to fail in 36 hours',
                                ),
                                Text(
                                  'Maintenance Due: Solar panel cleaning recommended within 7 days',
                                ),
                                Text(
                                  'Performance Alert: Battery efficiency dropping by 2% per month',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text('Proactive Maintenance Calendar'),
                                Text('15: Inverter'),
                                Text('22: Cleaning'),
                                Text('28: Inspection'),
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Schedule Maintenance'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue,
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
