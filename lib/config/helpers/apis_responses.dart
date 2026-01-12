import 'package:dio/dio.dart';
import 'package:discord_clon_app/domain/entities/message.dart';
import 'package:discord_clon_app/infrastructure/models/eight_ball_model.dart';
import 'package:discord_clon_app/infrastructure/models/nekos_model.dart';

class APIsResponses {
  final Dio _dio = Dio();

  Future<Message> getResponse() async {
    try {
      final Response responseEightBall = await _dio.get(
        "https://www.eightballapi.com/api?locale=es",
      );
      final Response responseNekos = await _dio.get(
        "https://nekos.best/api/v2/happy",
      );
      final EightBallModel eightBallModel = EightBallModel.fromJson(
        responseEightBall.data,
      );
      final NekosModel nekosModel = NekosModel.fromJson(responseNekos.data);

      return Message(
        text: eightBallModel.reading,
        fromWho: FromWho.fromHer,
        imgUrl: nekosModel.results[0].url,
      );
    } catch (e) {
      return Message(
        text: "Quizá te quedaste sin internet.",
        fromWho: FromWho.fromHer,
      );
    }
  }
}
