import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Us'), backgroundColor: Colors.green),
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
                          'Contact Us',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Get in Touch with Our Solar Experts',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Ready to transform your energy future? Our team of solar and AI experts is here to help you every step of the way. Get your free consultation today.',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.green,
                            backgroundColor: Colors.white,
                          ),
                          child: Text('Schedule Free Consultation'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Contact Methods Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Multiple Ways to Reach Us',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Choose the contact method that works best for you. Our team is ready to help.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 200.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ContactCard(
                          icon: Icons.email,
                          title: 'Email Us',
                          description: 'Get in touch via email',
                          contactInfo: 'hello@suncube.ai',
                          actionText: 'Send Email',
                          action: () {},
                        ),
                        ContactCard(
                          icon: Icons.phone,
                          title: 'Call Us',
                          description: 'Speak with our experts',
                          contactInfo: '+1 (555) 123-4567',
                          actionText: 'Call Now',
                          action: () {},
                        ),
                        ContactCard(
                          icon: Icons.chat,
                          title: 'Live Chat',
                          description: 'Chat with our support team',
                          contactInfo: 'Available Mon-Fri 9AM-6PM',
                          actionText: 'Start Chat',
                          action: () {},
                        ),
                        ContactCard(
                          icon: Icons.calendar_today,
                          title: 'Schedule Demo',
                          description: 'Book a personalized demo',
                          contactInfo: '30-minute consultation',
                          actionText: 'Book Demo',
                          action: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Contact Form Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Send Us a Message',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Fill out the form below and we\'ll get back to you within 24 hours.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Full Name *',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your full name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email Address *',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email address';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Company/Organization',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Type of Inquiry *',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your inquiry type';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Message *',
                              border: OutlineInputBorder(),
                            ),
                            maxLines: 4,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your message';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Send Message'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Office Location Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Our Office',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Suncube AI Headquarters',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '123 Innovation Drive\nAustin, TX 78701\nUnited States',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Monday - Friday: 9:00 AM - 6:00 PM CST',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Get Directions'),
                  ),
                ],
              ),
            ),
            // Download Resources Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Download Resources',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('Company Brochure'),
                            subtitle: Text(
                              'Complete overview of our solutions',
                            ),
                            trailing: ElevatedButton(
                              onPressed: () {},
                              child: Text('Download'),
                            ),
                          ),
                          ListTile(
                            title: Text('Technical Specifications'),
                            subtitle: Text('Detailed technical documentation'),
                            trailing: ElevatedButton(
                              onPressed: () {},
                              child: Text('Download'),
                            ),
                          ),
                          ListTile(
                            title: Text('ROI Calculator'),
                            subtitle: Text(
                              'Calculate your solar investment returns',
                            ),
                            trailing: ElevatedButton(
                              onPressed: () {},
                              child: Text('Download'),
                            ),
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

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String contactInfo;
  final String actionText;
  final VoidCallback action;

  ContactCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.contactInfo,
    required this.actionText,
    required this.action,
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
            SizedBox(height: 10),
            Text(
              contactInfo,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: action, child: Text(actionText)),
          ],
        ),
      ),
    );
  }
}
