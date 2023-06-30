void main () {
  
  //No es necesario en new para inicializar una clase
//  final wolverine = new Hero ();
  final wolverine = Hero (name: 'Logan', power:'Regeneracion');
  
  print (wolverine.toString());
  print (wolverine.name);
  print (wolverine.power);
  
    
  
}

class Hero {
  
    
    String name;
    String power;
  
    //Constructor 1
    Hero ( {
      required this.name, 
      this.power = 'Sin Poder'
      } );
  
    //constructor 2 
    //Hero(String pName, String pPower){
      //Poner la palabra this es opcional, dart ya sabe que te estas refieriendo a sus atrib
      //this.name = pName;
      //name = pName;
      //power = pPower;
   // }
  
  //constructor 3
    //Hero(String pName, String pPower)
       // :name = pName,
       //  power = pPower;
    
  //Estamos reescribiendo en metodo toString
  //override es recomendado usar cuando reescribimos un metodo
  @override
  String toString(){
    return '$name - $power';
  }
  
  
}