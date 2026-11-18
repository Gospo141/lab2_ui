import 'package:flutter/material.dart';
import '../../shared/widgets/profile_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Профіль')),
      body: ProfileView(
        name: 'Andriy Rudyk',
        email: 'andriyrudyk@gmail.com',
        onLogout: () => Navigator.pushNamedAndRemoveUntil(
          context,
          '/login',
          (route) => false,
        ),
      ),
    );
  }
}
