import 'package:flutter/material.dart';
import 'centered_body.dart';
import 'custom_button.dart';
import 'info_row.dart';

// Візуальна частина профілю (дані передаються через конструктор)
class ProfileView extends StatelessWidget {
  final String name;
  final String email;
  final VoidCallback onLogout;

  const ProfileView({
    super.key,
    required this.name,
    required this.email,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return CenteredBody(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CircleAvatar(radius: 48, child: Icon(Icons.person, size: 48)),
          ),
          const SizedBox(height: 16),
          Text(
            name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          InfoRow(icon: Icons.email_outlined, label: 'Email', value: email),
          const InfoRow(
            icon: Icons.home_outlined,
            label: 'Дім',
            value: 'Мій розумний дім',
          ),
          const SizedBox(height: 16),
          CustomButton(text: 'Вийти', outlined: true, onPressed: onLogout),
        ],
      ),
    );
  }
}
