void main(){
    
    final String pokemon = 'Ditto';
    final int hp = 100;
    final bool isAlive = true;
    final List<String>abilities = ['impostor'];
    final sprites = <String>['ditto/front.png'];
    
    //dynamic == null  por defecto es nulo, o siempre puede ser nulo
    //el problema que hay es que lo puedes mutar a cualquier tipo de dato
    dynamic errorMessage = 'Hola';
    errorMessage = true;
    errorMessage = [1,2,34,4,5];
    errorMessage = {1,2,3,4,5,};
    errorMessage = ()=>true;  
    errorMessage = null;  
  
    print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
    """);
    
    
}