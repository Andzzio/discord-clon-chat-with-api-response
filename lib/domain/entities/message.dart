enum FromWho { fromMe, fromHer }

class Message {
  String text;
  FromWho fromWho;

  Message({required this.text, required this.fromWho});
}
