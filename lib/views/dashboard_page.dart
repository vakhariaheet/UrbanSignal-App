import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Urban Signal'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              // Handle Routes navigation
            },
            child: const Text('Routes'),
          ),
          TextButton(
            onPressed: () {
              // Handle Profile navigation
            },
            child: const Text('Profile'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search junctions',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 3 / 10,
                crossAxisSpacing: 12,
                mainAxisSpacing: 16,
                children: [
                  _buildCard('VIP Routes', ['Mr. Palsingh Chaddha', 'Dr. Ayush     R.  Ghosh']),
                  _buildCard('Busiest Today', ['Ashram Cross Road', 'Vijay Cross Road']),
                  _buildCard('Idle Today', ['Ashram Cross Road', 'Vijay Cross Road']),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, List<String> items) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            for (var item in items)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(item),
              ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  // Handle "More Info" logic
                },
                child: const Text('More Info'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
