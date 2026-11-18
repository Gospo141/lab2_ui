import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

// Велика картка з показником датчика (температура тощо)
class SensorCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final String? subtitle;

  const SensorCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Row(
          children: [
            Icon(icon, size: 40, color: AppColors.primary),
            const SizedBox(width: AppSizes.padding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: textTheme.bodyMedium),
                  Text(
                    value,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  if (subtitle != null) Text(subtitle!, style: textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
