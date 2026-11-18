import 'package:flutter/material.dart';
import '../../domain/models/device.dart';
import '../../shared/widgets/device_card.dart';

// Адаптивна сітка карток: 2 колонки на телефоні, 3-4 на планшеті
class DeviceGrid extends StatelessWidget {
  final List<Device> devices;
  final void Function(Device, bool)? onToggle;
  final ValueChanged<Device>? onEdit;
  final ValueChanged<Device>? onDelete;

  const DeviceGrid({
    super.key,
    required this.devices,
    this.onToggle,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final columns = width >= 900 ? 4 : (width >= 600 ? 3 : 2);
        return GridView.builder(
          itemCount: devices.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            mainAxisExtent: 160,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final device = devices[index];
            return DeviceCard(
              device: device,
              onToggle: onToggle == null ? null : (v) => onToggle!(device, v),
              onEdit: onEdit == null ? null : () => onEdit!(device),
              onDelete: onDelete == null ? null : () => onDelete!(device),
            );
          },
        );
      },
    );
  }
}
