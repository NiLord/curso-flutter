void main() {
  final windPlant = WindPlant(energyLeft: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 100);

  print(windPlant);
  windPlant.consumeEnergy(20);
  print(windPlant);

  print(nuclearPlant);
  nuclearPlant.consumeEnergy(20);
  print(nuclearPlant);

  print('Wind: ${chargeBattery(plant: windPlant)}');
  print('Nuclear: ${chargeBattery(plant: nuclearPlant)}');
}

double chargeBattery({required EnergyPlant plant}) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { wind, solar, nuclear }

abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; // wind, solar, nuclear

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy(double amount);

  @override
  String toString() {
    return 'Energy - ${energyLeft} - ${type}';
  }
}

class WindPlant extends EnergyPlant {
  WindPlant({required super.energyLeft}) : super(type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount) {
    this.energyLeft -= amount;
  }

  @override
  String toString() {
    return super.toString() + ' from Wind';
  }
}

class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }

  @override
  String toString() {
    return 'energyLeft: $energyLeft - type: $type';
  }
}