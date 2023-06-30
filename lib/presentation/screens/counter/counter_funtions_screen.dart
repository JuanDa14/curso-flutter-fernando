import 'package:flutter/material.dart';

//StatelessWidget => No tiene estado
//StatefulWidget => Tiene estado, se debe evitar usarlo
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  //Creacion del estado
  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        //leading => es el widget que se muestra a la izquierda del titulo
        leading: const Icon(Icons.home),
        //actions => se muestran a la derecha del titulo, es un listado de widgets(hijos o componentes)
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              });
            },
          ),
          //Agregando un espacio entre los botones
          //Crea una caja con el height y width que se le indique
          const SizedBox(height: 10),
          //<=================================>
          CustomButton(
              icon: Icons.plus_one,
              onPressed: () => setState(() {
                    clickCounter++;
                  })),
        ],
      ),
    );
  }
}

//Widget personalizado
class CustomButton extends StatelessWidget {
  //Props
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton(
      {super.key,
      //required => es obligatorio enviar el parametro
      required this.icon,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
