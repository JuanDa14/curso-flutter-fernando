void main () {
  
  
  print(greetEveryOne());
  
  print(addToNumbers(10,20));
  
  print(greetPerson(name:'Juan'));
  
}

String greetEveryOne_borrar(){
  return 'Hello Devs';
}

String greetEveryOne() => 'Hello Devs';

int addToNumbers ( int a, int b) => a + b;


//si pones un parametro entre [] lo hace opcional, y ademas es necesario agregar el ? de dart
int addTwoNumbersOptionals ( int a, [int b = 0]) {
  
  //Si el valor tiene un numero es b si no es 0
  //b = b ?? 0;
  //b = b + 1;
  //b ??= 0;
  //b ++;
  
  return a + b;
  
}


//Si pones {} en los parametros los hace opcional y cuando llama a la funcion hace que sus parametros se pasen por su nombre
String greetPerson ({required String name,String message = 'Hola, '}) {
  return '$message$name';
}

