Future<void> main() async {
  print('Inicio del programa');

  //On permite caer en un tipo de error especifico
  //On + catch seguido nos ayuda a obtener los mensajes del error especifico
  try {
    final value = await httpGet('http://juan.com');
    print('Exito!!! $value');
  } on Exception catch (err) {
    print('Tenemos una excepcion: $err');
  } catch (err) {
    print('Algo terrible paso: $err');
  } finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

//si le especificamos async siempre regresa un Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en el url');

  //throw 'Error en la peticion';

  //return 'Tenemos un valor de la peticion';
}
