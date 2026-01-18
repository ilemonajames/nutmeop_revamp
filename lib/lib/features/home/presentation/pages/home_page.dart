import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/route_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NUTME UP — Home')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'MVP Shell is live ✅',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => context.go(RouteNames.vehicleProfile),
                icon: const Icon(Icons.directions_car),
                label: const Text('Create Smart Vehicle Profile (ICE/EV)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
