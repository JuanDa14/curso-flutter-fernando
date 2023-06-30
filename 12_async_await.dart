Future<void> main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('http://juan.com');
    print(value);
  } catch (err) {
    print('Error: $err');
  }

  print('Fin del programa');
}

//!si le especificamos async siempre regresa un Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw 'Error en la peticion';

  //return 'Tenemos un valor de la peticion';
}
