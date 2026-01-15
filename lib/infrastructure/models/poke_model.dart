import 'package:pokedex_clean_app/domain/entities/poke.dart';

class PokeModel {
  int count;
  String next;
  String previous;
  List<Result> results;

  PokeModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PokeModel.fromJson(Map<String, dynamic> json) => PokeModel(
    count: json["count"] ?? 0,
    next: json["next"] ?? "",
    previous: json["previous"] ?? "",
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  String name;
  String url;

  Result({required this.name, required this.url});

  factory Result.fromJson(Map<String, dynamic> json) =>
      Result(name: json["name"], url: json["url"]);

  Map<String, dynamic> toJson() => {"name": name, "url": url};

  Poke toPokeEntity() {
    final List<String> parts = url.split("/");
    final String strId = parts[parts.length - 2];
    return Poke(
      name: name,
      id: int.parse(strId),
      icon:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$strId.png",
    );
  }
}
