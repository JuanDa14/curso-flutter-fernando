import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    //Obtiene los colores del tema actual
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        //diciendole que la imagen siempre va a estar con !
        _ImageBubble(message.imageUrl!),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;

  const _ImageBubble(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    //Obtiene el tamaño de la pantalla
    final size = MediaQuery.of(context).size;

    //ClipRRect => Para poner un borde redondeado a la imagen
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imageUrl,
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
          //Muestra un indicador de carga mientras se descarga la imagen
          loadingBuilder: (context, child, loadingProgress) {
            //Si la imagen ya se descargo, no muestra nada, loadingProgress == null cuando la carga ya esta realizada
            //child es la imagen
            if (loadingProgress == null) return child;
            //Muestra un indicador de carga
            return Container(
              width: size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text('Nazuna esta escriendiendo...'),
            );
          },
        ));
  }
}
