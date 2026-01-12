import 'package:discord_clon_app/domain/entities/message.dart';
import 'package:discord_clon_app/providers/chat_provider.dart';
import 'package:discord_clon_app/theme/colors.dart';
import 'package:discord_clon_app/utils/profile_pictures.dart';
import 'package:discord_clon_app/widgets/her_message.dart';
import 'package:discord_clon_app/widgets/my_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatProvider chatProvider = context.watch<ChatProvider>();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: bgColor),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: contColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  child: Row(
                    children: [
                      herCircleAvatar,
                      SizedBox(width: 10),
                      Text(
                        "Happcat",
                        style: TextStyle(color: textColor, fontSize: 18),
                      ),
                      Spacer(),
                      Icon(Icons.call, color: iconDisabledColor),
                      SizedBox(width: 10),
                      Icon(Icons.video_call_rounded, color: iconDisabledColor),
                      SizedBox(width: 10),
                      Icon(Icons.push_pin, color: iconDisabledColor),
                      SizedBox(width: 10),
                      Icon(Icons.group_add, color: iconDisabledColor),
                      SizedBox(width: 10),
                      Icon(Icons.account_circle, color: textColor),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: contColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: chatProvider.messages.length,
                          itemBuilder: (BuildContext context, int index) {
                            return (chatProvider.messages[index].fromWho ==
                                    FromWho.fromHer
                                ? HerMessage(
                                    message: chatProvider.messages[index],
                                  )
                                : MyMessage(
                                    message: chatProvider.messages[index],
                                  ));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 8,
                          bottom: 8,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.add,
                              color: iconDisabledColor,
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.card_giftcard,
                                  color: iconDisabledColor,
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.gif, color: iconDisabledColor),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.sticky_note_2,
                                  color: iconDisabledColor,
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.emoji_emotions,
                                  color: iconDisabledColor,
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.widgets, color: iconDisabledColor),
                                SizedBox(width: 8),
                              ],
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: bgColor,
                            hintStyle: TextStyle(color: iconDisabledColor),
                            hintText: "Enviar mensaje a @Happcat",
                          ),
                          style: TextStyle(color: textColor),
                          onSubmitted: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
