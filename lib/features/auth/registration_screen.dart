import 'package:flutter/material.dart';
import '../../shared/widgets/auth_layout.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_text_field.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Реєстрація',
      children: [
        const CustomTextField(label: 'Імʼя', icon: Icons.person_outline),
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
        const CustomTextField(
          label: 'Повторіть пароль',
          icon: Icons.lock_outline,
          obscure: true,
        ),
        const SizedBox(height: 8),
        CustomButton(
          text: 'Зареєструватися',
          onPressed: () => Navigator.pop(context),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Вже є акаунт? Увійти'),
        ),
      ],
    );
  }
}
