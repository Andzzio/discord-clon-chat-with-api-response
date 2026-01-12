import 'package:discord_clon_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: "Hola amor", fromWho: FromWho.fromHer),
    Message(text: "Hola!!!", fromWho: FromWho.fromMe),
    Message(text: "Como estás", fromWho: FromWho.fromMe),
  ];
}
