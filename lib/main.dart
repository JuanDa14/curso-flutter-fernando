import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_funtions_screen.dart';
// import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  //Toda aplicacion de flutter tiene un widget raiz

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //Usando el widget creado en screens
        debugShowCheckedModeBanner: false, 
        theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: Colors.blue
        ),
        home: const CounterFunctionsScreen()
        
        );

  }
}
