import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

// ChangeNotifier => clase de flutter que nos permite notificar a los widgets que estan escuchando
class ChatProvider extends ChangeNotifier {
  //ScrollController => Para controlar el scroll de un widget
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Hola como estas, bien?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      herReply();
    }

    //Notificamos a los widgets que estan escuchando
    notifyListeners();
    movScrollToBottom();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();

    movScrollToBottom();
  }

  Future<void> movScrollToBottom() async {
    //await => Para esperar 100 milisegundos y dar tiempo a que se renderize el mensaje
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
        //maxScrollExtent => Para ir al final del scroll (offset)
        chatScrollController.position.maxScrollExtent,
        //duration => Para que la animacion dure 300 milisegundos (0.3 segundos)
        duration: const Duration(milliseconds: 300),
        //curve => Para que la animacion sea mas suave (animacion de aceleracion)
        curve: Curves.easeOut);
  }
}
