void main () {
  
 // final windPlant = EnergyPlant();
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  print ( windPlant );
  
  print (chargePhone(windPlant));
  
  print (nuclearPlant);
  
  print (chargePhone(nuclearPlant));
  
  
  
}


double chargePhone ( EnergyPlant plant) {
  if ( plant.energyLeft < 10){
    throw Exception('Not enought energy');
  }
  
  return plant.energyLeft - 10;
}


//Enum => ojo no lleva coma al final
enum PlantType {nuclear, wind , water}


//las clases abstractas no se pueden inicializar -OJO
// sus metodos no tienen codigo de ejecucion
abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; //nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy ( double amount );
  
}

// extends o implements
class WindPlant extends EnergyPlant {
  
   //hereda el constructor y sus metodos
  
  WindPlant ({required double initialEnergy})
      //Inicializar el constructor del padre
      :super ( energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy ( double amount) {
    energyLeft -= amount;
  }
  
}

//La implementacion nos ayuda a colocar implicitamente cada uno de sus override
//Si solo quieres un metodo es implements, en cambio heredar es que el padre le pasa todo al hijo
class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy ( double amount) {
    energyLeft -= (amount * 0.5);
  }
  
}


















