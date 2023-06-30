void main () {
  
    print('Inicio del programa');
  
    httpGet('http://juan.com').then((value){
      print(value);
    }).catchError((error){
      print('Error: $error');
    });
  
    print('Fin del programa');
  
}


//Es una accion que se ejecutara despues de un tiempo, segun le pongas el tiempo
Future<String> httpGet ( String url) {
  
  return Future.delayed(const Duration(  seconds:1 ), () {
    
    //Manejando la excepcion
    
    throw 'Error en la peticion http';
    
   // return 'Respuesta de la peticion Http';
  });
  
}