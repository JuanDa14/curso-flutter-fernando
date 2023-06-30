void main () {
  
  
  //Mapa{} son pares de valores
  final Map<String,dynamic> pokemon = {
    'name':'Dito',
    'hp':100,
    'isAlive':true,
    'abilities': <String>['Impostor'],
    'sprites': {
      1:'ditto/front.png',
      2:'ditto/back.png' 
    }
    
  };
  
  
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Hp: ${pokemon['hp']}');
  
  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
  
  

}