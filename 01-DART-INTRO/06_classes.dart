void main() {
  final Hero wolverine = Hero(name: 'Wolverine', power: 'Regeneración');
  final Hero wolverine2 = Hero(name: 'Wolverine');

  print(wolverine);
  print(wolverine2);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String? name;
  String? power;

  // Hero(String name, String power)
  //     : name = name,
  //       power = power;

  Hero({
    required this.name, 
    this.power = 'Sin poder'
  });
  
  @override
  String toString() {
    return '$name - $power';
  }
}
