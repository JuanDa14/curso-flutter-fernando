void main ( ){
  
  
  final Map<String,dynamic> rawJson = {
    'name' : 'TonyStart',
    'power' : 'Money',
    'isAlive': true
  };
  
  
  final ironman = Hero (
    name:'Tony',
    isAlive:  false,
    power: 'IroMan'
   );
  
  
  final fromJson = Hero.fromJson(rawJson);
  
  print (ironman.toString());
  print (fromJson.toString());
  
  
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  
  //Constructor sin nombre
  Hero ({
    required this.name,
    required this.power,
    required this.isAlive
  });
    
  //Constructor con nombre
  Hero.fromJson(Map<String,dynamic> json) 
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
      
      
  
   @override
   String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'Yes' :'No' }';
  }
  
}