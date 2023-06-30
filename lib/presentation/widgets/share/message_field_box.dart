import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    //TextEditingController => Para controlar el texto de un TextFormField
    final textController = TextEditingController();
    //FocusNode => Para controlar el foco de un TextFormField
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
        //hintText => Para poner un texto de ayuda como placeholder
        hintText: 'Escribe un mensaje...',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        //filled => Para que el TextFormField tenga un color de fondo
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.text;
            print('Valor caja de texto: $textValue');
            textController.clear();
          },
          icon: const Icon(Icons.send_outlined),
        ));

    return TextFormField(
      //onTapOutside => Para que cuando se haga tap fuera del TextFormField se quite el foco
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      //Agregando el focusNode al TextFormField
      focusNode: focusNode,
      //Agregando el textController al TextFormField
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
      },
      // onChanged: (value) {
      // },
    );
  }
}
