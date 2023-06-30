void main () {
  
  final mySquare = Square ( side : -17);
  
  //mySquare.side = -10;
  
  print ('El area es de : ${ mySquare.area }');
  
  
}


class Square {
  
  //propiedad publica
  //double side;
  //propiedad privada
  double _side;
  
  //Agregando la asercion para validar, si la asercion es false nos da un error
  //En la asercion primero es la condicion, luego el mensaje como en express-validator
  Square ({required double side})
    : assert ( side >= 0, 'Side must be >=0'),
      _side = side;
  
  
  double get area {
    return _side * _side;
  }
  
  set side ( double value ){
    print('Setting new value $value');
    
    if (value < 0) throw 'Value must be >=0';
    
    _side = value;
  }
  
  double calculateArea () {
    return _side * _side;
  }
    
  
  
}