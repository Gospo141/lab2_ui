// Модель IoT-пристрою. Усі поля final - обʼєкт незмінний
class Device {
  final String id;
  final String name;
  final String room;
  final bool isOn;

  const Device({
    required this.id,
    required this.name,
    required this.room,
    this.isOn = false,
  });

  // Створює копію з іншими значеннями (замість зміни обʼєкта)
  Device copyWith({String? name, String? room, bool? isOn}) {
    return Device(
      id: id,
      name: name ?? this.name,
      room: room ?? this.room,
      isOn: isOn ?? this.isOn,
    );
  }
}
