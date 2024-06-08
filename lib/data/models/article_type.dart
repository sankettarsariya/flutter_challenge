// To parse this JSON data, do
//
//     final articleType = articleTypeFromJson(jsonString);

import 'dart:convert';

List<ArticleType> articleTypeFromJson(String str) => List<ArticleType>.from(json.decode(str).map((x) => ArticleType.fromJson(x)));

String articleTypeToJson(List<ArticleType> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ArticleType {
  String author;
  String title;
  Elem elem;
  Images images;
  String category;
  Language language;
  Country country;
  Date date;

  ArticleType({
    required this.author,
    required this.title,
    required this.elem,
    required this.images,
    required this.category,
    required this.language,
    required this.country,
    required this.date,
  });

  factory ArticleType.fromJson(Map<String, dynamic> json) => ArticleType(
    author: json["author"],
    title: json["title"],
    elem: Elem.fromJson(json["elem"]),
    images: Images.fromJson(json["images"]),
    category: json["category"],
    language: languageValues.map[json["language"]]!,
    country: countryValues.map[json["country"]]!,
    date: Date.fromJson(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "author": author,
    "title": title,
    "elem": elem.toJson(),
    "images": images.toJson(),
    "category": category,
    "language": languageValues.reverse[language],
    "country": countryValues.reverse[country],
    "date": date.toJson(),
  };
}

enum Country {
  US
}

final countryValues = EnumValues({
  "us": Country.US
});

class Date {
  DateTime publishedAt;

  Date({
    required this.publishedAt,
  });

  factory Date.fromJson(Map<String, dynamic> json) => Date(
    publishedAt: DateTime.parse(json["published_at"]),
  );

  Map<String, dynamic> toJson() => {
    "published_at": publishedAt.toIso8601String(),
  };
}

class Elem {
  String description;
  String url;
  String source;

  Elem({
    required this.description,
    required this.url,
    required this.source,
  });

  factory Elem.fromJson(Map<String, dynamic> json) => Elem(
    description: json["description"],
    url: json["url"],
    source: json["source"],
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "url": url,
    "source": source,
  };
}

class Images {
  String image;

  Images({
    required this.image,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
  };
}

enum Language {
  EN
}

final languageValues = EnumValues({
  "en": Language.EN
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
