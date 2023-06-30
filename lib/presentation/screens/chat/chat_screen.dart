import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/share/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://waifus.wiki/wp-content/uploads/nanakusa-nazuna-1.jpg'),
          ),
        ),
        title: const Text('Yes No App'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SafeArea => Para que no se ponga el contenido debajo de la barra de notificaciones, hace que el contenido no se sobresalga de la pantalla
    return SafeArea(
      child: Padding(
        //EdgeInsets.symmetric => Para poner un padding horizontal y vertical de la misma medida, simetrico
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            //Permite expandir el widget a todo el espacio disponible
            Expanded(child:
                //builder => Para que solo se renderize lo que se ve en pantalla
                ListView.builder(
              //ItemCount => Para que se renderize 100 items
              // itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),

            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
