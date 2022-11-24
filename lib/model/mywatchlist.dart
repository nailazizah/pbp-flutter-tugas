import 'dart:convert';


List<MyWatchList> myWatchListFromJson(String str) => List<MyWatchList>.from(json.decode(str).map((x) => MyWatchList.fromJson(x)));
String myWatchListToJson(List<MyWatchList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchList {
  MyWatchList({
    required this.model,
    required this.pk,
    required this.fields,
  });

  Model? model;
  int pk;
  Fields fields;

  factory MyWatchList.fromJson(Map<String, dynamic> json) => MyWatchList(
    model: modelValues.map[json["model"]],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": modelValues.reverse![model],
    "pk": pk,
    "fields": fields.toJson(),
  };
}


class Fields {
  Fields({
    required this.title,
    required this.watched,
    required this.rating,
    required this.releaseDate,
    required this.review,
  });

  String title;
  Watched? watched;
  int rating;
  String releaseDate;
  String review;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    title: json["title"],
    watched: watchedStatus.map[json["watched"]],
    rating: json["rating"],
    releaseDate: json["release_date"],
    review: json["review"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "watched": watchedStatus.reverse![watched],
    "rating": rating,
    "release_date": releaseDate,
    "review": review,
  };
}

enum Watched { WATCHED, NOT_WATCHED }

final watchedStatus = EnumValues({
  "Watched": Watched.WATCHED,
  "Not Yet Watched": Watched.NOT_WATCHED,
});

enum Model { MYWATCHLIST_MYWATCHLISTDETAIL }

final modelValues = EnumValues({
  "mywatchlist.mywatchlistdetail": Model.MYWATCHLIST_MYWATCHLISTDETAIL
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => new MapEntry(v, k));
    return reverseMap;
  }
}