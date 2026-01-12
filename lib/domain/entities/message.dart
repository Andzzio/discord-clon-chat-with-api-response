enum FromWho { fromMe, fromHer }

class Message {
  String text;
  FromWho fromWho;
  String? imgUrl;

  Message({required this.text, required this.fromWho, this.imgUrl});
}
