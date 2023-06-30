void main(){
  
    //var myName = 'Juan';
    String myName = 'Juan';
    //final myName2 = 'JuanCito'; // No puedes cambiar el valor de la variable
    //late final myName2 = 'Mundo';
    const myName2 = 'David'; // SIRVE PARA CREAR UNA CONSTANTE EN TIEMPO DE CONSTRUCCION
    
    myName = 'Juan David Morales Paredes';
  
    myName.toUpperCase();
  
    print('Hola $myName');
    print('Hola ${myName.toLowerCase()}');
  
 
  
}