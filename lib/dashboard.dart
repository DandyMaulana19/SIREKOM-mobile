// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.red[900],
        elevation: 3, // Add shadow by setting elevation
        shadowColor: Colors.black.withOpacity(1), // Customize shadow color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildCard(
              title: "Total Lomba",
              value: "12,543",
              subtitle: "80% Increase than before",
              graphColor: Colors.purple,
              icon: Icons.bar_chart,
            ),
            SizedBox(height: 16),
            buildCard(
              title: "Total Pendaftar",
              value: "\$10,123",
              subtitle: "80% Increase in 20 Days",
              graphColor: Colors.pink,
              icon: Icons.show_chart,
            ),
            SizedBox(height: 16),
            buildCard(
              title: "Total Working Hours",
              value: "32h 42m",
              subtitle: "80% Increase than before",
              graphColor: Colors.blue,
              icon: Icons.timeline,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard({
    required String title,
    required String value,
    required String subtitle,
    required Color graphColor,
    required IconData icon,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    value,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50, // Ukuran tetap untuk grafik
              child: Icon(
                icon,
                size: 48,
                color: graphColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
