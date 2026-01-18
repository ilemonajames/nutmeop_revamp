import 'package:flutter/material.dart';

class VehicleProfilePage extends StatelessWidget {
  const VehicleProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Smart Vehicle Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              'Future-ready Vehicle Profile (MVP Stub)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            const TextField(decoration: InputDecoration(labelText: 'Make (e.g., Tesla, Toyota)')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Model (e.g., Model 3, Corolla)')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Year')),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              value: 'ICE',
              items: const [
                DropdownMenuItem(value: 'ICE', child: Text('ICE (Petrol/Diesel)')),
                DropdownMenuItem(value: 'HYBRID', child: Text('Hybrid')),
                DropdownMenuItem(value: 'EV', child: Text('EV (Electric)')),
              ],
              onChanged: (v) {},
              decoration: const InputDecoration(labelText: 'Vehicle Type'),
            ),
          ],
        ),
      ),
    );
  }
}
