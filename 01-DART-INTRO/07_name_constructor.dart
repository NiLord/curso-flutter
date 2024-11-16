void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Ironman',
    'power': 'Inteligencia',
    'isAlive': true
  };

  // final iroman = Hero(name: 'Ironman', power: 'Inteligencia', isAlive: true);
  final iroman = Hero.fromJson(rawJson);
  
  print(iroman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, this.isAlive = true});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name',
        power = json['power'] ?? 'No power',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name - $power - ${isAlive ? 'Vivo' : 'Muerto'}';
  }
}
