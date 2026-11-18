import 'package:flutter/material.dart';
import '../../shared/widgets/auth_layout.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Вхід у Smart Home',
      children: [
        const CustomTextField(
          label: 'Email',
          icon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        const CustomTextField(
          label: 'Пароль',
          icon: Icons.lock_outline,
          obscure: true,
        ),
        const SizedBox(height: 8),
        CustomButton(
          text: 'Увійти',
          onPressed: () => Navigator.pushReplacementNamed(context, '/main'),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/register'),
          child: const Text('Немає акаунта? Зареєструватися'),
        ),
      ],
    );
  }
}
