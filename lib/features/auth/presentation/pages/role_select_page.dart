import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/route_names.dart';

class RoleSelectPage extends StatelessWidget {
  const RoleSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final roles = const [
      'Vehicle Owner',
      'Mechanic',
      'Spare Parts Dealer',
      'Delivery Agent',
      'EV Technician (Future)',
      'Fleet Manager (Future)',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Select Role')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: roles.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, i) {
          return Card(
            child: ListTile(
              title: Text(roles[i]),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.go(RouteNames.home),
            ),
          );
        },
      ),
    );
  }
}
