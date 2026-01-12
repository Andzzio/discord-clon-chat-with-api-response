import 'package:flutter/material.dart';

const Color textColor = Color(0xFF9BA8C1);
const Color iconDisabledColor = Color(0xFF393F4A);
const Color bgColor = Color(0xFF22242A);
const Color contColor = Color(0xFF1C1E23);

const CircleAvatar herCircleAvatar = CircleAvatar(
  backgroundImage: NetworkImage(
    "https://i.pinimg.com/736x/e9/fa/c7/e9fac7b9eb8bfac606096e484646ed75.jpg",
  ),
);
const CircleAvatar myCircleAvatar = CircleAvatar(
  backgroundImage: NetworkImage(
    "https://cdn2.steamgriddb.com/icon/1dd65ed9f9389685df58b32c1adb4692/32/256x256.png",
  ),
);

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                          itemCount: 100,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  herCircleAvatar,
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Happcat",
                                        style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Hola amor $index",
                                        style: TextStyle(color: textColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
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
