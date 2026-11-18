import 'package:flutter/material.dart';
import '../../domain/models/device.dart';
import '../theme/app_theme.dart';

class DeviceCard extends StatelessWidget {
  final Device device;
  final ValueChanged<bool>? onToggle;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const DeviceCard({
    super.key,
    required this.device,
    this.onToggle,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSizes.radius),
        onTap: onEdit,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.lightbulb,
                    color: device.isOn ? AppColors.primary : Colors.grey,
                  ),
                  const Spacer(),
                  Switch(value: device.isOn, onChanged: onToggle),
                ],
              ),
              Text(
                device.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      device.room,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (onDelete != null)
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: const Icon(Icons.delete_outline, color: AppColors.error),
                      onPressed: onDelete,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
