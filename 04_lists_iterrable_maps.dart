void main () {
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print (' List original: $numbers ');
  print (' List original: ${numbers.length} ');
  print (' Index 0: ${numbers[0]} ');
  print (' Index 0: ${numbers.first} ');
  print (' Last index: ${numbers.last} ');
  print (' Reverse: ${numbers.reversed} ');
  
  
  //Iterable => es un elemento que se puede iterar, coleccion de elementos que se puede leer
  //Es iterable porque estan dentro del ()
  final reverseNumbers = numbers.reversed;
  print('Iterable $reverseNumbers');
  //toList hace que vuelva a ser una Lista
  print('List ${reverseNumbers.toList()}');
  //Set hace que no se repitan los numeros
  print('Set ${reverseNumbers.toSet()}');
  
  
  final numbersGreatThan5 = numbers.where((int num){
    return num > 5; //true
  });
  
  print('>5 $numbersGreatThan5');
  print('>5 ${numbersGreatThan5.toSet()}');
    
  
  
}