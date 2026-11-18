import '../domain/models/device.dart';

// Статичні (mock) дані для Лаб. 2 - бізнес-логіки ще немає
const List<Device> mockDevices = [
  Device(id: '1', name: 'Лампа', room: 'Вітальня', isOn: true),
  Device(id: '2', name: 'Термостат', room: 'Спальня', isOn: true),
  Device(id: '3', name: 'Розетка', room: 'Кухня'),
  Device(id: '4', name: 'Камера', room: 'Коридор', isOn: true),
  Device(id: '5', name: 'Датчик диму', room: 'Кухня', isOn: true),
  Device(id: '6', name: 'Кондиціонер', room: 'Вітальня'),
];
