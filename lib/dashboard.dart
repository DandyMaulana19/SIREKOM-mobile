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
        elevation: 3,
        shadowColor: Colors.black.withOpacity(1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildCard(
              title: "Total Lomba",
              value: "120",
              graphColor: Colors.purple,
              icon: Icons.bar_chart,
            ),
            SizedBox(height: 16),
            buildCard(
              title: "Total Pendaftar",
              value: "10,123",
              graphColor: Colors.pink,
              icon: Icons.groups_rounded,
            ),
            SizedBox(height: 16),
            buildCard(
              title: "Total Working Hours",
              value: "32h 42m",
              graphColor: Colors.blue,
              icon: Icons.timeline,
            ),
            SizedBox(height: 16),
            Text("Lomba Terpopuler Saat Ini",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/detail',
                        arguments: {'title': 'Hackathon 2024'},
                      );
                    },
                    child: buildHorizontalCard(
                      title: "Hackathon 2024",
                      subtitle: "500+ Pendaftar",
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/detail',
                        arguments: {'title': 'Design Sprint'},
                      );
                    },
                    child: buildHorizontalCard(
                      title: "Design Sprint",
                      subtitle: "350+ Pendaftar",
                      color: Colors.greenAccent,
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

  Widget buildCard({
    required String title,
    required String value,
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
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
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

Widget buildHorizontalCard({
  required String title,
  required String subtitle,
  required Color color,
}) {
  return Container(
    width: 200,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ],
    ),
  );
}
