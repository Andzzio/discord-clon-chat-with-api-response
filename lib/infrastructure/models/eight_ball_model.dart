class EightBallModel {
  String reading;
  String locale;

  EightBallModel({required this.reading, required this.locale});

  factory EightBallModel.fromJson(Map<String, dynamic> json) =>
      EightBallModel(reading: json["reading"], locale: json["locale"]);

  Map<String, dynamic> toJson() => {"reading": reading, "locale": locale};
}
