import 'package:flutter/material.dart';
import 'features/auth/login_screen.dart';
import 'features/auth/registration_screen.dart';
import 'features/home/main_screen.dart';
import 'features/profile/profile_screen.dart';
import 'shared/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home IoT',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      initialRoute: '/login',
      // Іменовані маршрути між екранами
      routes: {
        '/login': (_) => const LoginScreen(),
        '/register': (_) => const RegistrationScreen(),
        '/main': (_) => const MainScreen(),
        '/profile': (_) => const ProfileScreen(),
      },
    );
  }
}
