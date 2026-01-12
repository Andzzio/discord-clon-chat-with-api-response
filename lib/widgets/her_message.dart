import 'package:discord_clon_app/domain/entities/message.dart';
import 'package:discord_clon_app/config/theme/colors.dart';
import 'package:discord_clon_app/utils/profile_pictures.dart';
import 'package:flutter/material.dart';

class HerMessage extends StatelessWidget {
  final Message message;

  const HerMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image(
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      decoration: BoxDecoration(color: bgColor),
                      width: size.width * 0.5,
                      height: 150,
                      child: CircularProgressIndicator(
                        padding: EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 50,
                        ),
                      ),
                    );
                  },
                  image: NetworkImage(message.imgUrl!),
                  width: size.width * 0.5,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
