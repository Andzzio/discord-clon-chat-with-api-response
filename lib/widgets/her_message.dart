import 'package:discord_clon_app/domain/entities/message.dart';
import 'package:discord_clon_app/config/theme/colors.dart';
import 'package:discord_clon_app/utils/profile_pictures.dart';
import 'package:flutter/material.dart';

class HerMessage extends StatelessWidget {
  final Message message;

  const HerMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          herCircleAvatar,
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Happcat",
                style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
              ),
              Text(message.text, style: TextStyle(color: textColor)),
            ],
          ),
        ],
      ),
    );
  }
}
