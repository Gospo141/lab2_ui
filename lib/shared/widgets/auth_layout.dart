import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'centered_body.dart';

// Спільний каркас для екранів логіну та реєстрації
class AuthLayout extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const AuthLayout({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CenteredBody(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.home_outlined, size: 64, color: AppColors.primary),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 24),
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}
