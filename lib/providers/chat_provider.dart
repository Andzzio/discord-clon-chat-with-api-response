import 'package:discord_clon_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: "Hola amor", fromWho: FromWho.fromHer),
    Message(text: "Hola!!!", fromWho: FromWho.fromMe),
    Message(text: "Como estás", fromWho: FromWho.fromMe),
  ];

  final TextEditingController fieldController = TextEditingController();
  final FocusNode fieldFocus = FocusNode();

  final ScrollController scrollController = ScrollController();

  Future<void> sendMessage(String text) async {
    if (fieldController.text.isEmpty) {
      return;
    }
    final Message newMessage = Message(text: text, fromWho: FromWho.fromMe);
    messages.add(newMessage);
    notifyListeners();
    fieldController.clear();
    moveScrollToBottom();
    fieldFocus.requestFocus();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(Duration(milliseconds: 100));

    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    fieldController.dispose();
    fieldFocus.dispose();
    scrollController.dispose();
    super.dispose();
  }
}
