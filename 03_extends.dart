void main(){
  
    
  final windPlant = WindPlant(initialEnergy: 9);
  print(windPlant);
  
  print('wind ${chargePhone(windPlant)}');
  
}

double chargePhone(EnergyPlant plant){
  if(plant.energyLeft < 10) throw Exception('Not Enough energy');
  return plant.energyLeft -= 10;
}

enum PlantType{nuclear, wind, water}

abstract class EnergyPlant{
  
    double energyLeft;
    PlantType type;
  
  EnergyPlant({
    
     required this.energyLeft,
     required this.type
  });
  
  void consumeEnergy(double amount);
}

//extends o implements
class WindPlant extends EnergyPlant{
    WindPlant({required double initialEnergy}):
      super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
  }