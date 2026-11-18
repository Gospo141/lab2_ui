import 'package:flutter/material.dart';
import '../../mock/mock_devices.dart';
import '../../shared/theme/app_theme.dart';
import '../../shared/widgets/sensor_card.dart';
import 'device_grid.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Мій розумний дім'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () => Navigator.pushNamed(context, '/profile'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SensorCard(
              title: 'Температура вдома',
              value: '22.5 °C',
              icon: Icons.thermostat,
              subtitle: 'Оновлено щойно',
            ),
            const SizedBox(height: AppSizes.padding),
            Text('Мої пристрої', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Expanded(
              child: DeviceGrid(
                devices: mockDevices,
                onToggle: (device, value) {},
                onEdit: (device) {},
                onDelete: (device) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
