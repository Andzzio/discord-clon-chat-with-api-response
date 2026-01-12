import 'package:dio/dio.dart';
import 'package:discord_clon_app/domain/entities/message.dart';
import 'package:discord_clon_app/infrastructure/models/eight_ball_model.dart';

class EightBallResponse {
  final Dio _dio = Dio();

  Future<Message> getResponse() async {
    final Response response = await _dio.get(
      "https://www.eightballapi.com/api?locale=es",
    );
    final EightBallModel eightBallModel = EightBallModel.fromJson(
      response.data,
    );
    return Message(text: eightBallModel.reading, fromWho: FromWho.fromHer);
  }
}
