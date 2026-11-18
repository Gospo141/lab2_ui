import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

// Центрує вміст, обмежує ширину (для планшетів) і дозволяє прокрутку
class CenteredBody extends StatelessWidget {
  final Widget child;
  final double maxWidth;

  const CenteredBody({super.key, required this.child, this.maxWidth = 420});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: child,
        ),
      ),
    );
  }
}
