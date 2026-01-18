import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/route_names.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NUTME UP')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 12),
            const Text(
              'Login (MVP Stub)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            const TextField(decoration: InputDecoration(labelText: 'Email or Phone')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => context.go(RouteNames.roleSelect),
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
