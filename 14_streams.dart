//Streams => flujo de datos o unico valor a lo largo del tiempo

void main() {
  //Streams => Para que sirven o emitan valores, alguien tiene que estar esuchando
  emitNumbers().listen((value) {
    print('Stream value $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    print('desde periodic $value');
    return value;
    //Take => cuantas veces se emitira
  }).take(5);
}
