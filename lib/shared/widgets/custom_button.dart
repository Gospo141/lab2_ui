import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool loading;
  final bool outlined;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.loading = false,
    this.outlined = false,
  });

  @override
  Widget build(BuildContext context) {
    final VoidCallback? action = loading ? null : onPressed;
    final Widget label = loading
        ? const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : Text(text);

    return SizedBox(
      height: 48,
      child: outlined
          ? OutlinedButton(onPressed: action, child: label)
          : ElevatedButton(onPressed: action, child: label),
    );
  }
}
