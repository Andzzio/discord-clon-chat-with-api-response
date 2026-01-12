class NekosModel {
  List<Result> results;

  NekosModel({required this.results});

  factory NekosModel.fromJson(Map<String, dynamic> json) => NekosModel(
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  String animeName;
  String url;

  Result({required this.animeName, required this.url});

  factory Result.fromJson(Map<String, dynamic> json) =>
      Result(animeName: json["anime_name"], url: json["url"]);

  Map<String, dynamic> toJson() => {"anime_name": animeName, "url": url};
}
